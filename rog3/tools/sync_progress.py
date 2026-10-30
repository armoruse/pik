#!/usr/bin/env python3
"""Explicit start/finish Git synchronization; never force-push or stage files."""
import argparse
from pathlib import Path
import re
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[2]
BRANCH = 'codex/rog3-handover-20261014'
STATUS = 'rog3/CURRENT_STATUS.md'


def git(*args, capture=False):
    return subprocess.run(['git', *args], cwd=ROOT, check=True, text=True,
                          stdout=subprocess.PIPE if capture else None).stdout


def require(condition, message):
    if not condition:
        raise ValueError(message)


def check_repository():
    require(git('branch', '--show-current', capture=True).strip() == BRANCH,
            '分支不符；請先切到 ' + BRANCH)
    remote = git('remote', 'get-url', 'origin', capture=True).strip().removesuffix('.git')
    require(remote in ('https://github.com/armoruse/pik', 'git@github.com:armoruse/pik'),
            'origin 不符；停止同步以免推錯儲存庫')


def check_staged():
    paths = git('diff', '--cached', '--name-only', '-z', capture=True).split('\0')
    paths = [p for p in paths if p]
    if not paths:
        return False
    require(STATUS in paths, '有新修改時，請先更新並暫存 ' + STATUS)
    require(not git('diff', '--name-only', capture=True).strip(),
            '仍有未暫存修改；請先審查並明確暫存或另外保存')
    for name in paths:
        path = Path(name)
        lower = name.lower()
        require(path.suffix.lower() not in ('.keystore', '.jks', '.p12', '.pfx', '.pem', '.key', '.apk', '.zip'),
                '禁止自動提交私鑰或打包附件：' + name)
        require(not any(part == '.env' or part.startswith('.env.') and part != '.env.example'
                        for part in path.parts), '禁止提交環境密碼：' + name)
        require(not any(marker in lower for marker in ('settings-before-test', 'settings-test.xml', 'private-handover')),
                '禁止提交私人設定或移機包：' + name)
        data = subprocess.run(['git', 'show', ':' + name], cwd=ROOT, capture_output=True, check=False)
        if data.returncode == 0:
            require(len(data.stdout) < 10 * 1024 * 1024, '檔案過大，請另行審查：' + name)
            require(not re.search(rb'(?m)^-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----\r?$', data.stdout),
                    '偵測到私鑰內容：' + name)
    return True


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('action', choices=['start', 'finish'])
    parser.add_argument('--message')
    args = parser.parse_args()
    check_repository()
    if args.action == 'start':
        require(not git('status', '--porcelain', capture=True).strip(),
                '工作區有修改，請先保留並整合，不可直接覆寫')
        git('fetch', 'origin', BRANCH)
        git('merge', '--ff-only', 'origin/' + BRANCH)
        print('已取得遠端最新進度；請閱讀 ' + STATUS)
        return
    if check_staged():
        require(bool(args.message and args.message.strip()), '有新修改時必須提供 --message')
        git('-c', 'core.whitespace=cr-at-eol', 'diff', '--cached', '--check')
        git('commit', '-m', args.message)
    require(not git('status', '--porcelain', capture=True).strip(),
            '工作區仍有未處理檔案；本地提交已保留，請審查後重試')
    git('fetch', 'origin', BRANCH)
    ancestor = subprocess.run(['git', 'merge-base', '--is-ancestor', 'origin/' + BRANCH, 'HEAD'], cwd=ROOT)
    require(ancestor.returncode == 0,
            '遠端有其他裝置的新進度；本地提交已保留，請整合並測試後再同步，禁止強推')
    git('push', 'origin', 'HEAD:refs/heads/' + BRANCH)
    local = git('rev-parse', 'HEAD', capture=True).strip()
    remote = git('ls-remote', 'origin', 'refs/heads/' + BRANCH, capture=True).split()[0]
    require(local == remote, '遠端 SHA 與本地不同，請重新檢查同步狀態')
    print('GitHub 同步已確認：' + local)


if __name__ == '__main__':
    try:
        main()
    except (ValueError, subprocess.CalledProcessError) as error:
        print('未完成同步：' + str(error), file=sys.stderr)
        sys.exit(1)
