import unittest
from finder import select, read_device, save
from unittest.mock import patch
import subprocess
import tempfile
from pathlib import Path

NOW=1_000_000
BASE={'id':'synthetic-observation-a','source':'GEO_INTENT','placeId':'a','name':'大型火蘑菇','size':'LARGE','type':'FIRE',
      'players':4,'lat':25.,'lng':121.,'time':NOW-1000,
      'lastConfirmedAt':NOW-1000,'status':'CONFIRMED'}

class FinderTests(unittest.TestCase):
    def run_rows(self,*rows): return select(list(rows),(25.,121.),NOW)
    def test_zero_to_four(self):
        for n in range(5):
            with self.subTest(n=n): self.assertEqual(len(self.run_rows(dict(BASE,players=n))['matches']),1)
    def test_five_and_unknown(self):
        for n in [5,20,None,-1,True,4.0,'4']:
            with self.subTest(n=n): self.assertEqual(self.run_rows(dict(BASE,players=n))['matches'],[])
    def test_other_types(self):
        for t,s in [('RED','LARGE'),('FIRE','GIANT'),('UNKNOWN','LARGE'),('ICE','LARGE')]:
            self.assertEqual(self.run_rows(dict(BASE,type=t,size=s))['matches'],[])
    def test_event_requires_name_and_size(self):
        r=dict(BASE,name='巨大萬聖節蘑菇',type='UNKNOWN',size='GIANT')
        self.assertEqual(len(self.run_rows(r)['matches']),1)
        for delta in [{'size':'LARGE'},{'name':'巨大未知蘑菇'},{'type':'RED'}]:
            self.assertEqual(self.run_rows(dict(r,**delta))['matches'],[])
    def test_stale_and_future(self):
        for d in [{'time':NOW-300000},{'lastConfirmedAt':NOW-300000},
                  {'time':NOW+1},{'lastConfirmedAt':NOW+1},{'lastConfirmedAt':None}]:
            self.assertEqual(self.run_rows(dict(BASE,**d))['matches'],[])
    def test_new_full_supersedes_old_free_in_either_order(self):
        new=dict(BASE,players=5,time=NOW)
        self.assertEqual(self.run_rows(BASE,new)['matches'],[])
        self.assertEqual(self.run_rows(new,BASE)['matches'],[])
    def test_disappeared_and_unknown_supersede(self):
        for d in [{'status':'DISAPPEARED'},{'status':'UNCONFIRMED'},{'players':None}]:
            self.assertEqual(self.run_rows(BASE,dict(BASE,time=NOW,**d))['matches'],[])
    def test_coordinates_and_range(self):
        for d in [{'lat':None},{'lat':float('nan')},{'lat':91},{'lng':181},{'lat':26}]:
            self.assertEqual(self.run_rows(dict(BASE,**d))['matches'],[])
    def test_escaped_xml(self):
        xml=b'<map><string name="results_v1">[{&quot;players&quot;:4}]</string></map>'
        with patch('finder.subprocess.run',return_value=subprocess.CompletedProcess([],0,xml)) as call:
            self.assertEqual(read_device('/adb','emulator-5582'),[{'players':4}])
            self.assertEqual(call.call_args.args[0][2],'emulator-5582')
    def test_device_failure_messages(self):
        cases=[(subprocess.TimeoutExpired(['adb'],15),'回應逾時'),
               (subprocess.CalledProcessError(1,['adb'],stderr=b'device offline'),'USB'),
               (subprocess.CalledProcessError(1,['adb'],stderr=b'package not debuggable'),'正常匯出'),
               (subprocess.CalledProcessError(1,['adb'],stderr=b'No such file or directory'),'尚無掃描紀錄')]
        for error,message in cases:
            with self.subTest(message=message), patch('finder.subprocess.run',side_effect=error):
                with self.assertRaisesRegex(ValueError,message): read_device('/adb','emulator-5582')
    def test_read_error_clears_previous_results(self):
        with tempfile.TemporaryDirectory() as t:
            p=Path(t); save(self.run_rows(BASE),p)
            save({'matches':[],'excluded':{},'note':'未就緒','error':'no device'},p)
            self.assertNotIn('25.000000', (p/'未滿5人蘑菇.md').read_text())
    def test_invalid_center(self):
        with self.assertRaises(ValueError): select([BASE],(float('nan'),121),NOW)
    def test_no_scan_is_distinct_from_no_matches(self):
        empty=self.run_rows()
        full=self.run_rows(dict(BASE,players=5))
        self.assertEqual(empty['source_record_count'],0)
        self.assertEqual(full['source_record_count'],1)
        self.assertEqual(full['excluded'],{'已滿5人':1})
        with tempfile.TemporaryDirectory() as t:
            p=Path(t)
            save(empty,p)
            self.assertIn('尚無掃描紀錄', (p/'未滿5人蘑菇.md').read_text())
            save(full,p)
            self.assertNotIn('尚無掃描紀錄', (p/'未滿5人蘑菇.md').read_text())

if __name__=='__main__': unittest.main()
