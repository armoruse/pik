from pathlib import Path
import re

root = Path('work/rog_src/smali_classes3/com/pikminx/helper')
card = root / 'CardHighlight.smali'
service = root / 'PetalAccessibilityService.smali'


def method(text, signature):
    start = text.index('.method ' + signature)
    end = text.index('.end method', start) + len('.end method')
    return start, end, text[start:end]


s = card.read_text(encoding='utf-8')
start, end, detector = method(s, 'private static findNeutralDarkControl(IIFLjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;')
detector = detector.replace('findNeutralDarkControl(IIFLjava/util/function/IntBinaryOperator;)', 'findNeutralDarkControl(IIFIILjava/util/function/IntBinaryOperator;)')
detector = detector.replace('.param p3, "pixelAt"', '.param p3, "requestedStartY"    # I\n    .param p4, "requestedEndY"    # I\n    .param p5, "pixelAt"')
detector = detector.replace('move-object/from16 v2, p3', 'move-object/from16 v2, p5')
a = detector.index('    int-to-float v4, v1')
b = detector.index('    .line 634', a)
detector = detector[:a] + '''    move/from16 v4, p3
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
    move-result v4
    move/from16 v5, p4
    sub-int v6, v1, v3
    add-int/lit8 v6, v6, -0x1
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I
    move-result v5
    if-gt v4, v5, :anchor_empty

''' + detector[b:]
detector = detector.replace('.end method', '''    :anchor_empty
    const/4 v0, 0x0
    return-object v0
.end method''')
s = s[:start] + detector + s[end:]

selector = '''.method private static findPetalSelectorY(IILjava/util/function/IntBinaryOperator;)I
    .locals 20
    move/from16 v1, p0
    move-object/from16 v6, p2
    new-instance v17, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda0;
    invoke-direct/range {v17 .. v17}, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda0;-><init>()V
    new-instance v18, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda1;
    invoke-direct/range {v18 .. v18}, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda1;-><init>()V
    new-instance v19, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda2;
    invoke-direct/range {v19 .. v19}, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda2;-><init>()V
    div-int/lit8 v7, v1, 0x64
    const/4 v0, 0x5
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I
    move-result v7
    move/from16 v0, p1
    int-to-float v0, v0
    const v2, 0x3cf5c28f    # 0.03f
    mul-float/2addr v0, v2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    move-result v8
    move/from16 v0, p1
    int-to-float v0, v0
    const v2, 0x3f4ccccd    # 0.8f
    mul-float/2addr v0, v2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    move-result v9
    const/4 v10, -0x1
    const/4 v11, -0x1
    const/4 v12, -0x1
    move v13, v8
    :row_loop
    if-gt v13, v9, :rows_done
    move v0, v13
    move v4, v7
    const v2, 0x3de147ae    # 0.11f
    const v3, 0x3e570a3d    # 0.21f
    move-object/from16 v5, v17
    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/CardHighlight;->colorCenterAt(IIFFILjava/util/function/IntPredicate;Ljava/util/function/IntBinaryOperator;)I
    move-result v14
    if-ltz v14, :row_not_matched
    const v2, 0x3e428f5c    # 0.19f
    const v3, 0x3e947ae1    # 0.29f
    move-object/from16 v5, v18
    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/CardHighlight;->colorCenterAt(IIFFILjava/util/function/IntPredicate;Ljava/util/function/IntBinaryOperator;)I
    move-result v15
    if-ltz v15, :row_not_matched
    const v2, 0x3e8a3d71    # 0.27f
    const v3, 0x3ec28f5c    # 0.38f
    move-object/from16 v5, v19
    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/CardHighlight;->colorCenterAt(IIFFILjava/util/function/IntPredicate;Ljava/util/function/IntBinaryOperator;)I
    move-result v16
    if-ltz v16, :row_not_matched
    if-gez v10, :next_row
    move v10, v13
    goto :next_row
    :row_not_matched
    if-ltz v10, :next_row
    add-int/lit8 v14, v13, -0x1
    sub-int v15, v14, v10
    sub-int v0, v12, v11
    if-le v15, v0, :reset_run
    move v11, v10
    move v12, v14
    :reset_run
    const/4 v10, -0x1
    :next_row
    add-int/lit8 v13, v13, 0x1
    goto :row_loop
    :rows_done
    if-ltz v10, :selector_result
    sub-int v15, v9, v10
    sub-int v0, v12, v11
    if-le v15, v0, :selector_result
    move v11, v10
    move v12, v9
    :selector_result
    if-gez v11, :selector_found
    const/4 v0, -0x1
    return v0
    :selector_found
    add-int v0, v11, v12
    div-int/lit8 v0, v0, 0x2
    return v0
.end method

'''
s = selector + s if s.startswith('.method') else s
# Insert helper before the existing search-button method, keeping the class header first.
idx = s.index('.method static findPetalSearchButton(')
s = s[:idx] + selector + s[idx:]
start, end, old = method(s, 'static findPetalSearchButton(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;')
new = '''.method static findPetalSearchButton(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    .locals 6
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/CardHighlight;->findPetalSelectorY(IILjava/util/function/IntBinaryOperator;)I
    move-result v3
    if-gez v3, :search_anchor_found
    const/4 v0, 0x0
    return-object v0
    :search_anchor_found
    int-to-float v0, p1
    const v1, 0x3ccccccd    # 0.025f
    mul-float/2addr v0, v1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    move-result v0
    const/16 v1, 0x8
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    add-int v4, v3, v0
    sub-int/2addr v3, v0
    move v0, p0
    move v1, p1
    const v2, 0x3f68f5c3    # 0.91f
    move-object v5, p2
    invoke-static/range {v0 .. v5}, Lcom/pikminx/helper/CardHighlight;->findNeutralDarkControl(IIFIILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    move-result-object v0
    return-object v0
.end method'''
s = s[:start] + new + s[end:]
start, end, old = method(s, 'static findPetalSearchCloseButton(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;')
new = '''.method static findPetalSearchCloseButton(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    .locals 7
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/CardHighlight;->findPetalSelectorY(IILjava/util/function/IntBinaryOperator;)I
    move-result v6
    if-gez v6, :close_anchor_found
    const/4 v0, 0x0
    return-object v0
    :close_anchor_found
    int-to-float v0, p1
    const v1, 0x3ccccccd    # 0.025f
    mul-float/2addr v0, v1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    move-result v0
    const/16 v1, 0x8
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
    move-result v0
    sub-int v4, v6, v0
    int-to-float v0, p1
    const v1, 0x3db851ec    # 0.09f
    mul-float/2addr v0, v1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    move-result v0
    sub-int v3, v6, v0
    move v0, p0
    move v1, p1
    const v2, 0x3da3d70a    # 0.08f
    move-object v5, p2
    invoke-static/range {v0 .. v5}, Lcom/pikminx/helper/CardHighlight;->findNeutralDarkControl(IIFIILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    move-result-object v6
    if-nez v6, :close_found
    const/4 v0, 0x0
    return-object v0
    :close_found
    int-to-float v0, p0
    const v1, 0x3f68f5c3    # 0.91f
    mul-float/2addr v0, v1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    move-result v0
    invoke-virtual {v6}, Lcom/pikminx/helper/CardHighlight$Point;->y()I
    move-result v1
    new-instance v2, Lcom/pikminx/helper/CardHighlight$Point;
    invoke-direct {v2, v0, v1}, Lcom/pikminx/helper/CardHighlight$Point;-><init>(II)V
    return-object v2
.end method'''
s = s[:start] + new + s[end:]
assert 'findNeutralDarkControl(IIFLjava' not in s
card.write_text(s, encoding='utf-8')

