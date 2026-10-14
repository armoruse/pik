.class final Lcom/pikminx/helper/MapSceneDetector;
.super Ljava/lang/Object;
.source "MapSceneDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/MapSceneDetector$Detection;,
        Lcom/pikminx/helper/MapSceneDetector$Component;
    }
.end annotation


# static fields
.field private static final STEP:I = 0x2


# direct methods
.method public static synthetic $r8$lambda$9j9FbpldqvofkHKb2bp73ijXF-8(I)Z
    .locals 0

    invoke-static {p0}, Lcom/pikminx/helper/MapSceneDetector;->isFlowerStemColor(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HlopPHkmN5sMeDuN5Xfhi8-R55U(I)Z
    .locals 0

    invoke-static {p0}, Lcom/pikminx/helper/MapSceneDetector;->isLeafColor(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YE9EW_qVMgLhKpfyf4MhAgAiZnk(I)Z
    .locals 0

    invoke-static {p0}, Lcom/pikminx/helper/MapSceneDetector;->isBadgeRed(I)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDistinct(Ljava/util/List;Lcom/pikminx/helper/MapFlowerDetector$Point;I)V
    .locals 2
    .param p1, "candidate"    # Lcom/pikminx/helper/MapFlowerDetector$Point;
    .param p2, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapFlowerDetector$Point;",
            ">;",
            "Lcom/pikminx/helper/MapFlowerDetector$Point;",
            "I)V"
        }
    .end annotation

    .line 569
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda4;-><init>(Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 572
    .local v0, "duplicate":Z
    if-nez v0, :cond_0

    .line 573
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_0
    return-void
.end method

.method private static components(IIIILjava/util/function/IntBinaryOperator;ILjava/util/function/IntPredicate;)Ljava/util/List;
    .locals 25
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .param p5, "sampleStep"    # I
    .param p6, "predicate"    # Ljava/util/function/IntPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/function/IntBinaryOperator;",
            "I",
            "Ljava/util/function/IntPredicate;",
            ")",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapSceneDetector$Component;",
            ">;"
        }
    .end annotation

    .line 424
    div-int v0, p0, p5

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 425
    .local v0, "gridWidth":I
    sub-int v2, p3, p2

    div-int v2, v2, p5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 426
    .local v9, "gridHeight":I
    mul-int v2, v0, v9

    new-array v10, v2, [Z

    .line 427
    .local v10, "active":[Z
    array-length v2, v10

    new-array v11, v2, [Z

    .line 428
    .local v11, "visited":[Z
    const/4 v2, 0x0

    .local v2, "gy":I
    :goto_0
    if-ge v2, v9, :cond_1

    .line 429
    const/4 v3, 0x0

    .local v3, "gx":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 430
    mul-int v4, v2, v0

    add-int/2addr v4, v3

    mul-int v5, v3, p5

    mul-int v6, v2, p5

    add-int v6, p2, v6

    .line 431
    move-object/from16 v12, p4

    invoke-interface {v12, v5, v6}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v5

    .line 430
    move-object/from16 v13, p6

    invoke-interface {v13, v5}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v5

    aput-boolean v5, v10, v4

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v12, p4

    move-object/from16 v13, p6

    .line 428
    .end local v3    # "gx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v12, p4

    move-object/from16 v13, p6

    .line 434
    .end local v2    # "gy":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    .line 435
    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    move-object v15, v2

    .line 436
    .local v15, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    move v8, v2

    .local v8, "index":I
    :goto_2
    array-length v2, v10

    if-ge v8, v2, :cond_5

    .line 437
    aget-boolean v2, v10, v8

    if-eqz v2, :cond_4

    aget-boolean v2, v11, v8

    if-eqz v2, :cond_2

    .line 438
    move v13, v1

    move/from16 v24, v8

    goto/16 :goto_4

    .line 440
    :cond_2
    aput-boolean v1, v11, v8

    .line 441
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 442
    const/4 v2, 0x0

    .line 443
    .local v2, "count":I
    const/4 v3, 0x0

    .line 444
    .local v3, "sumX":I
    const/4 v4, 0x0

    .line 445
    .local v4, "sumY":I
    const v5, 0x7fffffff

    .line 446
    .local v5, "minX":I
    const/4 v6, 0x0

    .line 447
    .local v6, "maxX":I
    const v7, 0x7fffffff

    .line 448
    .local v7, "minY":I
    const/16 v16, 0x0

    move/from16 v1, v16

    .line 449
    .local v1, "maxY":I
    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    .line 450
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 451
    .local v17, "current":I
    rem-int v12, v17, v0

    .line 452
    .local v12, "x":I
    div-int v13, v17, v0

    .line 453
    .local v13, "y":I
    add-int/lit8 v18, v2, 0x1

    .line 454
    .end local v2    # "count":I
    .local v18, "count":I
    add-int v19, v3, v12

    .line 455
    .end local v3    # "sumX":I
    .local v19, "sumX":I
    add-int v20, v4, v13

    .line 456
    .end local v4    # "sumY":I
    .local v20, "sumY":I
    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 457
    .end local v5    # "minX":I
    .local v21, "minX":I
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 458
    .end local v6    # "maxX":I
    .local v22, "maxX":I
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 459
    .end local v7    # "minY":I
    .local v23, "minY":I
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 460
    add-int/lit8 v2, v12, -0x1

    move v3, v13

    move v4, v0

    move v5, v9

    move-object v6, v10

    move-object v7, v11

    move/from16 v24, v8

    .end local v8    # "index":I
    .local v24, "index":I
    move-object v8, v15

    invoke-static/range {v2 .. v8}, Lcom/pikminx/helper/MapSceneDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 461
    add-int/lit8 v2, v12, 0x1

    invoke-static/range {v2 .. v8}, Lcom/pikminx/helper/MapSceneDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 462
    add-int/lit8 v3, v13, -0x1

    move v2, v12

    invoke-static/range {v2 .. v8}, Lcom/pikminx/helper/MapSceneDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 463
    add-int/lit8 v3, v13, 0x1

    invoke-static/range {v2 .. v8}, Lcom/pikminx/helper/MapSceneDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 464
    .end local v12    # "x":I
    .end local v13    # "y":I
    .end local v17    # "current":I
    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    goto :goto_3

    .line 465
    .end local v18    # "count":I
    .end local v19    # "sumX":I
    .end local v20    # "sumY":I
    .end local v21    # "minX":I
    .end local v22    # "maxX":I
    .end local v23    # "minY":I
    .end local v24    # "index":I
    .restart local v2    # "count":I
    .restart local v3    # "sumX":I
    .restart local v4    # "sumY":I
    .restart local v5    # "minX":I
    .restart local v6    # "maxX":I
    .restart local v7    # "minY":I
    .restart local v8    # "index":I
    :cond_3
    move/from16 v24, v8

    .end local v8    # "index":I
    .restart local v24    # "index":I
    new-instance v8, Lcom/pikminx/helper/MapSceneDetector$Component;

    int-to-float v12, v3

    int-to-float v13, v2

    div-float/2addr v12, v13

    .line 466
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    mul-int v18, v12, p5

    int-to-float v12, v4

    int-to-float v13, v2

    div-float/2addr v12, v13

    .line 467
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    mul-int v12, v12, p5

    add-int v19, p2, v12

    sub-int v12, v6, v5

    const/4 v13, 0x1

    add-int/lit8 v21, v12, 0x1

    sub-int v12, v1, v7

    add-int/lit8 v22, v12, 0x1

    const/16 v23, 0x0

    move-object/from16 v17, v8

    move/from16 v20, v2

    invoke-direct/range {v17 .. v23}, Lcom/pikminx/helper/MapSceneDetector$Component;-><init>(IIIIILcom/pikminx/helper/MapSceneDetector$Component-IA;)V

    .line 465
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 437
    .end local v1    # "maxY":I
    .end local v2    # "count":I
    .end local v3    # "sumX":I
    .end local v4    # "sumY":I
    .end local v5    # "minX":I
    .end local v6    # "maxX":I
    .end local v7    # "minY":I
    .end local v24    # "index":I
    .restart local v8    # "index":I
    :cond_4
    move v13, v1

    move/from16 v24, v8

    .line 436
    .end local v8    # "index":I
    .restart local v24    # "index":I
    :goto_4
    add-int/lit8 v8, v24, 0x1

    move-object/from16 v12, p4

    move v1, v13

    move-object/from16 v13, p6

    .end local v24    # "index":I
    .restart local v8    # "index":I
    goto/16 :goto_2

    .line 472
    .end local v8    # "index":I
    :cond_5
    return-object v14
.end method

.method private static components(IIIILjava/util/function/IntBinaryOperator;Ljava/util/function/IntPredicate;)Ljava/util/List;
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .param p5, "predicate"    # Ljava/util/function/IntPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/function/IntBinaryOperator;",
            "Ljava/util/function/IntPredicate;",
            ")",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapSceneDetector$Component;",
            ">;"
        }
    .end annotation

    .line 413
    const/4 v5, 0x2

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/MapSceneDetector;->components(IIIILjava/util/function/IntBinaryOperator;ILjava/util/function/IntPredicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static countLeafLobePixels(IIIILjava/util/function/IntBinaryOperator;)I
    .locals 10
    .param p0, "centerX"    # I
    .param p1, "centerY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "count":I
    int-to-float v1, p2

    const v2, 0x3cbc6a7f    # 0.023f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 188
    .local v1, "offsetX":I
    int-to-float v2, p2

    const v3, 0x3c449ba6    # 0.012f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 189
    .local v2, "halfWidth":I
    int-to-float v4, p3

    const v5, 0x3bc49ba6    # 0.006f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 190
    .local v3, "halfHeight":I
    sub-int v4, p0, v1

    add-int v5, p0, v1

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    aget v6, v4, v5

    .line 191
    .local v6, "lobeCenterX":I
    sub-int v7, p1, v3

    .local v7, "y":I
    :goto_1
    add-int v8, p1, v3

    if-gt v7, v8, :cond_2

    .line 192
    sub-int v8, v6, v2

    .local v8, "x":I
    :goto_2
    add-int v9, v6, v2

    if-gt v8, v9, :cond_1

    .line 193
    if-ltz v8, :cond_0

    if-ge v8, p2, :cond_0

    if-ltz v7, :cond_0

    if-ge v7, p3, :cond_0

    .line 197
    invoke-interface {p4, v8, v7}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    invoke-static {v9}, Lcom/pikminx/helper/MapSceneDetector;->isLeafColor(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 192
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 191
    .end local v8    # "x":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 190
    .end local v6    # "lobeCenterX":I
    .end local v7    # "y":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 203
    :cond_3
    return v0
.end method

.method static detect(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/MapSceneDetector$Detection;
    .locals 28
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 20
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p0 .. p2}, Lcom/pikminx/helper/MapSceneDetector;->findMushroomBadges(IILjava/util/function/IntBinaryOperator;)Ljava/util/List;

    move-result-object v3

    .line 21
    .local v3, "mushrooms":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v4, "flowers":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v5, "confirmedMushrooms":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    nop

    .line 24
    invoke-static/range {p0 .. p2}, Lcom/pikminx/helper/MapFlowerDetector;->findCandidates(IILjava/util/function/IntBinaryOperator;)Ljava/util/List;

    move-result-object v6

    .line 25
    .local v6, "colorCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const v9, 0x3da3d70a    # 0.08f

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 26
    .local v8, "mushroom":Lcom/pikminx/helper/MapFlowerDetector$Point;
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda6;

    invoke-direct {v11, v8}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda6;-><init>(Lcom/pikminx/helper/MapFlowerDetector$Point;)V

    .line 27
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda8;

    invoke-direct {v11, v8, v1}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda8;-><init>(Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    .line 28
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda9;

    invoke-direct {v11, v8, v0}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda9;-><init>(Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    .line 29
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda10;

    invoke-direct {v11}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda10;-><init>()V

    .line 30
    invoke-static {v11}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v10

    .line 31
    invoke-virtual {v10, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 32
    .local v10, "cluster":Lcom/pikminx/helper/MapFlowerDetector$Point;
    new-instance v11, Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 35
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v12

    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v13

    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->area()I

    move-result v14

    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->visualKind()Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    move-result-object v15

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/pikminx/helper/MapFlowerDetector$Point;-><init>(IIILcom/pikminx/helper/MapFlowerDetector$VisualKind;)V

    int-to-float v12, v0

    mul-float/2addr v12, v9

    .line 36
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 32
    invoke-static {v5, v11, v9}, Lcom/pikminx/helper/MapSceneDetector;->addDistinct(Ljava/util/List;Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    .line 37
    .end local v8    # "mushroom":Lcom/pikminx/helper/MapFlowerDetector$Point;
    .end local v10    # "cluster":Lcom/pikminx/helper/MapFlowerDetector$Point;
    goto :goto_0

    .line 38
    :cond_0
    nop

    .line 39
    invoke-static/range {p0 .. p2}, Lcom/pikminx/helper/MapSceneDetector;->findStemmedFlowers(IILjava/util/function/IntBinaryOperator;)Ljava/util/List;

    move-result-object v7

    .line 40
    .local v7, "stemmedFlowers":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const v14, 0x3edc28f6    # 0.43f

    const v15, 0x3f266666    # 0.65f

    const v16, 0x3eb33333    # 0.35f

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v10, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 41
    .local v10, "point":Lcom/pikminx/helper/MapFlowerDetector$Point;
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda11;

    invoke-direct {v12, v10, v0, v1}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda11;-><init>(Lcom/pikminx/helper/MapFlowerDetector$Point;II)V

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v11

    .line 46
    .local v11, "nearMushroom":Z
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    new-instance v9, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda12;

    invoke-direct {v9, v10, v0}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda12;-><init>(Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    invoke-interface {v12, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v9

    .line 49
    .local v9, "confirmedByStem":Z
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->area()I

    move-result v12

    const/16 v13, 0x4b

    if-lt v12, v13, :cond_1

    .line 50
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v0

    mul-float v13, v13, v16

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    .line 51
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v0

    mul-float/2addr v13, v15

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 52
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v1

    mul-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    .line 53
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v1

    const v14, 0x3f147ae1    # 0.58f

    mul-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    move/from16 v12, v17

    goto :goto_2

    :cond_1
    move/from16 v12, v18

    .line 54
    .local v12, "playerAvatar":Z
    :goto_2
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v1

    const v15, 0x3e3851ec    # 0.18f

    mul-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_4

    .line 55
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v0

    const v15, 0x3e051eb8    # 0.13f

    mul-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_2

    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v1

    const v15, 0x3e4ccccd    # 0.2f

    mul-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_4

    .line 56
    :cond_2
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v0

    const v15, 0x3f59999a    # 0.85f

    mul-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v1

    const v15, 0x3e6147ae    # 0.22f

    mul-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v13, v18

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v13, v17

    .line 57
    .local v13, "overlayOrStatus":Z
    :goto_4
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v0

    const v16, 0x3da3d70a    # 0.08f

    mul-float v15, v15, v16

    cmpg-float v14, v14, v15

    if-lez v14, :cond_6

    .line 58
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v0

    const v16, 0x3f6b851f    # 0.92f

    mul-float v15, v15, v16

    cmpl-float v14, v14, v15

    if-gez v14, :cond_6

    .line 59
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v1

    const v16, 0x3f47ae14    # 0.78f

    mul-float v15, v15, v16

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v14, v18

    goto :goto_6

    :cond_6
    :goto_5
    move/from16 v14, v17

    .line 60
    .local v14, "outsideSafeMap":Z
    :goto_6
    nop

    .line 61
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v15

    move-object/from16 v23, v3

    .end local v3    # "mushrooms":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    .local v23, "mushrooms":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v3

    .line 60
    invoke-static {v15, v3, v0, v1, v2}, Lcom/pikminx/helper/MapSceneDetector;->isDarkLabelRegion(IIIILjava/util/function/IntBinaryOperator;)Z

    move-result v3

    .line 62
    .local v3, "insideDarkLabel":Z
    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->area()I

    move-result v15

    move-object/from16 v24, v8

    const/16 v8, 0x2d

    if-lt v15, v8, :cond_7

    invoke-virtual {v10}, Lcom/pikminx/helper/MapFlowerDetector$Point;->area()I

    move-result v8

    const/16 v15, 0x5a

    if-gt v8, v15, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v17, v18

    :goto_7
    move/from16 v8, v17

    .line 63
    .local v8, "bloomedFlowerSize":Z
    if-eqz v11, :cond_8

    if-eqz v9, :cond_9

    :cond_8
    if-nez v12, :cond_9

    if-nez v13, :cond_9

    if-nez v14, :cond_9

    if-nez v3, :cond_9

    if-eqz v8, :cond_9

    .line 69
    int-to-float v15, v0

    const v16, 0x3d6147ae    # 0.055f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v4, v10, v15}, Lcom/pikminx/helper/MapSceneDetector;->addDistinct(Ljava/util/List;Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    .line 71
    .end local v3    # "insideDarkLabel":Z
    .end local v8    # "bloomedFlowerSize":Z
    .end local v9    # "confirmedByStem":Z
    .end local v10    # "point":Lcom/pikminx/helper/MapFlowerDetector$Point;
    .end local v11    # "nearMushroom":Z
    .end local v12    # "playerAvatar":Z
    .end local v13    # "overlayOrStatus":Z
    .end local v14    # "outsideSafeMap":Z
    :cond_9
    move-object/from16 v3, v23

    move-object/from16 v8, v24

    const v9, 0x3da3d70a    # 0.08f

    goto/16 :goto_1

    .line 73
    .end local v23    # "mushrooms":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    .local v3, "mushrooms":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    :cond_a
    move-object/from16 v23, v3

    .end local v3    # "mushrooms":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    .restart local v23    # "mushrooms":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    invoke-static/range {p0 .. p2}, Lcom/pikminx/helper/MapSceneDetector;->findLeafStageFlowers(IILjava/util/function/IntBinaryOperator;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 74
    .local v8, "leaf":Lcom/pikminx/helper/MapFlowerDetector$Point;
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda13;

    invoke-direct {v11, v8, v0, v1}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda13;-><init>(Lcom/pikminx/helper/MapFlowerDetector$Point;II)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v10

    .line 77
    .local v10, "nearMushroom":Z
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda14;

    invoke-direct {v12, v8, v0}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda14;-><init>(Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    .line 78
    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v11

    .line 82
    .local v11, "hasNearbySmallHead":Z
    nop

    .line 83
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v12

    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v13

    .line 82
    invoke-static {v12, v13, v0, v1, v2}, Lcom/pikminx/helper/MapSceneDetector;->countLeafLobePixels(IIIILjava/util/function/IntBinaryOperator;)I

    move-result v12

    .line 84
    .local v12, "lobePixels":I
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v0

    const/high16 v25, 0x3e800000    # 0.25f

    mul-float v14, v14, v25

    cmpl-float v13, v13, v14

    if-lez v13, :cond_b

    .line 85
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v0

    const v25, 0x3ee66666    # 0.45f

    mul-float v14, v14, v25

    cmpg-float v13, v13, v14

    if-gez v13, :cond_b

    .line 86
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v1

    const v25, 0x3e428f5c    # 0.19f

    mul-float v14, v14, v25

    cmpl-float v13, v13, v14

    if-lez v13, :cond_b

    .line 87
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v1

    const v25, 0x3e851eb8    # 0.26f

    mul-float v14, v14, v25

    cmpg-float v13, v13, v14

    if-gez v13, :cond_b

    const/16 v13, 0x20

    if-lt v12, v13, :cond_b

    const/16 v13, 0x3c

    if-gt v12, v13, :cond_b

    move/from16 v13, v17

    goto :goto_9

    :cond_b
    move/from16 v13, v18

    .line 90
    .local v13, "clearLeafSeedling":Z
    :goto_9
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v0

    const v26, 0x3df5c28f    # 0.12f

    mul-float v15, v15, v26

    cmpl-float v14, v14, v15

    if-lez v14, :cond_c

    .line 91
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v0

    const v26, 0x3f6147ae    # 0.88f

    mul-float v15, v15, v26

    cmpg-float v14, v14, v15

    if-gez v14, :cond_c

    move/from16 v14, v17

    goto :goto_a

    :cond_c
    move/from16 v14, v18

    .line 92
    .local v14, "safeHorizontalMargin":Z
    :goto_a
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v15

    int-to-float v15, v15

    int-to-float v9, v1

    const v27, 0x3ea3d70a    # 0.32f

    mul-float v9, v9, v27

    cmpg-float v9, v15, v9

    if-gez v9, :cond_d

    move/from16 v9, v17

    goto :goto_b

    :cond_d
    move/from16 v9, v18

    .line 93
    .local v9, "upperMapRegion":Z
    :goto_b
    if-nez v10, :cond_e

    if-eqz v13, :cond_e

    if-eqz v14, :cond_e

    if-eqz v9, :cond_e

    .line 97
    int-to-float v15, v0

    const v26, 0x3d8f5c29    # 0.07f

    mul-float v15, v15, v26

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v4, v8, v15}, Lcom/pikminx/helper/MapSceneDetector;->addDistinct(Ljava/util/List;Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    .line 99
    .end local v8    # "leaf":Lcom/pikminx/helper/MapFlowerDetector$Point;
    .end local v9    # "upperMapRegion":Z
    .end local v10    # "nearMushroom":Z
    .end local v11    # "hasNearbySmallHead":Z
    .end local v12    # "lobePixels":I
    .end local v13    # "clearLeafSeedling":Z
    .end local v14    # "safeHorizontalMargin":Z
    :cond_e
    const v14, 0x3edc28f6    # 0.43f

    const v15, 0x3f266666    # 0.65f

    goto/16 :goto_8

    .line 101
    :cond_f
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 102
    .local v8, "stemmed":Lcom/pikminx/helper/MapFlowerDetector$Point;
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda0;

    invoke-direct {v10, v8, v0, v1}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/MapFlowerDetector$Point;II)V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v9

    .line 105
    .local v9, "nearMushroom":Z
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v0

    mul-float v11, v11, v16

    cmpl-float v10, v10, v11

    if-lez v10, :cond_12

    .line 106
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v0

    const v12, 0x3f266666    # 0.65f

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_11

    .line 107
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v1

    const v13, 0x3edc28f6    # 0.43f

    mul-float/2addr v11, v13

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    .line 108
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v1

    const v14, 0x3f147ae1    # 0.58f

    mul-float/2addr v11, v14

    cmpg-float v10, v10, v11

    if-gez v10, :cond_13

    move/from16 v10, v17

    goto :goto_e

    .line 107
    :cond_10
    const v14, 0x3f147ae1    # 0.58f

    goto :goto_d

    .line 106
    :cond_11
    const v13, 0x3edc28f6    # 0.43f

    const v14, 0x3f147ae1    # 0.58f

    goto :goto_d

    .line 105
    :cond_12
    const v12, 0x3f266666    # 0.65f

    const v13, 0x3edc28f6    # 0.43f

    const v14, 0x3f147ae1    # 0.58f

    .line 108
    :cond_13
    :goto_d
    move/from16 v10, v18

    .line 109
    .local v10, "playerAvatar":Z
    :goto_e
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v11

    int-to-float v11, v11

    int-to-float v15, v0

    const v21, 0x3da3d70a    # 0.08f

    mul-float v15, v15, v21

    cmpl-float v11, v11, v15

    if-lez v11, :cond_16

    .line 110
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v11

    int-to-float v11, v11

    int-to-float v15, v0

    const v20, 0x3f6b851f    # 0.92f

    mul-float v15, v15, v20

    cmpg-float v11, v11, v15

    if-gez v11, :cond_15

    .line 111
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v11

    int-to-float v11, v11

    int-to-float v15, v1

    const v22, 0x3e0f5c29    # 0.14f

    mul-float v15, v15, v22

    cmpl-float v11, v11, v15

    if-lez v11, :cond_14

    .line 112
    invoke-virtual {v8}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v11

    int-to-float v11, v11

    int-to-float v15, v1

    const v19, 0x3f47ae14    # 0.78f

    mul-float v15, v15, v19

    cmpg-float v11, v11, v15

    if-gez v11, :cond_17

    move/from16 v11, v17

    goto :goto_10

    .line 111
    :cond_14
    const v19, 0x3f47ae14    # 0.78f

    goto :goto_f

    .line 110
    :cond_15
    const v19, 0x3f47ae14    # 0.78f

    goto :goto_f

    .line 109
    :cond_16
    const v19, 0x3f47ae14    # 0.78f

    const v20, 0x3f6b851f    # 0.92f

    .line 112
    :cond_17
    :goto_f
    move/from16 v11, v18

    .line 113
    .local v11, "safeMapPosition":Z
    :goto_10
    if-nez v9, :cond_18

    if-nez v10, :cond_18

    if-eqz v11, :cond_18

    .line 114
    int-to-float v15, v0

    const v22, 0x3d8f5c29    # 0.07f

    mul-float v15, v15, v22

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v4, v8, v15}, Lcom/pikminx/helper/MapSceneDetector;->addDistinct(Ljava/util/List;Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    goto :goto_11

    .line 113
    :cond_18
    const v22, 0x3d8f5c29    # 0.07f

    .line 116
    .end local v8    # "stemmed":Lcom/pikminx/helper/MapFlowerDetector$Point;
    .end local v9    # "nearMushroom":Z
    .end local v10    # "playerAvatar":Z
    .end local v11    # "safeMapPosition":Z
    :goto_11
    goto/16 :goto_c

    .line 118
    :cond_19
    new-instance v3, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    new-instance v8, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda7;

    invoke-direct {v8}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda7;-><init>()V

    .line 119
    invoke-interface {v3, v8}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    .line 118
    invoke-interface {v4, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 120
    new-instance v3, Lcom/pikminx/helper/MapSceneDetector$Detection;

    invoke-static {v4}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    invoke-static {v5}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lcom/pikminx/helper/MapSceneDetector$Detection;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method private static enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "active"    # [Z
    .param p5, "visited"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[Z[Z",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 483
    .local p6, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    if-ltz p0, :cond_2

    if-ge p0, p2, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, p3, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    mul-int v0, p1, p2

    add-int/2addr v0, p0

    .line 487
    .local v0, "index":I
    aget-boolean v1, p4, v0

    if-eqz v1, :cond_1

    aget-boolean v1, p5, v0

    if-nez v1, :cond_1

    .line 488
    const/4 v1, 0x1

    aput-boolean v1, p5, v0

    .line 489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_1
    return-void

    .line 484
    .end local v0    # "index":I
    :cond_2
    :goto_0
    return-void
.end method

.method private static findLeafStageFlowers(IILjava/util/function/IntBinaryOperator;)Ljava/util/List;
    .locals 22
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapFlowerDetector$Point;",
            ">;"
        }
    .end annotation

    .line 237
    move/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    int-to-float v0, v7

    const v1, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, v1

    .line 240
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v7

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    .line 241
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v5, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda2;-><init>()V

    .line 237
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/pikminx/helper/MapSceneDetector;->components(IIIILjava/util/function/IntBinaryOperator;Ljava/util/function/IntPredicate;)Ljava/util/List;

    move-result-object v0

    .line 244
    .local v0, "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 246
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/MapSceneDetector$Component;

    .line 247
    .local v3, "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->area()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_d

    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->area()I

    move-result v4

    const/16 v9, 0x37

    if-le v4, v9, :cond_0

    .line 248
    move-object/from16 v18, v0

    goto/16 :goto_7

    .line 250
    :cond_0
    add-int/lit8 v4, v2, 0x1

    .local v4, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_c

    .line 251
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pikminx/helper/MapSceneDetector$Component;

    .line 252
    .local v10, "second":Lcom/pikminx/helper/MapSceneDetector$Component;
    invoke-virtual {v10}, Lcom/pikminx/helper/MapSceneDetector$Component;->area()I

    move-result v11

    if-lt v11, v5, :cond_a

    invoke-virtual {v10}, Lcom/pikminx/helper/MapSceneDetector$Component;->area()I

    move-result v11

    if-le v11, v9, :cond_1

    .line 253
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    goto/16 :goto_6

    .line 255
    :cond_1
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v11

    invoke-virtual {v10}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 256
    .local v11, "separation":I
    int-to-float v12, v11

    int-to-float v13, v6

    const v14, 0x3ccccccd    # 0.025f

    mul-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_9

    int-to-float v12, v11

    int-to-float v13, v6

    const v14, 0x3dae147b    # 0.085f

    mul-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_9

    .line 258
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->y()I

    move-result v12

    invoke-virtual {v10}, Lcom/pikminx/helper/MapSceneDetector$Component;->y()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v7

    const v14, 0x3c449ba6    # 0.012f

    mul-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 259
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    goto/16 :goto_6

    .line 261
    :cond_2
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v12

    invoke-virtual {v10}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v13

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    .line 262
    .local v12, "centerX":I
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->y()I

    move-result v13

    invoke-virtual {v10}, Lcom/pikminx/helper/MapSceneDetector$Component;->y()I

    move-result v14

    add-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    .line 263
    .local v13, "centerY":I
    const/4 v14, 0x0

    .line 264
    .local v14, "brightLeafPixels":I
    int-to-float v15, v6

    const v16, 0x3d3851ec    # 0.045f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 265
    .local v15, "leafHalfWidth":I
    int-to-float v5, v7

    const v17, 0x3c75c28f    # 0.015f

    mul-float v5, v5, v17

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 266
    .local v5, "leafHalfHeight":I
    sub-int v17, v13, v5

    move/from16 v9, v17

    .line 267
    .local v9, "sampleY":I
    :goto_2
    move-object/from16 v18, v0

    .end local v0    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .local v18, "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    add-int v0, v13, v5

    if-gt v9, v0, :cond_5

    .line 269
    sub-int v0, v12, v15

    .line 270
    .local v0, "sampleX":I
    :goto_3
    move-object/from16 v19, v3

    .end local v3    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    .local v19, "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    add-int v3, v12, v15

    if-gt v0, v3, :cond_4

    .line 272
    if-ltz v0, :cond_3

    if-ge v0, v6, :cond_3

    if-ltz v9, :cond_3

    if-ge v9, v7, :cond_3

    .line 276
    invoke-interface {v8, v0, v9}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v3

    invoke-static {v3}, Lcom/pikminx/helper/MapSceneDetector;->isLeafColor(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 277
    add-int/lit8 v14, v14, 0x1

    .line 271
    :cond_3
    add-int/lit8 v0, v0, 0x2

    move-object/from16 v3, v19

    goto :goto_3

    .line 268
    .end local v0    # "sampleX":I
    :cond_4
    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    goto :goto_2

    .line 267
    .end local v19    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    .restart local v3    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    :cond_5
    move-object/from16 v19, v3

    .line 281
    .end local v3    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    .end local v9    # "sampleY":I
    .restart local v19    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    const/4 v0, 0x0

    .line 282
    .local v0, "stemSamples":I
    const/4 v3, 0x0

    .line 283
    .local v3, "greenStemSamples":I
    int-to-float v9, v7

    const v20, 0x3c03126f    # 0.008f

    mul-float v9, v9, v20

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v9, v13

    .line 284
    .local v9, "y":I
    :goto_4
    move/from16 v20, v5

    .end local v5    # "leafHalfHeight":I
    .local v20, "leafHalfHeight":I
    int-to-float v5, v7

    const v21, 0x3d23d70a    # 0.04f

    mul-float v5, v5, v21

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v13

    if-ge v9, v5, :cond_8

    if-ge v9, v7, :cond_8

    .line 286
    add-int/lit8 v5, v12, -0x2

    .local v5, "x":I
    :goto_5
    add-int/lit8 v7, v12, 0x2

    if-gt v5, v7, :cond_7

    .line 287
    if-ltz v5, :cond_6

    if-ge v5, v6, :cond_6

    .line 288
    invoke-interface {v8, v5, v9}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v7

    invoke-static {v7}, Lcom/pikminx/helper/MapSceneDetector;->isStemGreen(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 289
    add-int/lit8 v3, v3, 0x1

    .line 291
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 286
    add-int/lit8 v5, v5, 0x2

    move/from16 v7, p1

    goto :goto_5

    .line 285
    .end local v5    # "x":I
    :cond_7
    add-int/lit8 v9, v9, 0x2

    move/from16 v7, p1

    move/from16 v5, v20

    goto :goto_4

    .line 294
    .end local v9    # "y":I
    :cond_8
    const/16 v5, 0x18

    if-lt v14, v5, :cond_b

    if-lez v0, :cond_b

    int-to-float v5, v3

    int-to-float v7, v0

    const v9, 0x3f3851ec    # 0.72f

    mul-float/2addr v7, v9

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_b

    .line 297
    new-instance v5, Lcom/pikminx/helper/MapFlowerDetector$Point;

    sget-object v7, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->YELLOW:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    invoke-direct {v5, v12, v13, v3, v7}, Lcom/pikminx/helper/MapFlowerDetector$Point;-><init>(IIILcom/pikminx/helper/MapFlowerDetector$VisualKind;)V

    int-to-float v7, v6

    const v9, 0x3da3d70a    # 0.08f

    mul-float/2addr v7, v9

    .line 304
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 297
    invoke-static {v1, v5, v7}, Lcom/pikminx/helper/MapSceneDetector;->addDistinct(Ljava/util/List;Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    goto :goto_6

    .line 256
    .end local v12    # "centerX":I
    .end local v13    # "centerY":I
    .end local v14    # "brightLeafPixels":I
    .end local v15    # "leafHalfWidth":I
    .end local v18    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .end local v19    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    .end local v20    # "leafHalfHeight":I
    .local v0, "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .local v3, "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    :cond_9
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    .end local v0    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .end local v3    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    .restart local v18    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .restart local v19    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    goto :goto_6

    .line 252
    .end local v11    # "separation":I
    .end local v18    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .end local v19    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    .restart local v0    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .restart local v3    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    :cond_a
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    .line 250
    .end local v0    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .end local v3    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    .end local v10    # "second":Lcom/pikminx/helper/MapSceneDetector$Component;
    .restart local v18    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .restart local v19    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p1

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    const/4 v5, 0x4

    const/16 v9, 0x37

    goto/16 :goto_1

    .end local v18    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .end local v19    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    .restart local v0    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .restart local v3    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    :cond_c
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    .end local v0    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .end local v3    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    .restart local v18    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .restart local v19    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    goto :goto_7

    .line 247
    .end local v4    # "j":I
    .end local v18    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .end local v19    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    .restart local v0    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .restart local v3    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    :cond_d
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    .line 245
    .end local v0    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .end local v3    # "first":Lcom/pikminx/helper/MapSceneDetector$Component;
    .restart local v18    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, p1

    move-object/from16 v0, v18

    goto/16 :goto_0

    .line 308
    .end local v2    # "i":I
    .end local v18    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .restart local v0    # "leaves":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    :cond_e
    return-object v1
.end method

.method private static findMushroomBadges(IILjava/util/function/IntBinaryOperator;)Ljava/util/List;
    .locals 20
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapFlowerDetector$Point;",
            ">;"
        }
    .end annotation

    .line 125
    move/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    int-to-float v0, v7

    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v0, v1

    .line 128
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v7

    const v1, 0x3ef5c28f    # 0.48f

    mul-float/2addr v0, v1

    .line 129
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v5, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda5;-><init>()V

    .line 125
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/pikminx/helper/MapSceneDetector;->components(IIIILjava/util/function/IntBinaryOperator;Ljava/util/function/IntPredicate;)Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "redComponents":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/MapSceneDetector$Component;

    .line 134
    .local v3, "red":Lcom/pikminx/helper/MapSceneDetector$Component;
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->area()I

    move-result v4

    const/16 v5, 0x1c

    const/16 v10, 0xc

    const/4 v11, 0x0

    if-lt v4, v5, :cond_1

    .line 135
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->area()I

    move-result v4

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_1

    .line 136
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->width()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 137
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->height()I

    move-result v4

    if-lt v4, v5, :cond_1

    .line 138
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->width()I

    move-result v4

    if-gt v4, v10, :cond_1

    .line 139
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->height()I

    move-result v4

    if-gt v4, v10, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v11

    .line 140
    .local v4, "compactBadge":Z
    :goto_1
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->area()I

    move-result v5

    const/16 v12, 0xa

    if-lt v5, v12, :cond_2

    .line 141
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->area()I

    move-result v5

    const/16 v12, 0x1b

    if-gt v5, v12, :cond_2

    .line 142
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v5

    int-to-float v5, v5

    int-to-float v12, v6

    const v13, 0x3f4ccccd    # 0.8f

    mul-float/2addr v12, v13

    cmpl-float v5, v5, v12

    if-lez v5, :cond_2

    .line 143
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->width()I

    move-result v5

    const/4 v12, 0x3

    if-lt v5, v12, :cond_2

    .line 144
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->height()I

    move-result v5

    if-lt v5, v12, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v11

    .line 145
    .local v5, "partialRightEdgeBadge":Z
    :goto_2
    if-nez v4, :cond_3

    if-eqz v5, :cond_0

    .line 146
    :cond_3
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->width()I

    move-result v12

    if-gt v12, v10, :cond_b

    .line 147
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->height()I

    move-result v12

    if-le v12, v10, :cond_4

    .line 148
    goto :goto_0

    .line 150
    :cond_4
    const/4 v10, 0x0

    .line 151
    .local v10, "brightBelow":I
    int-to-float v12, v6

    const v13, 0x3d8f5c29    # 0.07f

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 152
    .local v12, "radiusX":I
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->y()I

    move-result v13

    int-to-float v14, v7

    const v15, 0x3c03126f    # 0.008f

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    .line 153
    .local v13, "fromY":I
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->y()I

    move-result v14

    int-to-float v15, v7

    const v16, 0x3d4ccccd    # 0.05f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    add-int/2addr v14, v15

    .line 154
    .local v14, "toY":I
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    .local v15, "y":I
    :goto_3
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v15, v9, :cond_7

    .line 155
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v9

    sub-int/2addr v9, v12

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 156
    .local v9, "x":I
    :goto_4
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v17

    add-int v11, v17, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ge v9, v11, :cond_6

    .line 158
    invoke-interface {v8, v9, v15}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v11

    invoke-static {v11}, Lcom/pikminx/helper/MapSceneDetector;->isMushroomClusterColor(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 159
    add-int/lit8 v10, v10, 0x1

    .line 157
    :cond_5
    add-int/lit8 v9, v9, 0x2

    const/4 v11, 0x0

    goto :goto_4

    .line 154
    .end local v9    # "x":I
    :cond_6
    add-int/lit8 v15, v15, 0x2

    const/4 v11, 0x0

    goto :goto_3

    .line 163
    .end local v15    # "y":I
    :cond_7
    nop

    .line 164
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v9

    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->y()I

    move-result v11

    .line 163
    invoke-static {v9, v11, v6, v7, v8}, Lcom/pikminx/helper/MapSceneDetector;->hasRaidCounterToRight(IIIILjava/util/function/IntBinaryOperator;)Z

    move-result v9

    .line 165
    .local v9, "raidCounterToRight":Z
    const/16 v11, 0xb4

    if-lt v10, v11, :cond_8

    .line 166
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v11

    int-to-float v11, v11

    int-to-float v15, v6

    const v17, 0x3f333333    # 0.7f

    mul-float v15, v15, v17

    cmpl-float v11, v11, v15

    if-lez v11, :cond_8

    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    move/from16 v11, v16

    .line 167
    .local v11, "yellowMushroomWithoutBadge":Z
    const/16 v15, 0x46

    if-ge v10, v15, :cond_a

    if-nez v9, :cond_a

    if-eqz v11, :cond_9

    goto :goto_6

    :cond_9
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    goto :goto_7

    .line 168
    :cond_a
    :goto_6
    new-instance v15, Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 171
    move-object/from16 v16, v0

    .end local v0    # "redComponents":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .local v16, "redComponents":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v0

    move-object/from16 v17, v2

    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->y()I

    move-result v2

    move/from16 v18, v4

    .end local v4    # "compactBadge":Z
    .local v18, "compactBadge":Z
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->area()I

    move-result v4

    move-object/from16 v19, v3

    .end local v3    # "red":Lcom/pikminx/helper/MapSceneDetector$Component;
    .local v19, "red":Lcom/pikminx/helper/MapSceneDetector$Component;
    sget-object v3, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->RED:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    invoke-direct {v15, v0, v2, v4, v3}, Lcom/pikminx/helper/MapFlowerDetector$Point;-><init>(IIILcom/pikminx/helper/MapFlowerDetector$VisualKind;)V

    int-to-float v0, v6

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    .line 172
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 168
    invoke-static {v1, v15, v0}, Lcom/pikminx/helper/MapSceneDetector;->addDistinct(Ljava/util/List;Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    .line 174
    .end local v5    # "partialRightEdgeBadge":Z
    .end local v9    # "raidCounterToRight":Z
    .end local v10    # "brightBelow":I
    .end local v11    # "yellowMushroomWithoutBadge":Z
    .end local v12    # "radiusX":I
    .end local v13    # "fromY":I
    .end local v14    # "toY":I
    .end local v18    # "compactBadge":Z
    .end local v19    # "red":Lcom/pikminx/helper/MapSceneDetector$Component;
    :goto_7
    move-object/from16 v0, v16

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 146
    .end local v16    # "redComponents":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .restart local v0    # "redComponents":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .restart local v3    # "red":Lcom/pikminx/helper/MapSceneDetector$Component;
    .restart local v4    # "compactBadge":Z
    .restart local v5    # "partialRightEdgeBadge":Z
    :cond_b
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v18, v4

    .end local v0    # "redComponents":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .end local v3    # "red":Lcom/pikminx/helper/MapSceneDetector$Component;
    .end local v4    # "compactBadge":Z
    .restart local v16    # "redComponents":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .restart local v18    # "compactBadge":Z
    .restart local v19    # "red":Lcom/pikminx/helper/MapSceneDetector$Component;
    goto/16 :goto_0

    .line 175
    .end local v5    # "partialRightEdgeBadge":Z
    .end local v16    # "redComponents":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .end local v18    # "compactBadge":Z
    .end local v19    # "red":Lcom/pikminx/helper/MapSceneDetector$Component;
    .restart local v0    # "redComponents":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    :cond_c
    move-object/from16 v16, v0

    .end local v0    # "redComponents":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .restart local v16    # "redComponents":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    new-instance v0, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v2, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda7;-><init>()V

    .line 176
    invoke-interface {v0, v2}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 175
    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 177
    return-object v1
.end method

.method private static findStemmedFlowers(IILjava/util/function/IntBinaryOperator;)Ljava/util/List;
    .locals 21
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapFlowerDetector$Point;",
            ">;"
        }
    .end annotation

    .line 318
    move/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    int-to-float v0, v8

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    .line 321
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v8

    const v1, 0x3f3851ec    # 0.72f

    mul-float/2addr v0, v1

    .line 322
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x1

    new-instance v6, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda3;-><init>()V

    .line 318
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/MapSceneDetector;->components(IIIILjava/util/function/IntBinaryOperator;ILjava/util/function/IntPredicate;)Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, "stems":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/MapSceneDetector$Component;

    .line 328
    .local v3, "stem":Lcom/pikminx/helper/MapSceneDetector$Component;
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->area()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v10, 0x1

    if-lt v4, v6, :cond_0

    .line 329
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->area()I

    move-result v4

    const/16 v11, 0x140

    if-gt v4, v11, :cond_0

    .line 330
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->width()I

    move-result v4

    int-to-float v11, v7

    const v12, 0x3c9374bc    # 0.018f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-gt v4, v11, :cond_0

    .line 331
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->height()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 332
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->height()I

    move-result v4

    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->width()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-lt v4, v6, :cond_0

    move v4, v10

    goto :goto_1

    :cond_0
    move v4, v5

    .line 333
    .local v4, "narrowVerticalStalk":Z
    :goto_1
    if-nez v4, :cond_1

    .line 334
    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->y()I

    move-result v6

    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v6, v11

    .line 337
    .local v6, "stemTop":I
    int-to-float v11, v7

    const v12, 0x3d6147ae    # 0.055f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 338
    .local v11, "radiusX":I
    int-to-float v12, v8

    const v13, 0x3d4ccccd    # 0.05f

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    sub-int v12, v6, v12

    .line 339
    .local v12, "fromY":I
    int-to-float v13, v8

    const v14, 0x3c03126f    # 0.008f

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v10, v6

    .line 340
    .local v10, "toY":I
    const/4 v13, 0x0

    .line 341
    .local v13, "blossomPixels":I
    const/4 v14, 0x0

    .line 342
    .local v14, "sumX":I
    const/4 v15, 0x0

    .line 343
    .local v15, "sumY":I
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v5, v16

    .local v5, "y":I
    :goto_2
    move-object/from16 v17, v0

    .end local v0    # "stems":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .local v17, "stems":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    add-int/lit8 v0, v8, -0x1

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gt v5, v0, :cond_4

    .line 344
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v0

    sub-int/2addr v0, v11

    move-object/from16 v18, v2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 345
    .local v0, "x":I
    :goto_3
    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v19

    move/from16 v20, v4

    .end local v4    # "narrowVerticalStalk":Z
    .local v20, "narrowVerticalStalk":Z
    add-int v4, v19, v11

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 347
    invoke-interface {v9, v0, v5}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v2

    invoke-static {v2}, Lcom/pikminx/helper/MapSceneDetector;->isBlossomColor(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    add-int/lit8 v13, v13, 0x1

    .line 349
    add-int/2addr v14, v0

    .line 350
    add-int/2addr v15, v5

    .line 346
    :cond_2
    add-int/lit8 v0, v0, 0x2

    move/from16 v4, v20

    const/4 v2, 0x0

    goto :goto_3

    .line 343
    .end local v0    # "x":I
    :cond_3
    add-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move/from16 v4, v20

    goto :goto_2

    .end local v20    # "narrowVerticalStalk":Z
    .restart local v4    # "narrowVerticalStalk":Z
    :cond_4
    move-object/from16 v18, v2

    move/from16 v20, v4

    .line 354
    .end local v4    # "narrowVerticalStalk":Z
    .end local v5    # "y":I
    .restart local v20    # "narrowVerticalStalk":Z
    const/16 v0, 0x12

    if-lt v13, v0, :cond_9

    const/16 v0, 0xf0

    if-le v13, v0, :cond_5

    .line 355
    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 357
    :cond_5
    int-to-float v0, v14

    int-to-float v2, v13

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 358
    .local v0, "blossomX":I
    int-to-float v2, v15

    int-to-float v4, v13

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 359
    .local v2, "blossomY":I
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->x()I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v11

    const v16, 0x3f19999a    # 0.6f

    mul-float v5, v5, v16

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_8

    .line 360
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneDetector$Component;->y()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 361
    invoke-static {v0, v2, v7, v8, v9}, Lcom/pikminx/helper/MapSceneDetector;->isDarkLabelRegion(IIIILjava/util/function/IntBinaryOperator;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 362
    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 364
    :cond_6
    new-instance v4, Lcom/pikminx/helper/MapFlowerDetector$Point;

    sget-object v5, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->PURPLE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    invoke-direct {v4, v0, v2, v13, v5}, Lcom/pikminx/helper/MapFlowerDetector$Point;-><init>(IIILcom/pikminx/helper/MapFlowerDetector$VisualKind;)V

    int-to-float v5, v7

    const v16, 0x3d8f5c29    # 0.07f

    mul-float v5, v5, v16

    .line 371
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 364
    invoke-static {v1, v4, v5}, Lcom/pikminx/helper/MapSceneDetector;->addDistinct(Ljava/util/List;Lcom/pikminx/helper/MapFlowerDetector$Point;I)V

    .line 372
    .end local v0    # "blossomX":I
    .end local v2    # "blossomY":I
    .end local v3    # "stem":Lcom/pikminx/helper/MapSceneDetector$Component;
    .end local v6    # "stemTop":I
    .end local v10    # "toY":I
    .end local v11    # "radiusX":I
    .end local v12    # "fromY":I
    .end local v13    # "blossomPixels":I
    .end local v14    # "sumX":I
    .end local v15    # "sumY":I
    .end local v20    # "narrowVerticalStalk":Z
    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 360
    .restart local v0    # "blossomX":I
    .restart local v2    # "blossomY":I
    .restart local v3    # "stem":Lcom/pikminx/helper/MapSceneDetector$Component;
    .restart local v6    # "stemTop":I
    .restart local v10    # "toY":I
    .restart local v11    # "radiusX":I
    .restart local v12    # "fromY":I
    .restart local v13    # "blossomPixels":I
    .restart local v14    # "sumX":I
    .restart local v15    # "sumY":I
    .restart local v20    # "narrowVerticalStalk":Z
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 359
    :cond_8
    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 354
    .end local v0    # "blossomX":I
    .end local v2    # "blossomY":I
    :cond_9
    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 373
    .end local v3    # "stem":Lcom/pikminx/helper/MapSceneDetector$Component;
    .end local v6    # "stemTop":I
    .end local v10    # "toY":I
    .end local v11    # "radiusX":I
    .end local v12    # "fromY":I
    .end local v13    # "blossomPixels":I
    .end local v14    # "sumX":I
    .end local v15    # "sumY":I
    .end local v17    # "stems":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    .end local v20    # "narrowVerticalStalk":Z
    .local v0, "stems":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneDetector$Component;>;"
    :cond_a
    return-object v1
.end method

.method private static hasRaidCounterToRight(IIIILjava/util/function/IntBinaryOperator;)Z
    .locals 16
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 208
    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 209
    .local v2, "white":I
    const/4 v3, 0x0

    .line 210
    .local v3, "purpleBackground":I
    int-to-float v4, v1

    const v5, 0x3c449ba6    # 0.012f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, p1, v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 211
    .local v4, "sampleY":I
    :goto_0
    int-to-float v6, v1

    const v7, 0x3c9374bc    # 0.018f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int v6, p1, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 213
    int-to-float v6, v0

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int v6, p0, v6

    .line 214
    .local v6, "sampleX":I
    :goto_1
    int-to-float v7, v0

    const v8, 0x3dc28f5c    # 0.095f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v7, p0, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 216
    move-object/from16 v7, p4

    invoke-interface {v7, v6, v4}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v8

    .line 217
    .local v8, "color":I
    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    .line 218
    .local v9, "red":I
    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v10, v10, 0xff

    .line 219
    .local v10, "green":I
    and-int/lit16 v11, v8, 0xff

    .line 220
    .local v11, "blue":I
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 221
    .local v12, "max":I
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 222
    .local v13, "min":I
    const/16 v14, 0xd7

    const/16 v15, 0x28

    if-lt v13, v14, :cond_0

    sub-int v14, v12, v13

    if-gt v14, v15, :cond_0

    .line 223
    add-int/lit8 v2, v2, 0x1

    .line 225
    :cond_0
    const/16 v14, 0x2d

    if-lt v9, v14, :cond_1

    const/16 v14, 0x87

    if-gt v9, v14, :cond_1

    if-lt v10, v15, :cond_1

    const/16 v14, 0x7d

    if-gt v10, v14, :cond_1

    const/16 v14, 0x46

    if-lt v11, v14, :cond_1

    if-lt v11, v9, :cond_1

    .line 228
    add-int/lit8 v3, v3, 0x1

    .line 215
    .end local v8    # "color":I
    .end local v9    # "red":I
    .end local v10    # "green":I
    .end local v11    # "blue":I
    .end local v12    # "max":I
    .end local v13    # "min":I
    :cond_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 214
    :cond_2
    move-object/from16 v7, p4

    .line 212
    .end local v6    # "sampleX":I
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 211
    :cond_3
    move-object/from16 v7, p4

    .line 232
    .end local v4    # "sampleY":I
    const/16 v4, 0x8

    if-lt v2, v4, :cond_4

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    const/4 v5, 0x1

    :cond_4
    return v5
.end method

.method private static isBadgeRed(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 494
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 495
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 496
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 497
    .local v2, "blue":I
    const/16 v3, 0xbe

    if-lt v0, v3, :cond_0

    add-int/lit8 v3, v1, 0x37

    if-lt v0, v3, :cond_0

    add-int/lit8 v3, v2, 0x19

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isBlossomColor(I)Z
    .locals 11
    .param p0, "color"    # I

    .line 549
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 550
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 551
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 552
    .local v2, "blue":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 553
    .local v3, "maximum":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 554
    .local v4, "minimum":I
    const/16 v5, 0xcd

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v4, v5, :cond_0

    sub-int v5, v3, v4

    const/16 v8, 0x30

    if-gt v5, v8, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 555
    .local v5, "white":Z
    :goto_0
    const/16 v8, 0xaa

    if-lt v0, v8, :cond_1

    add-int/lit8 v8, v1, 0x23

    if-lt v0, v8, :cond_1

    add-int/lit8 v8, v2, 0xa

    if-lt v0, v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    .line 556
    .local v8, "redOrPink":Z
    :goto_1
    const/16 v9, 0xb4

    if-lt v0, v9, :cond_2

    const/16 v9, 0x8c

    if-lt v1, v9, :cond_2

    .line 558
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v9, v9, -0x1e

    if-gt v2, v9, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v7

    .line 559
    .local v9, "yellow":Z
    :goto_2
    const/16 v10, 0x87

    if-lt v0, v10, :cond_4

    const/16 v10, 0x91

    if-lt v2, v10, :cond_4

    add-int/lit8 v10, v1, 0x16

    if-ge v0, v10, :cond_3

    add-int/lit8 v10, v1, 0x16

    if-lt v2, v10, :cond_4

    :cond_3
    move v10, v6

    goto :goto_3

    :cond_4
    move v10, v7

    .line 562
    .local v10, "purple":Z
    :goto_3
    if-nez v5, :cond_6

    if-nez v8, :cond_6

    if-nez v9, :cond_6

    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    move v6, v7

    :cond_6
    :goto_4
    return v6
.end method

.method private static isDarkLabelRegion(IIIILjava/util/function/IntBinaryOperator;)Z
    .locals 16
    .param p0, "centerX"    # I
    .param p1, "centerY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 383
    move/from16 v0, p2

    move/from16 v1, p3

    int-to-float v2, v0

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 384
    .local v2, "radiusX":I
    int-to-float v4, v1

    const v5, 0x3ccccccd    # 0.025f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 385
    .local v3, "radiusY":I
    const/4 v4, 0x0

    .line 386
    .local v4, "dark":I
    const/4 v5, 0x0

    .line 387
    .local v5, "sampled":I
    sub-int v6, p1, v3

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 388
    .local v6, "y":I
    :goto_0
    add-int/lit8 v8, v1, -0x1

    add-int v9, p1, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-gt v6, v8, :cond_2

    .line 390
    sub-int v8, p0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 391
    .local v8, "x":I
    :goto_1
    add-int/lit8 v9, v0, -0x1

    add-int v10, p0, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-gt v8, v9, :cond_1

    .line 393
    move-object/from16 v9, p4

    invoke-interface {v9, v8, v6}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v10

    .line 394
    .local v10, "color":I
    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    .line 395
    .local v11, "red":I
    shr-int/lit8 v12, v10, 0x8

    and-int/lit16 v12, v12, 0xff

    .line 396
    .local v12, "green":I
    and-int/lit16 v13, v10, 0xff

    .line 397
    .local v13, "blue":I
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/16 v15, 0x55

    if-gt v14, v15, :cond_0

    .line 398
    add-int/lit8 v4, v4, 0x1

    .line 400
    :cond_0
    nop

    .end local v10    # "color":I
    .end local v11    # "red":I
    .end local v12    # "green":I
    .end local v13    # "blue":I
    add-int/lit8 v5, v5, 0x1

    .line 392
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 391
    :cond_1
    move-object/from16 v9, p4

    .line 389
    .end local v8    # "x":I
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 388
    :cond_2
    move-object/from16 v9, p4

    .line 403
    .end local v6    # "y":I
    if-lez v5, :cond_3

    int-to-float v6, v4

    int-to-float v8, v5

    const v10, 0x3e6147ae    # 0.22f

    mul-float/2addr v8, v10

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_3

    const/4 v7, 0x1

    :cond_3
    return v7
.end method

.method private static isFlowerStemColor(I)Z
    .locals 7
    .param p0, "color"    # I

    .line 533
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 534
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 535
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 536
    .local v2, "blue":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 537
    .local v3, "maximum":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 538
    .local v4, "minimum":I
    const/16 v5, 0x32

    if-lt v0, v5, :cond_0

    const/16 v5, 0xa0

    if-gt v0, v5, :cond_0

    const/16 v5, 0x2d

    if-lt v1, v5, :cond_0

    const/16 v5, 0x96

    if-gt v1, v5, :cond_0

    const/16 v5, 0x87

    if-gt v2, v5, :cond_0

    add-int/lit8 v5, v1, -0x1a

    if-lt v0, v5, :cond_0

    add-int/lit8 v5, v2, -0xf

    if-lt v0, v5, :cond_0

    sub-int v5, v3, v4

    const/4 v6, 0x6

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method private static isLeafColor(I)Z
    .locals 5
    .param p0, "color"    # I

    .line 514
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 515
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 516
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 517
    .local v2, "blue":I
    const/16 v3, 0x6e

    if-lt v0, v3, :cond_0

    const/16 v3, 0xe1

    if-gt v0, v3, :cond_0

    const/16 v3, 0x91

    if-lt v1, v3, :cond_0

    add-int/lit8 v4, v0, -0xc

    if-lt v1, v4, :cond_0

    add-int/lit8 v4, v2, 0x2d

    if-lt v1, v4, :cond_0

    if-gt v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isMushroomClusterColor(I)Z
    .locals 11
    .param p0, "color"    # I

    .line 501
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 502
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 503
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 504
    .local v2, "blue":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 505
    .local v3, "max":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 506
    .local v4, "min":I
    const/16 v5, 0xd2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v4, v5, :cond_0

    sub-int v5, v3, v4

    const/16 v8, 0x28

    if-ge v5, v8, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 507
    .local v5, "white":Z
    :goto_0
    const/16 v8, 0xa0

    if-lt v2, v8, :cond_1

    add-int/lit8 v8, v0, 0x19

    if-lt v2, v8, :cond_1

    if-lt v2, v1, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    .line 508
    .local v8, "cyan":Z
    :goto_1
    const/16 v9, 0xb4

    if-lt v0, v9, :cond_2

    const/16 v10, 0x87

    if-lt v1, v10, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v10, v10, -0x19

    if-gt v2, v10, :cond_2

    move v10, v6

    goto :goto_2

    :cond_2
    move v10, v7

    .line 509
    .local v10, "yellow":Z
    :goto_2
    if-lt v0, v9, :cond_3

    add-int/lit8 v9, v1, 0x26

    if-lt v0, v9, :cond_3

    if-lt v2, v1, :cond_3

    move v9, v6

    goto :goto_3

    :cond_3
    move v9, v7

    .line 510
    .local v9, "pink":Z
    :goto_3
    if-nez v5, :cond_5

    if-nez v8, :cond_5

    if-nez v10, :cond_5

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    move v6, v7

    :cond_5
    :goto_4
    return v6
.end method

.method private static isStemGreen(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 526
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 527
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 528
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 529
    .local v2, "blue":I
    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    add-int/lit8 v3, v0, 0x14

    if-lt v1, v3, :cond_0

    add-int/lit8 v3, v2, 0x5

    if-lt v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static synthetic lambda$addDistinct$8(Lcom/pikminx/helper/MapFlowerDetector$Point;ILcom/pikminx/helper/MapFlowerDetector$Point;)Z
    .locals 4
    .param p0, "candidate"    # Lcom/pikminx/helper/MapFlowerDetector$Point;
    .param p1, "distance"    # I
    .param p2, "point"    # Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 570
    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v0

    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v1

    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v2

    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/pikminx/helper/MapSceneDetector;->squaredDistance(IIII)I

    move-result v0

    .line 571
    invoke-static {p1}, Lcom/pikminx/helper/MapSceneDetector;->square(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 570
    :goto_0
    return v0
.end method

.method static synthetic lambda$detect$0(Lcom/pikminx/helper/MapFlowerDetector$Point;Lcom/pikminx/helper/MapFlowerDetector$Point;)Z
    .locals 2
    .param p0, "mushroom"    # Lcom/pikminx/helper/MapFlowerDetector$Point;
    .param p1, "candidate"    # Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 27
    invoke-virtual {p1}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$detect$1(Lcom/pikminx/helper/MapFlowerDetector$Point;ILcom/pikminx/helper/MapFlowerDetector$Point;)Z
    .locals 3
    .param p0, "mushroom"    # Lcom/pikminx/helper/MapFlowerDetector$Point;
    .param p1, "height"    # I
    .param p2, "candidate"    # Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 28
    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, p1

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$detect$2(Lcom/pikminx/helper/MapFlowerDetector$Point;ILcom/pikminx/helper/MapFlowerDetector$Point;)Z
    .locals 3
    .param p0, "mushroom"    # Lcom/pikminx/helper/MapFlowerDetector$Point;
    .param p1, "width"    # I
    .param p2, "candidate"    # Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 29
    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$detect$3(Lcom/pikminx/helper/MapFlowerDetector$Point;IILcom/pikminx/helper/MapFlowerDetector$Point;)Z
    .locals 5
    .param p0, "point"    # Lcom/pikminx/helper/MapFlowerDetector$Point;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "mushroom"    # Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 42
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v0

    invoke-virtual {p3}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 43
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v1

    invoke-virtual {p3}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 44
    .local v1, "dy":I
    int-to-float v2, v0

    int-to-float v3, p1

    const v4, 0x3dae147b    # 0.085f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    int-to-float v2, v1

    int-to-float v3, p2

    const v4, 0x3d851eb8    # 0.065f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic lambda$detect$4(Lcom/pikminx/helper/MapFlowerDetector$Point;ILcom/pikminx/helper/MapFlowerDetector$Point;)Z
    .locals 4
    .param p0, "point"    # Lcom/pikminx/helper/MapFlowerDetector$Point;
    .param p1, "width"    # I
    .param p2, "stemmed"    # Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 47
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v1

    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v2

    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/pikminx/helper/MapSceneDetector;->squaredDistance(IIII)I

    move-result v0

    int-to-float v1, p1

    const v2, 0x3d75c28f    # 0.06f

    mul-float/2addr v1, v2

    .line 48
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Lcom/pikminx/helper/MapSceneDetector;->square(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0
.end method

.method static synthetic lambda$detect$5(Lcom/pikminx/helper/MapFlowerDetector$Point;IILcom/pikminx/helper/MapFlowerDetector$Point;)Z
    .locals 3
    .param p0, "leaf"    # Lcom/pikminx/helper/MapFlowerDetector$Point;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "mushroom"    # Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 75
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v0

    invoke-virtual {p3}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    const v2, 0x3d6147ae    # 0.055f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v0

    invoke-virtual {p3}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0
.end method

.method static synthetic lambda$detect$6(Lcom/pikminx/helper/MapFlowerDetector$Point;ILcom/pikminx/helper/MapFlowerDetector$Point;)Z
    .locals 4
    .param p0, "leaf"    # Lcom/pikminx/helper/MapFlowerDetector$Point;
    .param p1, "width"    # I
    .param p2, "head"    # Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 78
    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Point;->area()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 79
    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Point;->area()I

    move-result v0

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v1

    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v2

    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/pikminx/helper/MapSceneDetector;->squaredDistance(IIII)I

    move-result v0

    int-to-float v1, p1

    const v2, 0x3d6147ae    # 0.055f

    mul-float/2addr v1, v2

    .line 81
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Lcom/pikminx/helper/MapSceneDetector;->square(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0
.end method

.method static synthetic lambda$detect$7(Lcom/pikminx/helper/MapFlowerDetector$Point;IILcom/pikminx/helper/MapFlowerDetector$Point;)Z
    .locals 3
    .param p0, "stemmed"    # Lcom/pikminx/helper/MapFlowerDetector$Point;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "mushroom"    # Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 103
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v0

    invoke-virtual {p3}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    const v2, 0x3d75c28f    # 0.06f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v0

    invoke-virtual {p3}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0
.end method

.method private static square(I)I
    .locals 1
    .param p0, "value"    # I

    .line 584
    mul-int v0, p0, p0

    return v0
.end method

.method private static squaredDistance(IIII)I
    .locals 4
    .param p0, "x1"    # I
    .param p1, "y1"    # I
    .param p2, "x2"    # I
    .param p3, "y2"    # I

    .line 578
    sub-int v0, p0, p2

    .line 579
    .local v0, "dx":I
    sub-int v1, p1, p3

    .line 580
    .local v1, "dy":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method
