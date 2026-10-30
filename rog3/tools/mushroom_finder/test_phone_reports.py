import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

from finder import select, save
from phone_reports import build_reports
from test_finder import BASE, NOW


def candidate(**changes):
    row = select([dict(BASE, **changes)], None, NOW, worldwide=True)
    for match in row['matches']:
        match['timezone'] = 'Asia/Taipei'
    return row


class PhoneReportTests(unittest.TestCase):
    def test_existing_android_import_contract_preserves_expiry_and_source(self):
        r = build_reports(candidate(sessionId='synthetic-session'), NOW)[0]
        self.assertEqual(r['kind'], 'LARGE_ELEMENTAL')
        self.assertEqual(r['zone'], 'Asia/Taipei')
        self.assertEqual(r['observed_at'], '1970-01-01T00:16:39.000Z')
        self.assertEqual(r['expires_at'], '1970-01-01T00:21:39.000Z')
        self.assertIn(BASE['id'], r['source'])
        self.assertEqual(r['session_id'], 'synthetic-session')
        self.assertEqual(json.loads(json.dumps([r]))[0], r)

    def test_event_kind_maps_to_android_enum(self):
        result = candidate(name='巨大萬聖節蘑菇', type='UNKNOWN', size='GIANT')
        self.assertEqual(build_reports(result, NOW)[0]['kind'], 'GIANT_EVENT')

    def test_export_refuses_unknown_or_invalid_evidence(self):
        result = candidate()
        for delta in ({'timezone': None}, {'timezone': 'Invalid/Zone'},
                      {'capture_source': 'ESTIMATED'}, {'observation_id': ''},
                      {'players': 5}, {'players': True}, {'lat': float('nan')},
                      {'lng': 181}, {'lat': 10**1000}, {'observed_at_ms': 10**1000},
                      {'observed_at_ms': NOW + 1},
                      {'valid_until_ms': NOW}, {'valid_until_ms': NOW + 300001}):
            with self.subTest(delta=delta):
                self.assertEqual(build_reports({'matches': [dict(result['matches'][0], **delta)]}, NOW), [])
        self.assertEqual(build_reports(dict(result, error='disconnected'), NOW), [])

    def test_latest_unknown_source_or_identity_suppresses_old_coordinates(self):
        for delta in ({'source': None}, {'source': 'ESTIMATED'}, {'id': None}):
            newer = dict(BASE, time=NOW, **delta)
            for rows in ([BASE, newer], [newer, BASE]):
                self.assertEqual(select(rows, None, NOW, worldwide=True)['matches'], [])

    def test_export_respects_phone_200_report_limit(self):
        result = candidate()
        result['matches'] *= 201
        self.assertEqual(len(build_reports(result, NOW)), 200)

    def test_saved_phone_reports_are_cleared_at_expiry_and_on_read_error(self):
        with tempfile.TemporaryDirectory() as tmp:
            out = Path(tmp)
            with patch('finder.time.time', return_value=NOW / 1000):
                save(candidate(), out)
            self.assertEqual(len(json.loads((out / '手機座標回報.json').read_text())), 1)
            with patch('finder.time.time', return_value=(NOW + 300000) / 1000):
                save(candidate(), out)
            self.assertEqual(json.loads((out / '手機座標回報.json').read_text()), [])
            with patch('finder.time.time', return_value=NOW / 1000):
                save(candidate(), out)
                save({'matches': [], 'excluded': {}, 'note': '未就緒', 'error': 'no device'}, out)
            self.assertEqual(json.loads((out / '手機座標回報.json').read_text()), [])
            self.assertNotIn(BASE['id'], (out / '尋菇候選與當地時間.html').read_text())

    def test_candidate_without_timezone_is_not_a_phone_report(self):
        result = select([BASE], None, NOW, worldwide=True)
        self.assertEqual(len(result['matches']), 1)
        self.assertEqual(build_reports(result, NOW), [])
