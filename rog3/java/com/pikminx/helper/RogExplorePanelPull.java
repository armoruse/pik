package com.pikminx.helper;

/** Pull from the sheet header above navigation, rather than pressing a tab. */
final class RogExplorePanelPull {
    static ExpeditionScreenAnalyzer.Point start(ExpeditionScreenAnalyzer.Point anchor,
            int width, int height) {
        int y = Math.max(Math.round(height * .08f),
                anchor.y() - Math.round(height * .035f));
        return new ExpeditionScreenAnalyzer.Point(Math.round(width * .5f), y);
    }
}
