package com.pikminx.helper;
import java.util.ArrayList;
import java.util.List;

/** 種花清單只接受花瓣目錄名稱，拒絕共用精華字串。 */
public final class RogPlantingSettings {
    public static List<String> parse(String raw) {
        List<String> result = new ArrayList<>();
        for (String item : raw.split("[\\n,，]+")) {
            String value = item.trim();
            if (value.isEmpty()) continue;
            if (value.contains("精華")) throw new IllegalArgumentException("種花清單請填花瓣名稱，不要填精華。");
            String canonical = PetalCatalog.canonicalName(value);
            if (canonical == null) throw new IllegalArgumentException("無法辨識花瓣：" + value);
            if (!result.contains(canonical)) result.add(canonical);
        }
        if (result.isEmpty()) throw new IllegalArgumentException("請至少設定一種花瓣。");
        return result;
    }
}
