package com.pikminx.helper;

public class RogExplorePanelPullTest {
    static void check(boolean value, String why) { if (!value) throw new AssertionError(why); }
    static ExpeditionDispatchSession returned() {
        var s = new ExpeditionDispatchSession(19,0);
        s.advance(ExpeditionDispatchSession.Stage.LIST_SEARCH,ExpeditionDispatchSession.Stage.DETAIL,1);
        s.advance(ExpeditionDispatchSession.Stage.DETAIL,ExpeditionDispatchSession.Stage.SELECTION,2);
        s.advance(ExpeditionDispatchSession.Stage.SELECTION,ExpeditionDispatchSession.Stage.WAIT_RESULT,3);
        s.advance(ExpeditionDispatchSession.Stage.WAIT_RESULT,ExpeditionDispatchSession.Stage.VERIFY_RETURN,4);
        check(s.recordReturnedToList(5),"return must be verified before incrementing");
        return s;
    }
    public static void main(String[] args) {
        var p = RogExplorePanelPull.start(new ExpeditionScreenAnalyzer.Point(700,1000),1080,2340);
        check(p.x()==540 && p.y()==918,"ROG3 partial sheet must pull above tabs");
        var merged = RogExplorePanelPull.start(new ExpeditionScreenAnalyzer.Point(460,1000),1080,2340);
        check(merged.equals(p),"merged navigation OCR must not change horizontal start");
        var top=RogExplorePanelPull.start(new ExpeditionScreenAnalyzer.Point(700,200),1080,2340);
        check(top.y()>=187,"pull must not enter system status bar");
        var expanded=returned();
        check(expanded.observeListForBottom(true,6)==ExpeditionDispatchSession.BottomSettleDecision.READY,
                "already expanded return must not swipe again");
        check(expanded.completedCount()==1 && !expanded.complete(),"do not mark all 19 complete");
        var partial=returned();
        check(partial.observeListForBottom(false,6)==ExpeditionDispatchSession.BottomSettleDecision.SWIPE_UP,
                "partial sheet still needs reveal");
        check(partial.confirm("",30000)==ExpeditionDispatchSession.Confirmation.STAGE_TIMEOUT,
                "keep bounded timeout when no next item is verified");
        var recovery = returned();
        check(recovery.confirm("NAV_TAB:EXPLORE", 100) == ExpeditionDispatchSession.Confirmation.WAIT,
                "recovery tab requires two matching frames");
        check(recovery.confirm("NAV_TAB:EXPLORE", 120) == ExpeditionDispatchSession.Confirmation.READY,
                "recovery tab ready on second frame");
        recovery.recordProgress(150);
        check(recovery.confirm("", 24000) != ExpeditionDispatchSession.Confirmation.STAGE_TIMEOUT,
                "recordProgress resets stage timeout so recovery does not abort");
        System.out.println("Explore panel: 12 checks passed");
    }
}