s = service.read_text(encoding='utf-8')
start, end, search = method(s, 'private openFeedNectarSearch(Landroid/graphics/Bitmap;)V')
a = search.index('    :cond_3\n')
b = search.index('    :goto_1\n', a)
search = search[:a] + '''    :cond_3
    iget v0, v7, Lcom/pikminx/helper/PetalAccessibilityService;->feedSearchMissingFrames:I
    add-int/lit8 v0, v0, 0x1
    iput v0, v7, Lcom/pikminx/helper/PetalAccessibilityService;->feedSearchMissingFrames:I
    const/4 v1, 0x3
    if-lt v0, v1, :search_anchor_retry
    sget v0, Lcom/pikminx/helper/R$string;->status_feed_search_open_failed:I
    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService;->stopWithError(Ljava/lang/String;)V
    return-void
    :search_anchor_retry
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->OPENING_NECTAR:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;
    iput-object v0, v7, Lcom/pikminx/helper/PetalAccessibilityService;->feedStep:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;
    const-wide/16 v0, 0x2bc
    invoke-direct {p0, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->schedule(J)V
    return-void

''' + search[b:]
s = s[:start] + search + s[end:]
old = '''    :pswitch_d
    invoke-direct {v7, v9}, Lcom/pikminx/helper/PetalAccessibilityService;->openFeedNectarSearch(Landroid/graphics/Bitmap;)V'''
new = '''    :pswitch_d
    invoke-direct {v7, v8}, Lcom/pikminx/helper/PetalAccessibilityService;->closeFeedPikminDetailIfOpen(Ljava/util/List;)Z
    move-result v0
    if-nez v0, :goto_f
    invoke-direct {v7, v9}, Lcom/pikminx/helper/PetalAccessibilityService;->openFeedNectarSearch(Landroid/graphics/Bitmap;)V'''
assert s.count(old) == 1
s = s.replace(old, new)
service.write_text(s, encoding='utf-8')
print('Patched selector anchor, bounded retries, and detail-card guard.')
