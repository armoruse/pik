package com.pikminx.helper;
import java.util.List;
public final class RogPlantingSettingsTest {
    static void check(boolean value) { if (!value) throw new AssertionError(); }
    static void rejected(String raw) {
        try { RogPlantingSettings.parse(raw); throw new AssertionError("accepted invalid input"); }
        catch (IllegalArgumentException expected) {}
    }
    public static void main(String[] args) {
        check(RogPlantingSettings.parse("白色花瓣，黃色花瓣\n白色花瓣").equals(List.of("白色花瓣", "黃色花瓣")));
        rejected("白色精華"); rejected("火星花瓣"); rejected("\n ,");
        SwitchGuard guard = new SwitchGuard();
        check(!guard.shouldSwitch(49, 50, 1000)); check(guard.shouldSwitch(49, 50, 2000));
        guard.markSwitched(2000);
        check(!guard.shouldSwitch(0, 50, 31999));
        check(!guard.shouldSwitch(0, 50, 32000)); check(guard.shouldSwitch(0, 50, 33000));
        check(!SwitchGuard.isBelowThreshold(50, 50));
        check(SwitchGuard.isBelowThreshold(0, 1));
        System.out.println("11 planting-settings and guard checks passed");
    }
}
