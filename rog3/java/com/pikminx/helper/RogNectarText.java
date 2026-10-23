package com.pikminx.helper;

import java.text.Normalizer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/** Joins wrapped labels only inside one nectar card and only to a known name. */
final class RogNectarText {
    static List<PetalMatcher.Token> joinForTarget(List<PetalMatcher.Token> tokens,
            String ignoredTarget, int width, int height) {
        return join(tokens, width, height);
    }

    static List<PetalMatcher.Token> join(List<PetalMatcher.Token> tokens, int width, int height) {
        return merge(tokens, width, height, FeedScreenAnalyzer.allRecognizedFlowers());
    }

    static String key(String text) {
        return Normalizer.normalize(text == null ? "" : text, Normalizer.Form.NFKC)
                .replaceAll("[\\p{Z}\\s]+", "").replaceFirst("(?:花瓣|精華)$", "");
    }

    static List<PetalMatcher.Token> merge(List<PetalMatcher.Token> tokens,
            int width, int height, List<String> knownNames) {
        if (tokens == null || tokens.isEmpty() || width <= 0 || height <= 0) return tokens;
        Set<String> known = new HashSet<>();
        for (String name : knownNames) known.add(key(name));
        List<PetalMatcher.Token> result = new ArrayList<>(tokens);
        for (PetalMatcher.Token first : tokens) {
            if (first.top() < height * .15 || first.bottom() > height * .95) continue;
            String prefix = key(first.text());
            if (prefix.isEmpty() || known.contains(prefix)) continue;
            PetalMatcher.Token match = null;
            for (PetalMatcher.Token second : tokens) {
                if (second == first || second.top() < first.bottom() - height * .004
                        || second.top() - first.bottom() > height * .02
                        || second.bottom() - first.top() > height * .08
                        || second.bottom() > height * .95
                        || Math.abs(first.centerX() - second.centerX()) > width * .05) continue;
                int overlap = Math.min(first.right(), second.right()) - Math.max(first.left(), second.left());
                int narrow = Math.min(first.right() - first.left(), second.right() - second.left());
                if (narrow <= 0 || overlap < narrow * .5) continue;
                String combined = prefix + key(second.text());
                if (!known.contains(combined)) continue;
                if (match != null) { match = null; break; } // Ambiguous OCR must not select nectar.
                match = new PetalMatcher.Token(combined,
                        Math.min(first.left(), second.left()), first.top(),
                        Math.max(first.right(), second.right()), second.bottom());
            }
            if (match != null) result.add(match);
        }
        return result;
    }
}
