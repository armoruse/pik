package com.pikminx.helper;

import java.util.List;

/** Pull from the sheet header above navigation, rather than pressing a tab. */
final class RogExplorePanelPull {
    /** Require the exact tab plus neighboring tabs; never tap a card title containing 探險. */
    static ExpeditionScreenAnalyzer.Point recoveryTab(List<PetalMatcher.Token> tokens,
            int width, int height) {
        if (width <= 0 || height <= 0 || tokens == null) return null;
        ExpeditionScreenAnalyzer.Point found = null;
        for (PetalMatcher.Token tab : tokens) {
            if (tab == null || tab.text() == null) continue;
            String name = tab.text().replaceAll("\\s+", "");
            int x = tab.centerX(), y = (tab.top() + tab.bottom()) / 2;
            if (!(name.equals("探險") || name.equals("探险"))
                    || x <= width * .4f || x >= width * .82f
                    || y <= height * .08f || y >= height * .9f) continue;
            boolean left = false, right = false;
            for (PetalMatcher.Token neighbor : tokens) {
                if (neighbor == null || neighbor.text() == null) continue;
                int ny = (neighbor.top() + neighbor.bottom()) / 2;
                if (Math.abs(ny - y) > height * .025f) continue;
                String value = neighbor.text().replaceAll("\\s+", "");
                left |= neighbor.centerX() < x && (value.equals("皮克敏") || value.equals("花苗"));
                right |= neighbor.centerX() > x && value.equals("明信片");
            }
            if (left && right) {
                if (found != null) return null;
                found = new ExpeditionScreenAnalyzer.Point(x, y);
            }
        }
        return found;
    }

    static String recoveryKey(ExpeditionScreenAnalyzer.Point tab) {
        return "NAV_TAB:EXPLORE:" + tab.x() / 24 + ":" + tab.y() / 24;
    }

    /** Android accepting a gesture is not evidence that the destination page was reached. */
    static final class RecoveryTap implements Runnable {
        public void run() {}
    }

    static ExpeditionScreenAnalyzer.Point start(ExpeditionScreenAnalyzer.Point anchor,
            int width, int height) {
        int y = Math.max(Math.round(height * .08f),
                anchor.y() - Math.round(height * .035f));
        return new ExpeditionScreenAnalyzer.Point(Math.round(width * .5f), y);
    }
}
