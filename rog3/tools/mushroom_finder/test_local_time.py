import unittest
from datetime import datetime,timezone
from local_time import clock_info,CoordinateClock
from finder import select
from report import render
from test_finder import BASE,NOW

def ms(iso): return datetime.fromisoformat(iso).timestamp()*1000

class TimeTests(unittest.TestCase):
    def test_international_date_line(self):
        now=ms('2026-10-21T12:30:00+00:00')
        self.assertEqual(clock_info('Pacific/Kiritimati',now)['local_date'],'2026-10-22')
        self.assertEqual(clock_info('Pacific/Pago_Pago',now)['local_date'],'2026-10-21')
    def test_half_and_quarter_hour(self):
        now=ms('2026-10-22T00:00:00+00:00')
        self.assertEqual(clock_info('Asia/Kolkata',now)['utc_offset'],'UTC+05:30')
        self.assertEqual(clock_info('Asia/Kathmandu',now)['utc_offset'],'UTC+05:45')
    def test_dst_fallback(self):
        before=clock_info('America/New_York',ms('2026-11-01T05:59:00+00:00'))
        after=clock_info('America/New_York',ms('2026-11-01T06:01:00+00:00'))
        self.assertEqual(before['utc_offset'],'UTC-04:00')
        self.assertEqual(after['utc_offset'],'UTC-05:00')
        self.assertIn('01:01:00',after['local_now'])
    def test_coordinate_lookup(self):
        c=CoordinateClock()
        for lat,lng,zone in [(25.033,121.5654,'Asia/Taipei'),(35.68,139.76,'Asia/Tokyo'),
                             (40.71,-74.00,'America/New_York'),(-33.87,151.21,'Australia/Sydney')]:
            with self.subTest(zone=zone): self.assertEqual(c.zone_at(lat,lng),zone)
    def test_worldwide(self):
        distant=dict(BASE,lat=40.71,lng=-74)
        self.assertEqual(select([distant],(25,121),NOW)['matches'],[])
        r=select([distant],None,NOW,worldwide=True)
        self.assertEqual(len(r['matches']),1)
        self.assertIsNone(r['matches'][0]['distance_m'])
    def test_conflicting_same_timestamp(self):
        other=dict(BASE,players=5)
        for rows in [[BASE,other],[other,BASE]]:
            self.assertEqual(select(rows,(25,121),NOW)['matches'],[])
    def test_script_injection_is_escaped(self):
        html=render({'matches':[],'error':'</script><script>alert(1)</script>'})
        self.assertNotIn('</script><script>alert',html)
        self.assertIn('\\u003c/script',html)
    def test_date_never_guarantees_free_entry(self):
        for zone in ['Asia/Taipei','Pacific/Kiritimati','America/New_York']:
            self.assertTrue(clock_info(zone,NOW)['ticket_status'].startswith('未確認'))

if __name__=='__main__': unittest.main()
