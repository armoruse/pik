package com.pikminx.helper;

import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.InputType;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/** 手動回報整合：保留來源、時區與期限；不模擬定位或繞過座標權限。 */
public final class RogResources {
    private static final String EXAMPLE = "[{\"kind\":\"BIG_FLOWER\",\"name\":\"花名\",\"lat\":25.0,\"lng\":121.0,\"zone\":\"Asia/Taipei\",\"bloom_at\":\"2026-10-14T06:00:00Z\",\"observed_at\":\"2026-10-14T06:05:00Z\",\"source\":\"https://example.org/report\"}]";
    private static TextView text(Context c, String s) {
        TextView t = new TextView(c); t.setText(s); t.setTextSize(15); t.setPadding(8, 12, 8, 12);
        t.setTextIsSelectable(true); Linkify.addLinks(t, Linkify.WEB_URLS); t.setMovementMethod(LinkMovementMethod.getInstance()); return t;
    }
    public static void attach(Context c, LinearLayout parent) {
        Button b = new Button(c); b.setText("大花路線・查菇回報・特殊地點"); b.setTextSize(13);
        b.setOnClickListener(v -> show(c)); parent.addView(b);
    }
    private static void show(Context c) {
        LinearLayout body = new LinearLayout(c); body.setOrientation(1); body.setPadding(20, 8, 20, 8);
        body.addView(text(c, "蘑菇座標 API 目前需要網站正常授權；此版接受有權使用的人工 JSON 回報。大花以實際開花時間計算 1 小時取得窗口，果實探險期限另列。查菇回報超過 15 分鐘需重新確認。"));
        body.addView(text(c, "地標與新鮮回報需分開確認：\nhttps://liuxvuse.github.io/pikmin-bloom-map/\nhttps://treelazy.com/pikmushroom\nhttps://mush.odyliao.cc/\n查核 2026/10/14：巨大萬聖節菇下一段為當地 10/17–18，另有 10/24–25、10/28–31；舊回報仍需重查。\nhttps://pikminbloom.com/zh_hant/news/oct26-halloweenevent"));
        EditText input = new EditText(c); input.setMinLines(4);
        input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
        input.setHint(EXAMPLE);
        input.setText(c.getSharedPreferences("pikminx_settings", 0).getString("field_reports", "")); body.addView(input);
        body.addView(text(c, "菇 kind 填 LARGE_ELEMENTAL 或 GIANT_EVENT，並填 observed_at。時間要含 Z 或時區 offset；可選 expires_at。沒有座標或時間的回報不會排入路線。"));
        TextView result = text(c, ""); body.addView(result);
        Button evaluate = new Button(c); evaluate.setText("整理大花路線／篩選大元素菇與巨活動菇"); body.addView(evaluate);
        Button copy = new Button(c); copy.setText("複製有效座標清單"); body.addView(copy);
        final String[] coordinates = {""};
        final long[] validUntil = {0};
        evaluate.setOnClickListener(v -> {
            try {
                String raw = input.getText().toString(); JSONArray array = new JSONArray(raw);
                if (array.length() > 200) throw new IllegalArgumentException("每次最多匯入 200 筆回報");
                Instant now = Instant.now(); List<JSONObject> valid = new ArrayList<>(); int excluded = 0;
                for (int i = 0; i < array.length(); i++) {
                    JSONObject r = array.getJSONObject(i);
                    RogReportPolicy.validateCoordinate(r.getDouble("lat"), r.getDouble("lng"));
                    String zone = r.getString("zone"); RogReportPolicy.dualTime(now, zone);
                    if (r.optString("source").trim().isEmpty()) throw new IllegalArgumentException("每筆回報需保留來源");
                    Instant observed = RogReportPolicy.timestamp(r.getString("observed_at"));
                    Instant expiry = r.has("expires_at") ? RogReportPolicy.timestamp(r.getString("expires_at")) : null;
                    boolean active;
                    if ("BIG_FLOWER".equals(r.getString("kind"))) {
                        Instant bloom = RogReportPolicy.timestamp(r.getString("bloom_at"));
                        active = RogReportPolicy.canGenerateFruit(bloom, observed, expiry, now);
                        r.put("_deadline", RogReportPolicy.fruitDeadline(bloom, expiry).toEpochMilli());
                    } else {
                        active = RogReportPolicy.freshMushroom(r.getString("kind"), observed, expiry, now, 15);
                        r.put("_deadline", observed.plusSeconds(900).toEpochMilli());
                    }
                    if (active) valid.add(r); else excluded++;
                }
                valid.sort(Comparator.comparingLong(r -> r.optLong("_deadline")));
                StringBuilder out = new StringBuilder("有效 " + valid.size() + " 筆；排除過期／未知類型 " + excluded + " 筆。\n路線依剩餘窗口排序，仍需核對遊戲畫面與到達時間。\n");
                StringBuilder coords = new StringBuilder();
                for (JSONObject r : valid) {
                    out.append("\n").append(r.optString("name", r.getString("kind"))).append("\n")
                            .append(r.getDouble("lat")).append(", ").append(r.getDouble("lng")).append("\n")
                            .append(RogReportPolicy.dualTime(now, r.getString("zone"))).append("\n窗口截止：\n")
                            .append(RogReportPolicy.dualTime(Instant.ofEpochMilli(r.getLong("_deadline")), r.getString("zone")))
                            .append("\n來源：").append(r.getString("source")).append("\n");
                    if (r.has("expires_at")) out.append("探險／回報到期：").append(r.getString("expires_at")).append("\n");
                    coords.append(r.getDouble("lat")).append(',').append(r.getDouble("lng")).append('\n');
                }
                coordinates[0] = coords.toString(); validUntil[0] = valid.isEmpty() ? 0 : valid.get(0).getLong("_deadline"); result.setText(out.toString());
                c.getSharedPreferences("pikminx_settings", 0).edit().putString("field_reports", raw).apply();
            } catch (Exception e) { coordinates[0] = ""; result.setText("未匯入：" + e.getMessage()); }
        });
        copy.setOnClickListener(v -> {
            if (coordinates[0].isEmpty() || System.currentTimeMillis() >= validUntil[0]) { result.setText("請先整理有效回報。過期點不可複製成新路線。"); return; }
            ((ClipboardManager)c.getSystemService(Context.CLIPBOARD_SERVICE)).setPrimaryClip(ClipData.newPlainText("PikminX 路線", coordinates[0]));
        });
        Button spots = new Button(c); spots.setText("官方條件與特殊地點清單"); body.addView(spots);
        spots.setOnClickListener(v -> {
            try (InputStream stream = c.getAssets().open("rog3-special-spots.json")) {
                ByteArrayOutputStream buf = new ByteArrayOutputStream(); byte[] bytes = new byte[4096]; int n;
                while ((n = stream.read(bytes)) != -1) buf.write(bytes, 0, n);
                JSONArray items = new JSONArray(buf.toString(StandardCharsets.UTF_8.name()));
                StringBuilder out = new StringBuilder("資料查核 2026/10/14；所有領取點尚未實機驗證。\n");
                Instant now = Instant.now();
                for (int i = 0; i < items.length(); i++) {
                    JSONObject spot = items.getJSONObject(i);
                    if (spot.has("starts_at") && now.isBefore(RogReportPolicy.timestamp(spot.getString("starts_at")))) continue;
                    if (spot.has("ends_at") && !now.isBefore(RogReportPolicy.timestamp(spot.getString("ends_at")))) continue;
                    out.append("\n").append(spot.getString("name")).append("\n")
                            .append(spot.getDouble("lat")).append(", ").append(spot.getDouble("lng")).append("\n")
                            .append(spot.getString("coordinate_source")).append("\n")
                            .append(spot.getString("reward")).append("；").append(spot.getString("conditions")).append("\n")
                            .append(RogReportPolicy.dualTime(now, spot.getString("zone"))).append("\n")
                            .append(spot.getString("official_url")).append("\n");
                    if (spot.has("ends_at")) out.append("活動結束：\n").append(RogReportPolicy.dualTime(RogReportPolicy.timestamp(spot.getString("ends_at")), spot.getString("zone"))).append("\n");
                }
                result.setText(out.toString());
            } catch (Exception e) { result.setText("地點清單無法讀取：" + e.getMessage()); }
        });
        ScrollView scroll = new ScrollView(c); scroll.addView(body);
        AlertDialog d = new AlertDialog.Builder(c).setTitle("路線與雙時區").setView(scroll).setPositiveButton("關閉", null).create();
        d.getWindow().setType(WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY); d.show();
    }
}
