"""在已確認的隔離模擬器檢查實際 APK 的探險 Smali；不安裝、不操作遊戲。"""
import argparse
import os
from pathlib import Path
import re
import subprocess
import tempfile
import uuid
import zipfile

ROOT = Path(__file__).resolve().parents[2]


def run(args):
    return subprocess.run(list(map(str, args)), check=True, capture_output=True,
                          text=True, timeout=90).stdout.strip()


def main():
    p = argparse.ArgumentParser(description=__doc__)
    for name in ('java-home', 'android-sdk', 'adb', 'apk'):
        p.add_argument('--' + name, type=Path, required=True)
    p.add_argument('--serial', required=True)
    args = p.parse_args()
    if not re.fullmatch(r'emulator-\d+', args.serial):
        p.error('只允許明確指定隔離模擬器，禁止使用實體手機')
    adb = [args.adb, '-s', args.serial]
    if run([*adb, 'shell', 'getprop', 'ro.kernel.qemu']) != '1':
        p.error('裝置不是已確認的模擬器')
    if not args.apk.is_file():
        p.error('候選 APK 不存在')
    suffix = '.exe' if os.name == 'nt' else ''
    java = args.java_home / 'bin' / ('java' + suffix)
    javac = args.java_home / 'bin' / ('javac' + suffix)
    android = args.android_sdk / 'platforms/android-35/android.jar'
    d8 = args.android_sdk / 'build-tools/35.0.0/lib/d8.jar'
    remote = '/data/local/tmp/pikminx-explore-' + uuid.uuid4().hex
    try:
        with tempfile.TemporaryDirectory(prefix='pikminx-explore-') as scratch:
            tmp = Path(scratch)
            classes, dex = tmp / 'classes', tmp / 'dex'
            classes.mkdir(); dex.mkdir()
            run([javac, '-source', '17', '-target', '17', '-cp', android, '-d', classes,
                 ROOT / 'rog3/tests/ExploreRecoveryContractAndroid.java'])
            run([java, '-cp', d8, 'com.android.tools.r8.D8', '--lib', android,
                 '--min-api', '30', '--output', dex, *classes.rglob('*.class')])
            jar = tmp / 'contract.jar'
            with zipfile.ZipFile(jar, 'w') as archive:
                archive.write(dex / 'classes.dex', 'classes.dex')
            run([*adb, 'push', jar, remote + '.jar'])
            run([*adb, 'push', args.apk.resolve(), remote + '.apk'])
            output = run([*adb, 'shell', 'env', 'CLASSPATH=' + remote + '.jar',
                          'app_process', '/system/bin', 'ExploreRecoveryContractAndroid', remote + '.apk'])
            if 'Android ART explore recovery: 12 checks passed;' not in output:
                raise RuntimeError('模擬器未回傳全部 APK 契約檢查通過證據')
            print(output)
    finally:
        subprocess.run(list(map(str, [*adb, 'shell', 'rm', '-f', remote + '.jar', remote + '.apk'])),
                       capture_output=True, timeout=15, check=False)


if __name__ == '__main__':
    main()
