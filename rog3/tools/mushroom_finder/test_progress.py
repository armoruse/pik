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
RESUMABLE = dict(BASE, id='synthetic-scan', status='INTERRUPTED', active=5,
                 lat=25., lng=121., radiusKm=.5, width=1080, height=2340,
                 detector=2, calibration=1)


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

    def test_resume_cells_and_retry_include_interrupted_cell(self):
        r = parse_progress(xml(RESUMABLE))
        self.assertEqual(r['remaining_cell_indices'], [2, 4, 5, 6, 7])
        self.assertEqual(r['retry_cell_indices'], [2, 4, 5])
        self.assertTrue(r['resume_available'])
        self.assertEqual(r['saved_center'], [25., 121.])
        self.assertIn('重新校準', r['resume_note'])

    def test_incompatible_or_incomplete_metadata_does_not_offer_resume(self):
        for delta in ({'detector': 3}, {'calibration': True}, {'width': 0},
                      {'lat': 91}, {'lat': 10**1000}, {'lng': float('nan')}, {'radiusKm': None}, {'id': ''}):
            with self.subTest(delta=delta):
                self.assertFalse(parse_progress(xml(dict(RESUMABLE, **delta)))['resume_available'])

    def test_discarded_session_has_no_resume_work(self):
        r = parse_progress(xml(dict(RESUMABLE, status='DISCARDED')))
        self.assertFalse(r['resume_available'])
        self.assertEqual(r['remaining_cell_indices'], [])
        self.assertEqual(r['retry_cell_indices'], [])

    def test_saved_running_status_requires_service_check(self):
        r = parse_progress(xml(dict(RESUMABLE, status='RUNNING')))
        self.assertFalse(r['resume_available'])
        self.assertIn('確認掃描已停止', r['resume_note'])

    def test_invalid_active_cell_is_not_a_resume_target(self):
        for active in (-1, 8, True, '2'):
            self.assertFalse(parse_progress(xml(dict(RESUMABLE, active=active)))['available'])
