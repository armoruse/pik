"""Read only gpsGo scan checkpoints, never infer a live service from saved state."""
import json
import math
import subprocess
import xml.etree.ElementTree as ET


def numeric(value):
    try:
        return type(value) in (int, float) and math.isfinite(value)
    except OverflowError:
        return False


def resume_info(row, completed, failed, total):
    """Saved cell indices are work items, never estimated mushroom coordinates."""
    remaining = sorted(set(range(total)) - completed)
    active = row.get('active')
    retry = sorted((failed | ({active} if active is not None else set())) - completed)
    status = row.get('status')
    if status == 'DISCARDED':
        remaining, retry = [], []
    lat, lng, radius = (row.get(k) for k in ('lat', 'lng', 'radiusKm'))
    valid_center = numeric(lat) and numeric(lng) and abs(lat) <= 90 and abs(lng) <= 180
    valid_radius = numeric(radius) and 0 < radius <= 50
    identity = row.get('id')
    compatible = (type(row.get('detector')) is int and row['detector'] == 2
                  and type(row.get('calibration')) is int and row['calibration'] == 1)
    frame = [row.get('width'), row.get('height')]
    valid_frame = all(type(n) is int and 0 < n <= 16384 for n in frame)
    if status == 'DISCARDED':
        note = '此輪已丟棄，不可續掃。'
    elif not remaining:
        note = '儲存格已全部完成；取得新鮮候選仍需重新掃描。'
    elif status not in ('PAUSED', 'INTERRUPTED'):
        note = '先在 gpsGo 確認掃描已停止；儲存狀態不能證明服務仍在執行。'
    elif not isinstance(identity, str) or not identity.strip():
        note = '缺少掃描識別碼，請在 gpsGo 重新確認或建立新掃描。'
    elif not compatible:
        note = '偵測器／校準版本不相容或缺值，請在 gpsGo 重新校準。'
    elif not valid_center or not valid_radius or not valid_frame:
        note = '缺少有效中心、半徑或畫面尺寸，不能自動接續。'
    else:
        note = '可在 gpsGo「已保存的掃描」續掃；仍需確認服務已停止，恢復原中心、縮放、方向與畫面尺寸，再重新校準。'
    ready = (bool(remaining) and status in ('PAUSED', 'INTERRUPTED')
             and isinstance(identity, str) and bool(identity.strip())
             and compatible and valid_center and valid_radius and valid_frame)
    return {'session_id': identity if isinstance(identity, str) else None,
            'remaining_cell_indices': remaining, 'retry_cell_indices': retry,
            'resume_available': ready, 'resume_note': note,
            'saved_center': [lat, lng] if valid_center else None,
            'saved_radius_km': radius if valid_radius else None,
            'saved_frame': frame if valid_frame else None,
            'calibration_compatible': compatible}


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
            active = row.get('active')
            if active is not None and (type(active) is not int or not 0 <= active < total):
                continue
            sessions.append({'created_at_ms': row['created'], 'total_cells': total,
                             'completed_cells': len(groups[0]), 'failed_cells': len(groups[1]),
                             'saved_status': str(row.get('status', 'UNKNOWN')),
                             **resume_info(row, *groups, total)})
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
