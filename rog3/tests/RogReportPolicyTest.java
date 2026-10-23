import com.pikminx.helper.RogReportPolicy;
import java.time.Instant;

public final class RogReportPolicyTest {
    static void check(boolean value, String message) {
        if (!value) throw new AssertionError(message);
    }
    public static void main(String[] args) {
        Instant bloom = Instant.parse("2026-10-14T06:00:00Z");
        check(RogReportPolicy.canGenerateFruit(bloom, bloom, null, bloom.plusSeconds(3599)), "last second still eligible");
        check(!RogReportPolicy.canGenerateFruit(bloom, bloom, null, bloom.plusSeconds(3600)), "one-hour boundary excluded");
        check(!RogReportPolicy.canGenerateFruit(bloom, bloom.minusSeconds(1), null, bloom), "observation cannot predate bloom");
        check(!RogReportPolicy.canGenerateFruit(bloom, bloom.plusSeconds(1), null, bloom), "future report excluded");
        check(!RogReportPolicy.canGenerateFruit(bloom, bloom, bloom.plusSeconds(30), bloom.plusSeconds(30)), "event-specific early expiry");
        check(RogReportPolicy.fruitDeadline(bloom, bloom.plusSeconds(23*3600)).equals(bloom.plusSeconds(3600)), "23-hour expedition deadline is separate");
        check(RogReportPolicy.freshMushroom("LARGE_ELEMENTAL", bloom, null, bloom.plusSeconds(899), 15), "fresh elemental report");
        check(!RogReportPolicy.freshMushroom("GIANT_EVENT", bloom, null, bloom.plusSeconds(900), 15), "stale report excluded");
        check(!RogReportPolicy.freshMushroom("10", bloom, null, bloom, 15), "unmapped numeric type never guessed");
        check(RogReportPolicy.timestamp("2026-10-14T14:00:00+08:00").equals(bloom), "offset timestamp parsed as instant");
        check(RogReportPolicy.dualTime(Instant.parse("2026-11-02T00:00:00Z"), "America/Chicago").contains("慢 14 小時"), "Nashville end uses standard time");
        check(RogReportPolicy.dualTime(bloom, "America/Chicago").contains("慢 13 小時"), "October uses daylight saving time");
        check(RogReportPolicy.dualTime(bloom, "Asia/Kolkata").contains("慢 2 小時 30 分"), "half-hour offset");
        check(RogReportPolicy.nextClaim(Instant.parse("2026-10-14T15:59:00Z"), "Asia/Hong_Kong", "DAILY").equals(Instant.parse("2026-10-14T16:00:00Z")), "Hong Kong resets at local midnight");
        check(RogReportPolicy.nextClaim(bloom, "Asia/Tokyo", "YEARLY").equals(Instant.parse("2026-12-31T15:00:00Z")), "annual reward resets in local year");
        try { RogReportPolicy.validateCoordinate(Double.NaN, 121); throw new AssertionError("NaN accepted"); } catch (IllegalArgumentException expected) {}
        try { RogReportPolicy.validateCoordinate(25, 181); throw new AssertionError("invalid longitude accepted"); } catch (IllegalArgumentException expected) {}
        System.out.println("17 report-policy checks passed");
    }
}
