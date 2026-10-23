import json
import unittest
import xml.etree.ElementTree as ET
from progress import parse_progress


def xml(*rows):
    root = ET.Element('map')
    for i, row in enumerate(rows):
        ET.SubElement(root, 'string', name='session_' + str(i)).text = json.dumps(row)
    return ET.tostring(root)


BASE = {'created': 1000, 'rows': 2, 'cols': 4, 'complete': [0, 1, 3],
        'failed': [2, 4], 'status': 'RUNNING'}


class ProgressTests(unittest.TestCase):
    def test_latest_session_and_failed_coverage(self):
        result = parse_progress(xml(dict(BASE, created=999, complete=[]), BASE))
        self.assertEqual(result['completed_cells'], 3)
        self.assertEqual(result['failed_cells'], 2)
        self.assertEqual(result['total_cells'], 8)
        self.assertIn('不保證', result['note'])

    def test_invalid_coverage_cannot_claim_success(self):
        for change in [{'complete': [8]}, {'complete': [True]}, {'rows': -1},
                       {'complete': [2]}, {'failed': 'error'}, {'cols': 10001}]:
            with self.subTest(change=change):
                self.assertFalse(parse_progress(xml(dict(BASE, **change)))['available'])

    def test_empty_and_malformed_sessions(self):
        self.assertFalse(parse_progress(xml())['available'])
        self.assertFalse(parse_progress(xml([], {'rows': 2}))['available'])

    def test_repeated_indices_are_not_extra_coverage(self):
        self.assertEqual(parse_progress(xml(dict(BASE, complete=[0, 0])))['completed_cells'], 1)
