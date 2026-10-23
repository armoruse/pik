#!/usr/bin/env python3
"""Portable local regression checks; Android UI and phone results are separate."""
import argparse
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[2]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--java-home', type=Path)
    args = parser.parse_args()
    home = args.java_home or (Path(os.environ['JAVA_HOME']) if os.environ.get('JAVA_HOME') else None)
    suffix = '.exe' if os.name == 'nt' else ''
    java = str(home / 'bin' / ('java' + suffix)) if home else shutil.which('java')
    javac = str(home / 'bin' / ('javac' + suffix)) if home else shutil.which('javac')
    if not java or not javac:
        parser.error('需要 Java 17 JDK；請設定 JAVA_HOME 或 --java-home')
    subprocess.run([sys.executable, '-m', 'unittest', 'discover', '-s',
                    str(ROOT / 'rog3/tools/mushroom_finder'), '-p', 'test_*.py'], check=True, cwd=ROOT)
    with tempfile.TemporaryDirectory(prefix='pikminx-checks-') as scratch:
        tmp = Path(scratch)
        stubs = tmp / 'stubs/com/pikminx/helper'
        stubs.mkdir(parents=True)
        (stubs / 'PetalMatcher.java').write_text(
            'package com.pikminx.helper; class PetalMatcher {record Token(String text,int left,int top,int right,int bottom){int centerX(){return (left+right)/2;}}}')
        (stubs / 'FeedScreenAnalyzer.java').write_text(
            'package com.pikminx.helper; class FeedScreenAnalyzer {static java.util.List<String> allRecognizedFlowers(){return java.util.List.of();}}')
        (stubs / 'ExpeditionScreenAnalyzer.java').write_text(
            'package com.pikminx.helper; class ExpeditionScreenAnalyzer {record Point(int x,int y){} enum Screen {UNKNOWN,EXPLORE_LIST,DETAIL,PIKMIN_SELECTION,RESULT}}')
        source = ROOT / 'java/com/pikminx/helper'
        additions = ROOT / 'rog3/java/com/pikminx/helper'
        files = list(stubs.glob('*.java'))
        files += [source / (name + '.java') for name in
                  ('PetalCatalog', 'PostcardPotCatalog', 'SwitchGuard', 'ExpeditionDispatchSession')]
        files += [additions / (name + '.java') for name in
                  ('RogNectarText', 'RogExplorePanelPull', 'RogReportPolicy', 'RogPlantingSettings')]
        files += list((ROOT / 'rog3/tests').glob('*Test.java'))
        classes = tmp / 'classes'
        subprocess.run([javac, '-encoding', 'UTF-8', '-d', str(classes), *map(str, files)], check=True)
        for name in ('RogReportPolicyTest', 'com.pikminx.helper.RogPlantingSettingsTest',
                     'com.pikminx.helper.RogNectarTextTest', 'com.pikminx.helper.RogExplorePanelPullTest'):
            subprocess.run([java, '-cp', str(classes), name], check=True)
    subprocess.run(['git', '-c', 'core.whitespace=cr-at-eol', 'diff', '--check'], cwd=ROOT, check=True)
    print('程式回歸檢查通過；不代表已部署或手機全流程驗證成功')


if __name__ == '__main__':
    main()
