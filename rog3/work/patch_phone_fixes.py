#!/usr/bin/env python3
"""Apply wrapped-label, sheet-reveal and bounded dispatch recovery fixes to a decoded APK."""
import argparse
from pathlib import Path
import shutil
from explore_recovery_patch import patch_service, patch_session


def replace_once(text, old, new):
    if text.count(old) != 1:
        raise ValueError('輸入版本不符或已修改，停止以免套錯修正')
    return text.replace(old, new, 1)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('source', type=Path)
    parser.add_argument('helpers', type=Path)
    args = parser.parse_args()
    base = args.source / 'smali_classes3/com/pikminx/helper'
    files = {}
    path = base / 'FeedScreenAnalyzer.smali'
    text = path.read_text()
    for name, call in [('findNectar', 'joinForTarget(Ljava/util/List;Ljava/lang/String;II)'),
                       ('findSearchedNectar', 'joinForTarget(Ljava/util/List;Ljava/lang/String;II)'),
                       ('scanAvailableNectars', 'join(Ljava/util/List;II)')]:
        start = text.index('.method static ' + name + '(')
        at = text.index('    .line ', start)
        last = 'p2' if name == 'scanAvailableNectars' else 'p3'
        text = text[:at] + ('    invoke-static/range {p0 .. ' + last +
                '}, Lcom/pikminx/helper/RogNectarText;->' + call +
                'Ljava/util/List;\n\n    move-result-object p0\n\n') + text[at:]
    files[path] = text
    path = base / 'ExpeditionDispatchSession.smali'
    text = path.read_text()
    start = text.index('.method observeListForBottom(')
    end = text.index('.end method', start)
    body = replace_once(text[start:end], '    .line 90\n',
                        '    if-nez p1, :cond_0\n\n    .line 90\n')
    files[path] = patch_session(text[:start] + body + text[end:])
    path = base / 'PetalAccessibilityService.smali'
    text = path.read_text()
    start = text.index('.method private revealDispatchExplorePanel(')
    end = text.index('.end method', start)
    body = replace_once(text[start:end], '    move-object v1, p1\n', '''    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v3
    invoke-static {p1, v2, v3}, Lcom/pikminx/helper/RogExplorePanelPull;->start(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    move-result-object v1
''')
    files[path] = patch_service(text[:start] + body + text[end:])
    existing = [int(p.name.removeprefix('smali_classes'))
                for p in args.source.glob('smali_classes*') if p.is_dir()]
    target = args.source / ('smali_classes' + str(max(existing) + 1)) / 'com/pikminx/helper'
    helper_files = [args.helpers / (name + '.smali') for name in
                    ('RogNectarText', 'RogExplorePanelPull', 'RogExplorePanelPull$RecoveryTap')]
    if not all(p.is_file() for p in helper_files):
        raise ValueError('請先使用 build_handover.py 編譯修正類別')
    if any(args.source.glob('smali*/com/pikminx/helper/RogNectarText.smali')):
        raise ValueError('已存在相同修正類別，停止')
    yaml = args.source / 'apktool.yml'
    text = yaml.read_text()
    text = replace_once(text, 'versionCode: 310', 'versionCode: 311')
    text = replace_once(text, 'versionName: rog1.0.2', 'versionName: rog1.0.3-test')
    files[yaml] = text
    for path, content in files.items():
        path.write_text(content)
    target.mkdir(parents=True)
    for helper in helper_files:
        shutil.copy2(helper, target / helper.name)
    print('已套用三個既有類別修正及探險回復輔助類別；保留手機 APK 其他功能')


if __name__ == '__main__':
    main()
