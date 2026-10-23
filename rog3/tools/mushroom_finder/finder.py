"""Read gpsGo scan observations; never move, join battles, or infer unknown counts."""
import argparse
from collections import Counter
from datetime import datetime, timezone
import json
import math
from local_time import CoordinateClock
from report import render
from progress import read_progress
from pathlib import Path
import subprocess
import time
import unicodedata
import xml.etree.ElementTree as ET

ELEMENTS = {'FIRE', 'WATER', 'CRYSTAL', 'ELECTRIC', 'POISON'}
# Names verified against official October 2026 announcement. Unknown events are excluded.
EVENT_NAMES = {'巨大萬聖節蘑菇', 'giant halloween mushroom', 'giant halloween mushrooms'}


def normal(text):
    return ' '.join(unicodedata.normalize('NFKC', str(text)).lower().split())


def number(value):
    return type(value) in (int, float) and math.isfinite(value)


def coordinate(lat, lng):
    return number(lat) and number(lng) and -90 <= lat <= 90 and -180 <= lng <= 180


def distance(a, b):
    la, lb = math.radians(a[0]), math.radians(b[0])
    x = math.sin((lb-la)/2)**2 + math.cos(la)*math.cos(lb)*math.sin(math.radians(b[1]-a[1])/2)**2
    return 6371000 * 2 * math.asin(math.sqrt(min(1, max(0, x))))


def select(records, center, now_ms, radius_m=1000, max_age_ms=300000, worldwide=False):
    if (center is not None and (len(center) != 2 or not coordinate(*center))) or (not worldwide and center is None) or not number(radius_m) or not 0 < radius_m <= 50000:
        raise ValueError('請提供有效的遊戲位置與 0～50 公里範圍')
    if not isinstance(records, list) or len(records) > 50000:
        raise ValueError('掃描資料必須是陣列且不超過 50000 筆')
    excluded = Counter()
    latest = {}
    for row in records:
        if not isinstance(row, dict) or not number(row.get('time')):
            excluded['資料格式錯誤'] += 1
            continue
        # New full/unknown/disappeared observations must supersede old eligible ones.
        place = row.get('placeId')
        if isinstance(place, str) and place.strip():
            key = ('place', place)
        elif coordinate(row.get('lat'), row.get('lng')):
            key = ('coordinate', round(row['lat'], 5), round(row['lng'], 5))
        else:
            excluded['缺少座標'] += 1
            continue
        old = latest.get(key)
        if old is None or row['time'] > old['time']:
            latest[key] = row
        elif row['time'] == old['time'] and row != old:
            latest[key] = dict(row, status='UNCONFIRMED')
    accepted = []
    events = {normal(x) for x in EVENT_NAMES}
    for r in latest.values():
        reason = None
        lat, lng = r.get('lat'), r.get('lng')
        players = r.get('players')
        observed = r['time']
        confirmed = r.get('lastConfirmedAt')
        kind = None
        if r.get('size') == 'LARGE' and isinstance(r.get('type'), str) and r['type'] in ELEMENTS:
            kind = '大型元素菇'
        elif r.get('size') == 'GIANT' and normal(r.get('name', '')) in events and r.get('type') == 'UNKNOWN':
            kind = '巨大活動菇'
        if not coordinate(lat, lng):
            reason = '缺少座標'
        elif r.get('status') != 'CONFIRMED':
            reason = '尚未確認或已消失'
        elif not number(confirmed) or confirmed > now_ms or observed > now_ms:
            reason = '確認時間不明或在未來'
        elif now_ms - min(confirmed, observed) >= max_age_ms:
            reason = '超過5分鐘，需重查'
        elif type(players) is not int or players < 0:
            reason = '人數不明'
        elif players >= 5:
            reason = '已滿5人'
        elif kind is None:
            reason = '非目標菇種或活動名稱未確認'
        elif not worldwide and distance(center, (lat, lng)) > radius_m:
            reason = '不在附近範圍'
        if reason:
            excluded[reason] += 1
            continue
        accepted.append({'name': str(r.get('name', '')), 'kind': kind, 'players': players,
                         'lat': lat, 'lng': lng, 'distance_m': round(distance(center, (lat, lng))) if center is not None else None,
                         'observed_at_ms': min(confirmed, observed),
                         'valid_until_ms': min(confirmed, observed) + max_age_ms})
    accepted.sort(key=lambda r: (-r['observed_at_ms'], r['players']) if worldwide else (r['distance_m'], -r['observed_at_ms']))
    return {'generated_at_ms': now_ms, 'center': list(center) if center is not None else None, 'radius_m': None if worldwide else radius_m,
            'source_record_count': len(records), 'unique_location_count': len(latest),
            'scope': '全球已有掃描紀錄' if worldwide else '附近',
            'source': 'gpsGo 本機掃描紀錄', 'matches': accepted, 'excluded': dict(excluded),
            'note': '人數是觀察當時數值，非即時保證；前往前請重新確認。'}


