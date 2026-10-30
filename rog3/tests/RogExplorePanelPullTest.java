package com.pikminx.helper;

import java.util.List;

public class RogExplorePanelPullTest {
    static int checks;
    static void check(boolean value, String why) { checks++; if (!value) throw new AssertionError(why); }
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
        var wait = ExpeditionDispatchSession.Confirmation.WAIT;
        var ready = ExpeditionDispatchSession.Confirmation.READY;
        var stop = ExpeditionDispatchSession.Confirmation.STAGE_TIMEOUT;
        check(recovery.confirmExploreTab("tab:1",100)==wait,"one frame cannot tap");
        check(recovery.confirmExploreTab("tab:2",120)==wait,"moving anchor resets evidence");
        check(recovery.confirmExploreTab("tab:2",140)==ready,"two stable frames allow first tap");
        check(recovery.confirmExploreTab("tab:2",200)==wait,"wait for destination after input");
        check(recovery.confirmExploreTab("tab:2",3140)==wait,"retry needs fresh evidence");
        check(recovery.confirmExploreTab("tab:2",3160)==ready,"one bounded retry");
        check(recovery.confirmExploreTab("tab:2",3200)==wait,"let second tap settle");
        check(recovery.confirmExploreTab("tab:2",6160)==stop,"failed recovery stops after two taps");
        check(recovery.completedCount()==1,"recovery does not invent a dispatch");
        var deadline=new ExpeditionDispatchSession(19,0);
        deadline.confirmExploreTab("tab",100);
        deadline.confirmExploreTab("tab",120);
        check(deadline.confirmExploreTab("tab",24000)==stop,"gesture never extends stage timeout");
        var pending=new ExpeditionDispatchSession(19,0);
        pending.beginTransition(1);
        check(pending.confirmExploreTab("tab",100)==wait,"do not interfere with pending detail navigation");
        var tabs=List.of(t("皮克敏",220,1000),t("花苗",440,1000),t("探險",700,1000),t("明信片",900,1000));
        var anchor=RogExplorePanelPull.recoveryTab(tabs,1080,2340);
        check(anchor!=null && anchor.x()==700,"recognize exact tab with neighbors");
        check(RogExplorePanelPull.recoveryTab(List.of(t("探險",700,1000)),1080,2340)==null,"reject isolated card label");
        check(RogExplorePanelPull.recoveryTab(List.of(t("皮克敏",220,1000),t("前往探險",700,1000),t("明信片",900,1000)),1080,2340)==null,"reject detail button");
        check(RogExplorePanelPull.recoveryTab(List.of(t("皮克敏",220,1000),t("探險",700,1000),t("明信片",900,1200)),1080,2340)==null,"reject unrelated rows");
        check(RogExplorePanelPull.recoveryTab(List.of(t("皮克敏",220,1000),t("探險",700,1000),t("探險",730,1000),t("明信片",900,1000)),1080,2340)==null,"reject ambiguous anchors");
        var sequence=new ExpeditionDispatchSession(19,0);
        for(int i=0;i<6;i++) {
            long now=1000L*i+1;
            check(sequence.confirmExploreTab("tab",now)==wait,"fresh item needs first frame");
            check(sequence.confirmExploreTab("tab",now+1)==ready,"fresh item recovery budget");
            sequence.advance(ExpeditionDispatchSession.Stage.LIST_SEARCH,ExpeditionDispatchSession.Stage.DETAIL,now+2);
            sequence.advance(ExpeditionDispatchSession.Stage.DETAIL,ExpeditionDispatchSession.Stage.SELECTION,now+3);
            sequence.advance(ExpeditionDispatchSession.Stage.SELECTION,ExpeditionDispatchSession.Stage.WAIT_RESULT,now+4);
            sequence.advance(ExpeditionDispatchSession.Stage.WAIT_RESULT,ExpeditionDispatchSession.Stage.VERIFY_RETURN,now+5);
            check(sequence.recordReturnedToList(now+6),"only verified return counts");
        }
        check(sequence.completedCount()==6 && !sequence.complete(),"six simulated returns do not complete nineteen");
        System.out.println("Explore panel: " + checks + " checks passed (synthetic state transitions, not game UI)");
    }

    static PetalMatcher.Token t(String name,int x,int y) {
        return new PetalMatcher.Token(name,x-30,y-20,x+30,y+20);
    }
}
