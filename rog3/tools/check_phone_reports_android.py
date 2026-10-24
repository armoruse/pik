#!/usr/bin/env python3
"""只在隔離模擬器驗證手機座標 JSON 與實際 Java 政策；不安裝 APK 或操作遊戲。"""
import argparse
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile
import time
import uuid
import zipfile

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'rog3/tools/mushroom_finder'))
from phone_reports import build_reports


def run(args):
    result = subprocess.run(list(map(str, args)), check=True, capture_output=True, text=True, timeout=60)
    return result.stdout.strip()


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--java-home', type=Path, required=True)
    p.add_argument('--android-sdk', type=Path, required=True)
    p.add_argument('--adb', type=Path, required=True)
    p.add_argument('--serial', required=True)
    p.add_argument('--platform', default='android-35')
    p.add_argument('--build-tools', default='35.0.0')
    args = p.parse_args()
    if not re.fullmatch(r'emulator-\d+', args.serial):
        p.error('此檢查僅允許隔離模擬器，不能以實體手機取代')
    adb = [args.adb, '-s', args.serial]
    if run([*adb, 'shell', 'getprop', 'ro.kernel.qemu']) != '1':
        p.error('裝置不是已確認的 Android 模擬器，停止')
    suffix = '.exe' if os.name == 'nt' else ''
    java = args.java_home / 'bin' / ('java' + suffix)
    javac = args.java_home / 'bin' / ('javac' + suffix)
    android = args.android_sdk / 'platforms' / args.platform / 'android.jar'
    d8 = args.android_sdk / 'build-tools' / args.build_tools / 'lib/d8.jar'
    remote = '/data/local/tmp/pikminx-contract-' + uuid.uuid4().hex
    try:
        with tempfile.TemporaryDirectory(prefix='pikminx-contract-') as scratch:
            tmp = Path(scratch)
            classes, dex = tmp / 'classes', tmp / 'dex'
            classes.mkdir(); dex.mkdir()
            run([javac, '-source', '17', '-target', '17', '-cp', android, '-d', classes,
                 ROOT / 'rog3/java/com/pikminx/helper/RogReportPolicy.java',
                 ROOT / 'rog3/tests/PhoneReportContractAndroid.java'])
            run([java, '-cp', d8, 'com.android.tools.r8.D8', '--lib', android,
                 '--min-api', '30', '--output', dex, *classes.rglob('*.class')])
            jar = tmp / 'contract.jar'
            with zipfile.ZipFile(jar, 'w') as archive:
                archive.write(dex / 'classes.dex', 'classes.dex')
            now = int(time.time() * 1000)
            matches = []
            for i, kind in enumerate(('大型元素菇', '巨大活動菇')):
                matches.append({'kind': kind, 'name': '合成契約測試，不是真實候選',
                                'lat': 25., 'lng': 121., 'timezone': 'Asia/Taipei',
                                'players': i, 'capture_source': 'GEO_INTENT',
                                'observation_id': 'synthetic-' + str(i),
                                'observed_at_ms': now - 1000, 'valid_until_ms': now + 299000})
            fixture = tmp / 'synthetic.json'
            fixture.write_text(json.dumps(build_reports({'matches': matches}, now), ensure_ascii=False), encoding='utf-8')
            run([*adb, 'push', jar, remote + '.jar'])
            run([*adb, 'push', fixture, remote + '.json'])
            output = run([*adb, 'shell', 'env', 'CLASSPATH=' + remote + '.jar',
                          'app_process', '/system/bin', 'PhoneReportContractAndroid', remote + '.json', now])
            if 'Android ART：2 筆手機回報契約與到期邊界通過' not in output:
                raise RuntimeError('Android 未回傳契約檢查成功證據')
            print(output)
            print('僅驗證 JSON 與時間規則；不代表 UI 匯入、巡掃或實體手機流程通過')
    finally:
        subprocess.run([str(x) for x in [*adb, 'shell', 'rm', '-f', remote + '.jar', remote + '.json']],
                       check=False, capture_output=True, timeout=15)


if __name__ == '__main__':
    main()
