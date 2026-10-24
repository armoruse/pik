import com.pikminx.helper.RogReportPolicy;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.Instant;
import java.time.ZoneId;
import org.json.JSONArray;
import org.json.JSONObject;

/** Android ART 的跨語言匯入契約檢查；只讀合成資料，不操作 UI 或遊戲。 */
public final class PhoneReportContractAndroid {
    private static void check(boolean value, String message) {
        if (!value) throw new AssertionError(message);
    }
    public static void main(String[] args) throws Exception {
        JSONArray reports = new JSONArray(new String(Files.readAllBytes(Paths.get(args[0])), StandardCharsets.UTF_8));
        check(reports.length() == 2, "需兩筆明確標記的合成測試資料");
        Instant now = Instant.ofEpochMilli(Long.parseLong(args[1]));
        for (int i = 0; i < reports.length(); i++) {
            JSONObject r = reports.getJSONObject(i);
            check(r.getString("observation_id").startsWith("synthetic-"), "不得使用真實帳號資料");
            RogReportPolicy.validateCoordinate(r.getDouble("lat"), r.getDouble("lng"));
            ZoneId.of(r.getString("zone"));
            Instant observed = RogReportPolicy.timestamp(r.getString("observed_at"));
            Instant expiry = RogReportPolicy.timestamp(r.getString("expires_at"));
            check(!r.getString("source").isEmpty(), "需保留來源");
            check(r.getInt("players") >= 0 && r.getInt("players") < 5, "需保留人數");
            check(RogReportPolicy.freshMushroom(r.getString("kind"), observed, expiry, now, 15), "Android 應接受新鮮匯出");
            check(!RogReportPolicy.freshMushroom(r.getString("kind"), observed, expiry, expiry, 15), "到期當下應排除");
            check(RogReportPolicy.mushroomDeadline(observed, expiry, 15).equals(expiry), "匯入不得延長 5 分鐘時效");
        }
        check(reports.getJSONObject(0).getString("kind").equals("LARGE_ELEMENTAL"), "大元素菇代碼");
        check(reports.getJSONObject(1).getString("kind").equals("GIANT_EVENT"), "巨活動菇代碼");
        System.out.println("Android ART：2 筆手機回報契約與到期邊界通過");
    }
}
