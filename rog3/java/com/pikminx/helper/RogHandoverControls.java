package com.pikminx.helper;

import android.app.AlertDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.text.InputType;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.time.Instant;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.List;

/** ROG 309 的獨立種花設定與可持久查閱的實測紀錄。 */
public final class RogHandoverControls {
    private static final String DEFAULT_PETALS = "白色花瓣\n黃色花瓣\n紅色花瓣\n藍色花瓣";
    private static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences("pikminx_settings", Context.MODE_PRIVATE);
    }
    public static List<String> plantingFlowers(Context c) {
        String raw = prefs(c).getString("planting_flowers", DEFAULT_PETALS);
        return parsePetals(raw);
    }
    static List<String> parsePetals(String raw) {
        return RogPlantingSettings.parse(raw);
    }
    public static void attach(PetalAccessibilityService service, LinearLayout parent) {
        Button button = new Button(service);
        button.setText("種花・換瓣・測試紀錄");
        button.setTextSize(13);
        button.setTextColor(Color.rgb(25, 83, 56));
        button.setOnClickListener(v -> show(service));
        parent.addView(button, new LinearLayout.LayoutParams(-1, -2));
        RogResources.attach(service, parent);
    }
    public static void recordResult(Context c, String mode, String outcome, String message) {
        String line = mode + " " + outcome + " " + message;
        prefs(c).edit().putString("last_run_mode", mode).putString("last_run_outcome", outcome)
                .putString("last_run_message", message).putLong("last_run_at", System.currentTimeMillis()).apply();
        Log.i("PikminX", "[ROG-RESULT] " + line);
    }
    public static void recordRound(Context c, int before, int after, int petals) {
        prefs(c).edit().putInt("last_feed_before", before).putInt("last_feed_after", after)
                .putInt("last_feed_petals", petals).putLong("last_feed_at", System.currentTimeMillis()).apply();
    }
    public static void begin(Context c, String mode) {
        prefs(c).edit().remove("last_feed_before").remove("last_feed_after").remove("last_feed_petals")
                .putString("last_run_mode", mode).putString("last_run_outcome", "RUNNING")
                .putString("last_run_message", "執行中；尚未完成驗證")
                .putLong("last_run_at", System.currentTimeMillis()).apply();
    }
    private static String summary(Context c) {
        SharedPreferences p = prefs(c);
        long at = p.getLong("last_run_at", 0);
        if (at == 0) return "尚無新版本測試紀錄。";
        String result = p.getString("last_run_outcome", "UNKNOWN");
        int before = p.getInt("last_feed_before", -1), after = p.getInt("last_feed_after", -1);
        int petals = p.getInt("last_feed_petals", -1);
        String text = "台灣 " + DateTimeFormatter.ofPattern("MM/dd HH:mm:ss")
                .withZone(ZoneId.of("Asia/Taipei")).format(Instant.ofEpochMilli(at))
                + "\n" + p.getString("last_run_mode", "") + " " + result
                + "\n" + p.getString("last_run_message", "");
        if ("FEED".equals(p.getString("last_run_mode", ""))) {
            text += "\n精華讀值 " + before + " → " + after + "；收花瓣辨識 " + petals;
            if (before < 0 || after < 0 || before <= after || petals <= 0)
                text += "\n尚缺精華消耗或收花瓣證據，不能宣稱整輪通過。";
        }
        return text;
    }
    private static TextView label(Context c, String s) {
        TextView t = new TextView(c); t.setText(s); t.setTextSize(15);
        t.setTextColor(Color.rgb(24, 64, 43)); t.setPadding(12, 12, 12, 12); return t;
    }
    private static void show(PetalAccessibilityService service) {
        LinearLayout body = new LinearLayout(service); body.setOrientation(1); body.setPadding(24, 8, 24, 8);
        body.addView(label(service, summary(service)));
        body.addView(label(service, "花瓣順序（每行一種，與餵食清單分開儲存）"));
        EditText flowers = new EditText(service); flowers.setMinLines(3);
        flowers.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
        flowers.setText(prefs(service).getString("planting_flowers", DEFAULT_PETALS)); body.addView(flowers);
        body.addView(label(service, "低於門檻時換下一種；最後一種不足時停止。連續確認 2 次，切換冷卻 30 秒。"));
        EditText threshold = new EditText(service); threshold.setInputType(InputType.TYPE_CLASS_NUMBER);
        threshold.setText(String.valueOf(prefs(service).getInt("threshold", 50))); body.addView(threshold);
        TextView error = label(service, ""); body.addView(error);
        ScrollView scroll = new ScrollView(service); scroll.addView(body);
        AlertDialog dialog = new AlertDialog.Builder(service).setTitle("ROG 種花與驗證")
                .setView(scroll).setPositiveButton("儲存並開始種花", null)
                .setNeutralButton("白色精華短測", null).setNegativeButton("關閉", null).create();
        dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY);
        dialog.setOnShowListener(ignored -> {
            dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
                try {
                    List<String> list = parsePetals(flowers.getText().toString());
                    int limit = Integer.parseInt(threshold.getText().toString());
                    if (limit < 1 || limit > 9999) throw new IllegalArgumentException("門檻需介於 1–9999；用完切換請設 1。");
                    prefs(service).edit().putString("planting_flowers", String.join("\n", list))
                            .putInt("threshold", limit).apply();
                    dialog.dismiss(); service.handoverStartPlanting();
                } catch (IllegalArgumentException e) { error.setText(e.getMessage()); }
            });
            dialog.getButton(AlertDialog.BUTTON_NEUTRAL).setOnClickListener(v -> {
                // 明確入口直接鎖定單項白色精華，不經庫存掃描或隱藏編輯器。
                prefs(service).edit().putString("flowers", "白色精華").putInt("feeds_per_squad", 1)
                        .putInt("max_squad_switches", 0).putInt("nectar_minimum_threshold", 1).apply();
                dialog.dismiss(); service.handoverStartShortFeed();
            });
        });
        dialog.show();
    }
}
