package com.pikminx.helper;

import java.util.List;

public class RogNectarTextTest {
    static final List<String> NAMES = List.of("白色大波斯菊", "紅色大波斯菊", "白色鸚鵡鬱金香");
    static PetalMatcher.Token t(String s, int x, int y, int w, int h) {
        return new PetalMatcher.Token(s,x,y,x+w,y+h);
    }
    static void check(boolean value, String why) { if (!value) throw new AssertionError(why); }
    public static void main(String[] args) {
        var first=t("白色大波斯",320,1060,200,45);
        var last=t("菊",395,1120,45,45);
        var input=List.of(first,last,t("315",470,970,60,40));
        var joined=RogNectarText.merge(input,1080,2340,NAMES);
        check(joined.size()==4,"wrapped cosmos must be recognized");
        check(joined.get(3).text().equals("白色大波斯菊"),"keep exact color and species");
        check(input.size()==3,"do not mutate captured OCR tokens");
        check(RogNectarText.merge(List.of(first,t("菊",675,1120,45,45)),1080,2340,NAMES).size()==2,"never join neighboring column");
        check(RogNectarText.merge(List.of(first,t("菊",395,1500,45,45)),1080,2340,NAMES).size()==2,"never join another card row");
        check(RogNectarText.merge(List.of(first,t("花",395,1120,45,45)),1080,2340,NAMES).size()==2,"unknown species is not a match");
        check(RogNectarText.merge(List.of(first,last,last),1080,2340,NAMES).size()==3,"ambiguous continuations must be rejected");
        check(RogNectarText.merge(List.of(t("白色大波斯菊",320,1060,200,45)),1080,2340,NAMES).size()==1,"complete labels remain unchanged");
        check(RogNectarText.merge(List.of(t("白色大波斯",320,2180,200,45),t("菊",395,2250,45,45)),1080,2340,NAMES).size()==2,"do not read obscured bottom labels");
        System.out.println("RogNectarText: 9 checks passed");
    }
}
