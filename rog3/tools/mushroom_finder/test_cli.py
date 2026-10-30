"""Verify failure handling through the real command entry and saved reports."""
import contextlib
import io
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import Mock, patch

import finder
from test_finder import BASE, NOW


class CommandTests(unittest.TestCase):
    def invoke(self, source, output, *extra):
        argv = ['finder.py', '--input', str(source), '--worldwide', '--output', str(output), *extra]
        with patch('sys.argv', argv), patch('finder.time.time', return_value=NOW / 1000), contextlib.redirect_stdout(io.StringIO()):
            return finder.main()

    def test_missing_timezone_dependency_clears_all_old_outputs(self):
        with tempfile.TemporaryDirectory() as tmp:
            out = Path(tmp) / 'report'
            source = Path(tmp) / 'scan.json'
            source.write_text(json.dumps([BASE]))
            finder.save(finder.select([BASE], None, NOW, worldwide=True), out)
            with patch('finder.CoordinateClock', side_effect=ImportError('缺少時區套件')):
                self.assertEqual(self.invoke(source, out), 1)
            result = json.loads((out / '未滿5人蘑菇.json').read_text())
            self.assertEqual(result['matches'], [])
            self.assertEqual(result['error'], '缺少時區套件')
            for name in ('未滿5人蘑菇.md', '尋菇候選與當地時間.html'):
                text = (out / name).read_text()
                self.assertIn('缺少時區套件', text)
                self.assertNotIn('大型火蘑菇', text)

    def test_malformed_input_is_a_failed_run(self):
        with tempfile.TemporaryDirectory() as tmp:
            source = Path(tmp) / 'scan.json'
            source.write_text('{broken')
            self.assertEqual(self.invoke(source, Path(tmp) / 'report'), 1)

    def test_valid_run_can_have_no_candidates(self):
        with tempfile.TemporaryDirectory() as tmp:
            source = Path(tmp) / 'scan.json'
            source.write_text('[]')
            with patch('finder.CoordinateClock', return_value=Mock()):
                self.assertEqual(self.invoke(source, Path(tmp) / 'report'), 0)

    def test_watch_recovers_after_dependency_becomes_available(self):
        with tempfile.TemporaryDirectory() as tmp:
            source = Path(tmp) / 'scan.json'
            source.write_text('[]')
            out = Path(tmp) / 'report'
            with patch('finder.CoordinateClock', side_effect=[ImportError('缺少時區套件'), Mock()]) as clock, patch('finder.time.sleep', side_effect=[None, KeyboardInterrupt]):
                with self.assertRaises(KeyboardInterrupt):
                    self.invoke(source, out, '--watch')
                self.assertEqual(clock.call_count, 2)
            result = json.loads((out / '未滿5人蘑菇.json').read_text())
            self.assertNotIn('error', result)
            self.assertEqual(result['source_record_count'], 0)

    def test_process_exit_reports_missing_source(self):
        with tempfile.TemporaryDirectory() as tmp:
            result = subprocess.run([sys.executable, str(Path(finder.__file__)),
                                     '--input', str(Path(tmp) / 'missing.json'),
                                     '--worldwide', '--output', str(Path(tmp) / 'report')],
                                    capture_output=True, text=True, timeout=15)
            self.assertEqual(result.returncode, 1, result.stderr)
            self.assertTrue((Path(tmp) / 'report/未滿5人蘑菇.json').is_file())
