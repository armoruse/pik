import importlib.util
from pathlib import Path
import unittest
from unittest import mock
import contextlib
import io

ROOT = Path(__file__).resolve().parents[2]
spec = importlib.util.spec_from_file_location('explore_patch', ROOT / 'rog3/work/explore_recovery_patch.py')
patch = importlib.util.module_from_spec(spec)
spec.loader.exec_module(patch)


class ExplorePatchTest(unittest.TestCase):
    def test_compiled_service_contains_reachable_hook_before_focused_scan(self):
        source = (ROOT / 'rog3/work/rog_src/smali_classes3/com/pikminx/helper/PetalAccessibilityService.smali').read_text()
        start = source.index('.method private handleDispatchList(')
        end = source.index('.end method', start)
        body = source[start:end]
        self.assertLess(body.index('->tryRecoverDispatchExploreTab('), body.index('->hasExploreNavigationAnchor('))
        self.assertEqual(source.count('.method private tryRecoverDispatchExploreTab('), 1)
        self.assertIn('->screenPointFromBitmap(', source[source.index('.method private tryRecoverDispatchExploreTab('):])

    def test_session_patch_rejects_unknown_and_duplicate_input(self):
        with self.assertRaises(ValueError):
            patch.patch_session('.class public LBad;\n.method x()V\n.end method\n')
        source = (ROOT / 'rog3/work/rog_src/smali_classes3/com/pikminx/helper/ExpeditionDispatchSession.smali').read_text()
        with self.assertRaises(ValueError):
            patch.patch_session(source)

    def test_service_patch_rejects_duplicate_input(self):
        source = (ROOT / 'rog3/work/rog_src/smali_classes3/com/pikminx/helper/PetalAccessibilityService.smali').read_text()
        with self.assertRaises(ValueError):
            patch.patch_service(source)

    def test_gesture_callback_does_not_extend_timeout(self):
        source = (ROOT / 'rog3/work/rog_src/smali_classes3/com/pikminx/helper/PetalAccessibilityService.smali').read_text()
        start = source.index('.method private tryRecoverDispatchExploreTab(')
        end = source.index('.end method', start)
        self.assertNotIn('->recordProgress(', source[start:end])
        self.assertIn('RogExplorePanelPull$RecoveryTap;', source[start:end])


class AndroidGuardTest(unittest.TestCase):
    def setUp(self):
        spec = importlib.util.spec_from_file_location('android_check', ROOT / 'rog3/tools/check_explore_recovery_android.py')
        self.tool = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(self.tool)

    def args(self, serial):
        return ['check', '--java-home', '.', '--android-sdk', '.', '--adb', 'adb',
                '--apk', 'unused.apk', '--serial', serial]

    def test_physical_serial_rejected_before_any_adb_command(self):
        with mock.patch('sys.argv', self.args('physical-test-device')), \
                mock.patch.object(self.tool, 'run') as run, contextlib.redirect_stderr(io.StringIO()):
            with self.assertRaises(SystemExit) as error:
                self.tool.main()
            self.assertEqual(error.exception.code, 2)
            run.assert_not_called()

    def test_emulator_name_without_qemu_rejected_before_push(self):
        with mock.patch('sys.argv', self.args('emulator-5582')), \
                mock.patch.object(self.tool, 'run', return_value='0') as run, \
                contextlib.redirect_stderr(io.StringIO()):
            with self.assertRaises(SystemExit):
                self.tool.main()
            self.assertEqual(run.call_count, 1)
            self.assertEqual(run.call_args.args[0][-2:], ['getprop', 'ro.kernel.qemu'])


if __name__ == '__main__':
    unittest.main()
