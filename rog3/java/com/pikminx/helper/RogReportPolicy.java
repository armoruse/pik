package com.pikminx.helper;

import java.time.Duration;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

/** 回報時效採保守規則；地標或資料庫更新時間不能代替實際觀察時間。 */
public final class RogReportPolicy {
    private RogReportPolicy() {}
    public static void validateCoordinate(double lat, double lng) {
        if (!Double.isFinite(lat) || !Double.isFinite(lng) || Math.abs(lat) > 90 || Math.abs(lng) > 180)
            throw new IllegalArgumentException("緯經度超出範圍");
    }
    public static Instant timestamp(String text) {
        // 要求明確 UTC 或 offset，避免把目的地時刻當成台灣時刻。
        return Instant.parse(text);
    }
    public static boolean canGenerateFruit(Instant bloomAt, Instant reportedAt, Instant expiresAt, Instant now) {
        return bloomAt != null && reportedAt != null && !reportedAt.isAfter(now) && !reportedAt.isBefore(bloomAt)
                && !bloomAt.isAfter(now) && now.isBefore(bloomAt.plus(Duration.ofHours(1)))
                && (expiresAt == null || now.isBefore(expiresAt));
    }
    public static Instant fruitDeadline(Instant bloomAt, Instant explicitExpiry) {
        Instant windowEnd = bloomAt.plus(Duration.ofHours(1));
        return explicitExpiry != null && explicitExpiry.isBefore(windowEnd) ? explicitExpiry : windowEnd;
    }
    public static boolean freshMushroom(String kind, Instant observedAt, Instant expiry, Instant now, int ttlMinutes) {
        return ("LARGE_ELEMENTAL".equals(kind) || "GIANT_EVENT".equals(kind))
                && observedAt != null && !observedAt.isAfter(now)
                && now.isBefore(observedAt.plus(Duration.ofMinutes(ttlMinutes)))
                && (expiry == null || now.isBefore(expiry));
    }
    public static String dualTime(Instant at, String zoneId) {
        ZoneId zone = ZoneId.of(zoneId), taiwan = ZoneId.of("Asia/Taipei");
        DateTimeFormatter f = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm");
        ZonedDateTime local = at.atZone(zone), tw = at.atZone(taiwan);
        int diff = local.getOffset().getTotalSeconds() - tw.getOffset().getTotalSeconds();
        String difference = diff == 0 ? "同時" : (diff > 0 ? "快 " : "慢 ")
                + (Math.abs(diff) / 3600) + " 小時"
                + (Math.abs(diff) % 3600 == 0 ? "" : " " + Math.abs(diff) % 3600 / 60 + " 分");
        return "當地 " + f.format(local) + "\n台灣 " + f.format(tw) + "（" + difference + "）";
    }
    public static Instant nextClaim(Instant claimed, String zoneId, String frequency) {
        ZonedDateTime local = claimed.atZone(ZoneId.of(zoneId));
        if ("DAILY".equals(frequency)) return local.toLocalDate().plusDays(1).atStartOfDay(local.getZone()).toInstant();
        if ("YEARLY".equals(frequency)) return local.toLocalDate().withDayOfYear(1).plusYears(1).atStartOfDay(local.getZone()).toInstant();
        if ("14_DAYS".equals(frequency)) return local.plusDays(14).toInstant();
        if ("30_DAYS".equals(frequency)) return local.plusDays(30).toInstant();
        throw new IllegalArgumentException("未知領取頻率");
    }
}
