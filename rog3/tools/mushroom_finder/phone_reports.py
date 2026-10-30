"""Convert fresh, traceable scan observations to the existing ROG JSON input."""
from datetime import datetime, timezone
import math
from zoneinfo import ZoneInfo, ZoneInfoNotFoundError

KINDS = {'大型元素菇': 'LARGE_ELEMENTAL', '巨大活動菇': 'GIANT_EVENT'}
MAX_REPORTS = 200  # RogResources 的既有匯入上限。


def number(value):
    try:
        return type(value) in (int, float) and math.isfinite(value)
    except OverflowError:
        return False


def timestamp(ms):
    return datetime.fromtimestamp(ms / 1000, timezone.utc).isoformat(timespec='milliseconds').replace('+00:00', 'Z')


def build_reports(result, now_ms):
    if result.get('error'):
        return []
    reports = []
    for row in result.get('matches', []):
        observed, deadline = row.get('observed_at_ms'), row.get('valid_until_ms')
        lat, lng = row.get('lat'), row.get('lng')
        identity = row.get('observation_id')
        zone = row.get('timezone')
        if (row.get('kind') not in KINDS or row.get('capture_source') != 'GEO_INTENT'
                or not isinstance(identity, str) or not identity.strip()
                or type(row.get('players')) is not int or not 0 <= row['players'] < 5
                or not number(lat) or not number(lng) or abs(lat) > 90 or abs(lng) > 180
                or not number(observed) or not number(deadline)
                or not observed <= now_ms < deadline <= observed + 300000
                or not isinstance(zone, str) or not zone):
            continue
        try:
            ZoneInfo(zone)
            observed_at, expires_at = timestamp(observed), timestamp(deadline)
        except (ZoneInfoNotFoundError, ValueError, OverflowError, OSError):
            continue
        reports.append({'kind': KINDS[row['kind']], 'name': row['name'],
                        'lat': lat, 'lng': lng, 'zone': zone, 'players': row['players'],
                        'observed_at': observed_at, 'expires_at': expires_at,
                        'source': 'gpsGo 本機掃描；座標來源 GEO_INTENT；觀察 ID：' + identity,
                        'observation_id': identity, 'place_id': row.get('place_id'),
                        'session_id': row.get('session_id')})
        if len(reports) == MAX_REPORTS:
            break
    return reports
