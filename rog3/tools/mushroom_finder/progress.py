"""Read only gpsGo scan checkpoints, never infer a live service from saved state."""
import json
import subprocess
import xml.etree.ElementTree as ET


def parse_progress(xml):
    sessions = []
    for item in ET.fromstring(xml):
        if item.tag != 'string' or not item.get('name', '').startswith('session_'):
            continue
        try:
            row = json.loads(item.text or '')
            if not isinstance(row, dict):
                continue
            if any(type(row.get(k)) is not int for k in ('created', 'rows', 'cols')):
                continue
            total = row['rows'] * row['cols']
            if row['rows'] <= 0 or row['cols'] <= 0 or total > 10000:
                continue
            groups = []
            for key in ('complete', 'failed'):
                values = row.get(key, [])
                if not isinstance(values, list) or any(type(i) is not int or not 0 <= i < total for i in values):
                    raise ValueError('invalid cell indices')
                groups.append(set(values))
            if groups[0] & groups[1]:
                continue
            sessions.append({'created_at_ms': row['created'], 'total_cells': total,
                             'completed_cells': len(groups[0]), 'failed_cells': len(groups[1]),
                             'saved_status': str(row.get('status', 'UNKNOWN'))})
        except (ValueError, TypeError):
            continue
    if not sessions:
        return {'available': False, 'note': '尚無可讀取的掃描檢查點'}
    latest = max(sessions, key=lambda r: r['created_at_ms'])
    latest.update(available=True, note='已儲存的掃描進度；不保證掃描服務目前仍在執行。失敗區域需重掃。')
    return latest


def read_progress(adb, serial):
    try:
        result = subprocess.run([adb, '-s', serial, 'exec-out', 'run-as', 'com.gpsgo.app.debug',
                                 'cat', 'shared_prefs/scan_checkpoints.xml'],
                                capture_output=True, timeout=15, check=True)
        return parse_progress(result.stdout)
    except (OSError, subprocess.SubprocessError, ET.ParseError):
        return {'available': False, 'note': '掃描進度無法讀取；請在 gpsGo 確認'}