def read_device(adb, serial):
    try:
        result = subprocess.run([adb, '-s', serial, 'exec-out', 'run-as', 'com.gpsgo.app.debug',
                             'cat', 'shared_prefs/gpsgo_scan_results.xml'],
                            capture_output=True, timeout=15, check=True)
    except subprocess.TimeoutExpired as e:
        raise ValueError('裝置回應逾時，請確認模擬器仍正常運作；候選已清除') from e
    except subprocess.CalledProcessError as e:
        detail = (e.stderr or b'').decode('utf-8', errors='replace')
        if 'not debuggable' in detail:
            message = '此版本 gpsGo 不允許直接讀取，請使用正常匯出的掃描檔'
        elif 'No such file' in detail:
            message = '尚無掃描紀錄，請先在 gpsGo 完成區域掃描'
        else:
            message = '無法讀取裝置，請確認模擬器或 USB 偵錯連線；候選已清除'
        raise ValueError(message) from e
    root = ET.fromstring(result.stdout)
    item = root.find("string[@name='results_v1']")
    if item is None:
        raise ValueError('尚無掃描結果；需先完成 gpsGo 區域掃描')
    return json.loads(item.text or '[]')


def save(result, out):
    out.mkdir(parents=True, exist_ok=True)
    html_path = out / '尋菇候選與當地時間.html'
    html_tmp = html_path.with_suffix('.tmp')
    html_tmp.write_text(render(result), encoding='utf-8')
    html_tmp.replace(html_path)
    target = out / '未滿5人蘑菇.json'
    tmp = target.with_suffix('.tmp')
    tmp.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    tmp.replace(target)
    lines = ['# 未滿 5 人的目標蘑菇', '', result['note'], '',
             '這是掃描紀錄篩選結果；本工具不會自行移動或派出隊伍。', '']
    if result.get('error'):
        lines += ['讀取失敗：' + result['error'], '舊結果已清除，不能當成仍有空位。']
    elif result.get('source_record_count') == 0:
        lines += ['尚無掃描紀錄，請先在 gpsGo 完成區域掃描。']
    elif not result['matches']:
        lines += ['目前沒有符合條件的近期紀錄，不能據此斷定附近沒有蘑菇。']
    for r in result['matches']:
        observed = datetime.fromtimestamp(r['observed_at_ms']/1000, timezone.utc).isoformat()
        name = r['name'].replace('\n',' ').replace('\r',' ').replace('`','')
        location = f"距離 {r['distance_m']} 公尺" if r['distance_m'] is not None else '全球範圍'
        lines += [f"- {name}｜{r['kind']}｜{r['players']} 人｜{location}",
                  f"  座標：`{r['lat']:.6f},{r['lng']:.6f}`；觀察時間：{observed}",
                  f"  當地：{r.get('local_now', '尚未確認')}（{r.get('timezone', '未知')}）",
                  f"  台灣：{r.get('taiwan_now', '尚未確認')}；{r.get('date_label', '')}",
                  '  用券狀態：未確認，請看遊戲參戰畫面。']
    lines += ['', '排除原因：' + json.dumps(result['excluded'], ensure_ascii=False)]
    (out / '未滿5人蘑菇.md').write_text('\n'.join(lines)+'\n', encoding='utf-8')


def main():
    p = argparse.ArgumentParser(description=__doc__)
    source = p.add_mutually_exclusive_group(required=True)
    source.add_argument('--input', type=Path)
    source.add_argument('--serial')
    p.add_argument('--adb', default='adb')
    p.add_argument('--worldwide', action='store_true', help='篩選所有已取得的掃描紀錄，不會自行全球移動')
    p.add_argument('--center', nargs=2, type=float, metavar=('LAT','LNG'))
    p.add_argument('--radius', type=float, default=1000)
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--watch', action='store_true', help='每10秒重新讀取既有掃描；Ctrl+C停止')
    args = p.parse_args()
    if not args.worldwide and args.center is None:
        p.error('附近模式需要 --center；全球模式使用 --worldwide')
    clock = CoordinateClock()
    while True:
        try:
            records = json.loads(args.input.read_text()) if args.input else read_device(args.adb, args.serial)
            result = select(records, args.center, int(time.time()*1000), args.radius, worldwide=args.worldwide)
            clock.annotate(result)
            if args.serial:
                result['scan_progress'] = read_progress(args.adb, args.serial)
        except (ValueError, OSError, ET.ParseError, subprocess.SubprocessError) as e:
            result = {'generated_at_ms':int(time.time()*1000), 'matches':[], 'excluded':{},
                      'note':'資料尚未就緒', 'error':str(e)}
        save(result, args.output)
        print('符合', len(result['matches']), '筆', result.get('error',''), flush=True)
        if not args.watch:
            break
        time.sleep(10)

if __name__ == '__main__':
    main()
