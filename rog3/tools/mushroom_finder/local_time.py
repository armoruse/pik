"""Coordinate timezone lookup and date display. Does not infer game quota resets."""
from datetime import datetime, timezone
from zoneinfo import ZoneInfo


def clock_info(zone, now_ms):
    now = datetime.fromtimestamp(now_ms / 1000, timezone.utc)
    local = now.astimezone(ZoneInfo(zone))
    tw = now.astimezone(ZoneInfo('Asia/Taipei'))
    offset = int(local.utcoffset().total_seconds() // 60)
    sign = '+' if offset >= 0 else '-'
    delta = (local.date() - tw.date()).days
    return {'timezone': zone, 'local_now': local.isoformat(timespec='seconds'),
            'local_date': str(local.date()), 'taiwan_now': tw.isoformat(timespec='seconds'),
            'utc_offset': f'UTC{sign}{abs(offset)//60:02d}:{abs(offset)%60:02d}',
            'date_difference_days': delta,
            'date_label': '與台灣同日' if delta == 0 else f'比台灣晚 {delta} 天' if delta > 0 else f'比台灣早 {-delta} 天',
            'ticket_status': '未確認：當地換日不代表此帳號已有免費次數'}


class CoordinateClock:
    def __init__(self):
        from timezonefinder import TimezoneFinder
        self.finder = TimezoneFinder()
        self.cache = {}

    def zone_at(self, lat, lng):
        key = (lat, lng)
        if key not in self.cache:
            self.cache[key] = self.finder.timezone_at(lat=lat, lng=lng)
        return self.cache[key]

    def annotate(self, result):
        for row in result['matches']:
            zone = self.zone_at(row['lat'], row['lng'])
            if not zone:
                row.update({'timezone':None, 'ticket_status':'時區未確認，請先核對'})
                continue
            row.update(clock_info(zone, result['generated_at_ms']))
        return result
