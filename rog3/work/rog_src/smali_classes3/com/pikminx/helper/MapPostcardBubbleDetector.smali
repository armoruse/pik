.class final Lcom/pikminx/helper/MapPostcardBubbleDetector;
.super Ljava/lang/Object;
.source "MapPostcardBubbleDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;,
        Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static brightForegroundStats(IIIIILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;
    .locals 16
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "step"    # I
    .param p5, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 148
    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 149
    .local v2, "sampled":I
    const/4 v3, 0x0

    .line 150
    .local v3, "bright":I
    move/from16 v4, p2

    .line 151
    .local v4, "minBrightX":I
    move/from16 v5, p0

    .line 152
    .local v5, "maxBrightX":I
    move/from16 v6, p3

    .line 153
    .local v6, "minBrightY":I
    move/from16 v7, p1

    .line 154
    .local v7, "maxBrightY":I
    move/from16 v8, p1

    .local v8, "y":I
    :goto_0
    if-ge v8, v1, :cond_2

    .line 155
    move/from16 v9, p0

    .local v9, "x":I
    :goto_1
    if-ge v9, v0, :cond_1

    .line 156
    move-object/from16 v10, p5

    invoke-interface {v10, v9, v8}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v11

    .line 157
    .local v11, "color":I
    ushr-int/lit8 v12, v11, 0x10

    and-int/lit16 v12, v12, 0xff

    .line 158
    .local v12, "red":I
    ushr-int/lit8 v13, v11, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 159
    .local v13, "green":I
    and-int/lit16 v14, v11, 0xff

    .line 160
    .local v14, "blue":I
    add-int/lit8 v2, v2, 0x1

    .line 161
    const/16 v15, 0xcd

    if-lt v12, v15, :cond_0

    if-lt v13, v15, :cond_0

    if-lt v14, v15, :cond_0

    .line 162
    add-int/lit8 v3, v3, 0x1

    .line 163
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 164
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 165
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 166
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 155
    .end local v11    # "color":I
    .end local v12    # "red":I
    .end local v13    # "green":I
    .end local v14    # "blue":I
    :cond_0
    add-int v9, v9, p4

    goto :goto_1

    :cond_1
    move-object/from16 v10, p5

    .line 154
    .end local v9    # "x":I
    add-int v8, v8, p4

    goto :goto_0

    :cond_2
    move-object/from16 v10, p5

    .line 170
    .end local v8    # "y":I
    const/4 v8, 0x0

    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    goto :goto_2

    .line 173
    :cond_3
    sub-int v9, v5, v4

    add-int v9, v9, p4

    int-to-float v9, v9

    sub-int v11, v0, p0

    .line 174
    const/4 v12, 0x1

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    .line 175
    .local v9, "widthCoverage":F
    sub-int v11, v7, v6

    add-int v11, v11, p4

    int-to-float v11, v11

    sub-int v13, v1, p1

    .line 176
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 177
    .local v11, "heightCoverage":F
    new-instance v12, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;

    int-to-float v13, v3

    int-to-float v14, v2

    div-float/2addr v13, v14

    invoke-direct {v12, v13, v9, v11, v8}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;-><init>(FFFLcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats-IA;)V

    return-object v12

    .line 171
    .end local v9    # "widthCoverage":F
    .end local v11    # "heightCoverage":F
    :cond_4
    :goto_2
    new-instance v9, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;

    const/4 v11, 0x0

    invoke-direct {v9, v11, v11, v11, v8}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;-><init>(FFFLcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats-IA;)V

    return-object v9
.end method

.method private static enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dark"    # [Z
    .param p5, "visited"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[Z[Z",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p6, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    if-ltz p0, :cond_2

    if-ge p0, p2, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, p3, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    mul-int v0, p1, p2

    add-int/2addr v0, p0

    .line 123
    .local v0, "index":I
    aget-boolean v1, p4, v0

    if-eqz v1, :cond_1

    aget-boolean v1, p5, v0

    if-nez v1, :cond_1

    .line 124
    const/4 v1, 0x1

    aput-boolean v1, p5, v0

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    return-void

    .line 120
    .end local v0    # "index":I
    :cond_2
    :goto_0
    return-void
.end method

.method static find(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    .locals 42
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 20
    move/from16 v0, p0

    move/from16 v1, p1

    if-lez v0, :cond_c

    if-gtz v1, :cond_0

    goto/16 :goto_6

    .line 23
    :cond_0
    int-to-float v2, v0

    const/high16 v3, 0x43580000    # 216.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 24
    .local v2, "step":I
    int-to-float v4, v0

    const v5, 0x3d23d70a    # 0.04f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 25
    .local v10, "left":I
    int-to-float v4, v0

    const v5, 0x3f75c28f    # 0.96f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 26
    .local v11, "right":I
    int-to-float v4, v1

    const v5, 0x3e0f5c29    # 0.14f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 27
    .local v12, "top":I
    int-to-float v4, v1

    const v5, 0x3f47ae14    # 0.78f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 28
    .local v13, "bottom":I
    sub-int v4, v11, v10

    add-int/2addr v4, v2

    const/4 v14, 0x1

    sub-int/2addr v4, v14

    div-int/2addr v4, v2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 29
    .local v9, "gridWidth":I
    sub-int v4, v13, v12

    add-int/2addr v4, v2

    sub-int/2addr v4, v14

    div-int/2addr v4, v2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 30
    .local v8, "gridHeight":I
    mul-int v4, v9, v8

    new-array v7, v4, [Z

    .line 31
    .local v7, "dark":[Z
    array-length v4, v7

    new-array v6, v4, [Z

    .line 32
    .local v6, "visited":[Z
    const/4 v4, 0x0

    .local v4, "gy":I
    :goto_0
    if-ge v4, v8, :cond_2

    .line 33
    add-int/lit8 v5, v1, -0x1

    mul-int v15, v4, v2

    add-int/2addr v15, v12

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 34
    .local v5, "y":I
    const/4 v15, 0x0

    .local v15, "gx":I
    :goto_1
    if-ge v15, v9, :cond_1

    .line 35
    add-int/lit8 v3, v0, -0x1

    mul-int v16, v15, v2

    add-int v14, v10, v16

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 36
    .local v3, "x":I
    mul-int v14, v4, v9

    add-int/2addr v14, v15

    move/from16 v24, v11

    move-object/from16 v11, p2

    .end local v11    # "right":I
    .local v24, "right":I
    invoke-interface {v11, v3, v5}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/pikminx/helper/MapPostcardBubbleDetector;->isDarkNeutral(I)Z

    move-result v16

    aput-boolean v16, v7, v14

    .line 34
    .end local v3    # "x":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v11, v24

    const/4 v3, 0x2

    const/4 v14, 0x1

    goto :goto_1

    .end local v24    # "right":I
    .restart local v11    # "right":I
    :cond_1
    move/from16 v24, v11

    move-object/from16 v11, p2

    .line 32
    .end local v5    # "y":I
    .end local v11    # "right":I
    .end local v15    # "gx":I
    .restart local v24    # "right":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v11, v24

    const/4 v3, 0x2

    const/4 v14, 0x1

    goto :goto_0

    .end local v24    # "right":I
    .restart local v11    # "right":I
    :cond_2
    move/from16 v24, v11

    move-object/from16 v11, p2

    .line 40
    .end local v4    # "gy":I
    .end local v11    # "right":I
    .restart local v24    # "right":I
    const/4 v3, 0x0

    .line 41
    .local v3, "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    move-object v14, v4

    .line 42
    .local v14, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    move v5, v4

    .local v5, "index":I
    :goto_2
    array-length v4, v7

    if-ge v5, v4, :cond_b

    .line 43
    aget-boolean v4, v7, v5

    if-eqz v4, :cond_9

    aget-boolean v4, v6, v5

    if-eqz v4, :cond_3

    .line 44
    move-object/from16 v26, v3

    move/from16 v28, v5

    move-object/from16 v16, v6

    move-object/from16 v20, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v29, v12

    move/from16 v25, v13

    move-object/from16 v18, v14

    const/4 v14, 0x1

    goto/16 :goto_4

    .line 46
    :cond_3
    const/4 v4, 0x1

    aput-boolean v4, v6, v5

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 48
    const/4 v4, 0x0

    .line 49
    .local v4, "count":I
    move v15, v9

    .line 50
    .local v15, "minX":I
    const/16 v16, 0x0

    .line 51
    .local v16, "maxX":I
    move/from16 v17, v8

    .line 52
    .local v17, "minY":I
    const/16 v18, 0x0

    move-object/from16 v26, v3

    move/from16 v25, v13

    move/from16 v11, v16

    move/from16 v13, v17

    move/from16 v3, v18

    move/from16 v41, v15

    move v15, v4

    move/from16 v4, v41

    .line 53
    .end local v16    # "maxX":I
    .end local v17    # "minY":I
    .local v3, "maxY":I
    .local v4, "minX":I
    .local v11, "maxX":I
    .local v13, "minY":I
    .local v15, "count":I
    .local v25, "bottom":I
    .local v26, "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    .line 54
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 55
    .local v27, "current":I
    move/from16 v28, v5

    .end local v5    # "index":I
    .local v28, "index":I
    rem-int v5, v27, v9

    .line 56
    .local v5, "gx":I
    move/from16 v29, v12

    .end local v12    # "top":I
    .local v29, "top":I
    div-int v12, v27, v9

    .line 57
    .local v12, "gy":I
    add-int/lit8 v30, v15, 0x1

    .line 58
    .end local v15    # "count":I
    .local v30, "count":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 59
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 60
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 61
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 62
    add-int/lit8 v15, v5, -0x1

    move/from16 v16, v12

    move/from16 v17, v9

    move/from16 v18, v8

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    move-object/from16 v21, v14

    invoke-static/range {v15 .. v21}, Lcom/pikminx/helper/MapPostcardBubbleDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 63
    add-int/lit8 v15, v5, 0x1

    invoke-static/range {v15 .. v21}, Lcom/pikminx/helper/MapPostcardBubbleDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 64
    add-int/lit8 v16, v12, -0x1

    move v15, v5

    invoke-static/range {v15 .. v21}, Lcom/pikminx/helper/MapPostcardBubbleDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 65
    add-int/lit8 v16, v12, 0x1

    invoke-static/range {v15 .. v21}, Lcom/pikminx/helper/MapPostcardBubbleDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 66
    .end local v5    # "gx":I
    .end local v12    # "gy":I
    .end local v27    # "current":I
    move/from16 v5, v28

    move/from16 v12, v29

    move/from16 v15, v30

    goto :goto_3

    .line 68
    .end local v28    # "index":I
    .end local v29    # "top":I
    .end local v30    # "count":I
    .local v5, "index":I
    .local v12, "top":I
    .restart local v15    # "count":I
    :cond_4
    move/from16 v28, v5

    move/from16 v29, v12

    .end local v5    # "index":I
    .end local v12    # "top":I
    .restart local v28    # "index":I
    .restart local v29    # "top":I
    sub-int v5, v11, v4

    const/4 v12, 0x1

    add-int/2addr v5, v12

    mul-int/2addr v5, v2

    .line 69
    .local v5, "componentWidth":I
    sub-int v16, v3, v13

    add-int/lit8 v16, v16, 0x1

    mul-int v12, v16, v2

    .line 70
    .local v12, "componentHeight":I
    move-object/from16 v16, v6

    .end local v6    # "visited":[Z
    .local v16, "visited":[Z
    int-to-float v6, v15

    sub-int v17, v11, v4

    move-object/from16 v18, v14

    const/4 v14, 0x1

    .end local v14    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .local v18, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    add-int/lit8 v17, v17, 0x1

    sub-int v19, v3, v13

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v20, v7

    .end local v7    # "dark":[Z
    .local v20, "dark":[Z
    mul-int v7, v17, v19

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float v17, v6, v7

    .line 72
    .local v17, "fill":F
    mul-int v6, v15, v2

    mul-int/2addr v6, v2

    int-to-float v6, v6

    mul-int v7, v0, v1

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float v19, v6, v7

    .line 75
    .local v19, "darkAreaRatio":F
    int-to-float v6, v5

    int-to-float v7, v0

    const v21, 0x3f266666    # 0.65f

    mul-float v7, v7, v21

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_8

    int-to-float v6, v12

    int-to-float v7, v1

    const v21, 0x3ccccccd    # 0.025f

    mul-float v7, v7, v21

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_8

    int-to-float v6, v12

    int-to-float v7, v1

    const v21, 0x3df5c28f    # 0.12f

    mul-float v7, v7, v21

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_8

    const v6, 0x3ed70a3d    # 0.42f

    cmpg-float v6, v17, v6

    if-ltz v6, :cond_8

    const v6, 0x3b9374bc    # 0.0045f

    cmpg-float v6, v19, v6

    if-ltz v6, :cond_8

    const v6, 0x3d3851ec    # 0.045f

    cmpl-float v6, v19, v6

    if-lez v6, :cond_5

    .line 81
    move/from16 v33, v8

    move/from16 v34, v9

    goto/16 :goto_4

    .line 84
    :cond_5
    mul-int v6, v4, v2

    add-int v21, v10, v6

    .line 85
    .local v21, "pixelLeft":I
    mul-int v6, v13, v2

    add-int v23, v29, v6

    .line 86
    .local v23, "pixelTop":I
    add-int/lit8 v6, v11, 0x1

    mul-int/2addr v6, v2

    add-int/2addr v6, v10

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v27

    .line 87
    .local v27, "pixelRight":I
    add-int/lit8 v6, v3, 0x1

    mul-int/2addr v6, v2

    add-int v6, v29, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 88
    .local v30, "pixelBottom":I
    move/from16 v31, v4

    .end local v4    # "minX":I
    .local v31, "minX":I
    move/from16 v4, v21

    move/from16 v32, v5

    .end local v5    # "componentWidth":I
    .local v32, "componentWidth":I
    move/from16 v5, v23

    move/from16 v6, v27

    move/from16 v7, v30

    move/from16 v33, v8

    .end local v8    # "gridHeight":I
    .local v33, "gridHeight":I
    move v8, v2

    move/from16 v34, v9

    .end local v9    # "gridWidth":I
    .local v34, "gridWidth":I
    move-object/from16 v9, p2

    invoke-static/range {v4 .. v9}, Lcom/pikminx/helper/MapPostcardBubbleDetector;->brightForegroundStats(IIIIILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;

    move-result-object v4

    .line 90
    .local v4, "foreground":Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;
    invoke-virtual {v4}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->ratio()F

    move-result v5

    const v6, 0x3c449ba6    # 0.012f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_a

    .line 91
    invoke-virtual {v4}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->widthCoverage()F

    move-result v5

    const v6, 0x3eb33333    # 0.35f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_a

    .line 92
    invoke-virtual {v4}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->heightCoverage()F

    move-result v5

    const/high16 v6, 0x3e800000    # 0.25f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 93
    goto/16 :goto_4

    .line 95
    :cond_6
    add-int v5, v21, v27

    const/4 v6, 0x2

    div-int/2addr v5, v6

    .line 96
    .local v5, "centerX":I
    add-int v7, v23, v30

    div-int/2addr v7, v6

    .line 97
    .local v7, "centerY":I
    int-to-float v8, v5

    int-to-float v9, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v9, v9, v22

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v0

    div-float/2addr v8, v9

    int-to-float v9, v7

    int-to-float v6, v1

    const v35, 0x3edc28f6    # 0.43f

    mul-float v6, v6, v35

    sub-float/2addr v9, v6

    .line 98
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v9, v1

    div-float/2addr v6, v9

    add-float/2addr v8, v6

    .line 99
    .local v8, "centerPenalty":F
    nop

    .line 100
    invoke-virtual {v4}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->ratio()F

    move-result v6

    mul-float v6, v6, v22

    const v9, 0x3e3851ec    # 0.18f

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v6, v17, v6

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v8

    sub-float/2addr v6, v9

    .line 102
    .local v6, "confidence":F
    new-instance v9, Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;

    sub-int v38, v27, v21

    sub-int v39, v30, v23

    move-object/from16 v35, v9

    move/from16 v36, v5

    move/from16 v37, v7

    move/from16 v40, v6

    invoke-direct/range {v35 .. v40}, Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;-><init>(IIIIF)V

    .line 104
    .local v9, "candidate":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    if-eqz v26, :cond_7

    invoke-virtual {v9}, Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;->confidence()F

    move-result v22

    invoke-virtual/range {v26 .. v26}, Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;->confidence()F

    move-result v35

    cmpl-float v22, v22, v35

    if-lez v22, :cond_a

    .line 105
    :cond_7
    move-object/from16 v22, v9

    move-object/from16 v3, v22

    .end local v26    # "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    .local v22, "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    goto :goto_5

    .line 75
    .end local v6    # "confidence":F
    .end local v7    # "centerY":I
    .end local v21    # "pixelLeft":I
    .end local v22    # "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    .end local v23    # "pixelTop":I
    .end local v27    # "pixelRight":I
    .end local v30    # "pixelBottom":I
    .end local v31    # "minX":I
    .end local v32    # "componentWidth":I
    .end local v33    # "gridHeight":I
    .end local v34    # "gridWidth":I
    .local v4, "minX":I
    .local v5, "componentWidth":I
    .local v8, "gridHeight":I
    .local v9, "gridWidth":I
    .restart local v26    # "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    :cond_8
    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v8

    move/from16 v34, v9

    .end local v4    # "minX":I
    .end local v5    # "componentWidth":I
    .end local v8    # "gridHeight":I
    .end local v9    # "gridWidth":I
    .restart local v31    # "minX":I
    .restart local v32    # "componentWidth":I
    .restart local v33    # "gridHeight":I
    .restart local v34    # "gridWidth":I
    goto :goto_4

    .line 43
    .end local v11    # "maxX":I
    .end local v15    # "count":I
    .end local v16    # "visited":[Z
    .end local v17    # "fill":F
    .end local v18    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v19    # "darkAreaRatio":F
    .end local v20    # "dark":[Z
    .end local v25    # "bottom":I
    .end local v26    # "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    .end local v28    # "index":I
    .end local v29    # "top":I
    .end local v31    # "minX":I
    .end local v32    # "componentWidth":I
    .end local v33    # "gridHeight":I
    .end local v34    # "gridWidth":I
    .local v3, "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    .local v5, "index":I
    .local v6, "visited":[Z
    .local v7, "dark":[Z
    .restart local v8    # "gridHeight":I
    .restart local v9    # "gridWidth":I
    .local v12, "top":I
    .local v13, "bottom":I
    .restart local v14    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v26, v3

    move/from16 v28, v5

    move-object/from16 v16, v6

    move-object/from16 v20, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v29, v12

    move/from16 v25, v13

    move-object/from16 v18, v14

    const/4 v14, 0x1

    .line 42
    .end local v3    # "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    .end local v5    # "index":I
    .end local v6    # "visited":[Z
    .end local v7    # "dark":[Z
    .end local v8    # "gridHeight":I
    .end local v9    # "gridWidth":I
    .end local v12    # "top":I
    .end local v13    # "bottom":I
    .end local v14    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .restart local v16    # "visited":[Z
    .restart local v18    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .restart local v20    # "dark":[Z
    .restart local v25    # "bottom":I
    .restart local v26    # "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    .restart local v28    # "index":I
    .restart local v29    # "top":I
    .restart local v33    # "gridHeight":I
    .restart local v34    # "gridWidth":I
    :cond_a
    :goto_4
    move-object/from16 v3, v26

    .end local v26    # "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    .restart local v3    # "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    :goto_5
    add-int/lit8 v5, v28, 0x1

    move-object/from16 v11, p2

    move-object/from16 v6, v16

    move-object/from16 v14, v18

    move-object/from16 v7, v20

    move/from16 v13, v25

    move/from16 v12, v29

    move/from16 v8, v33

    move/from16 v9, v34

    .end local v28    # "index":I
    .restart local v5    # "index":I
    goto/16 :goto_2

    .end local v16    # "visited":[Z
    .end local v18    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v20    # "dark":[Z
    .end local v25    # "bottom":I
    .end local v29    # "top":I
    .end local v33    # "gridHeight":I
    .end local v34    # "gridWidth":I
    .restart local v6    # "visited":[Z
    .restart local v7    # "dark":[Z
    .restart local v8    # "gridHeight":I
    .restart local v9    # "gridWidth":I
    .restart local v12    # "top":I
    .restart local v13    # "bottom":I
    .restart local v14    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    :cond_b
    move-object/from16 v26, v3

    .line 108
    .end local v3    # "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    .end local v5    # "index":I
    .restart local v26    # "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    return-object v26

    .line 21
    .end local v2    # "step":I
    .end local v6    # "visited":[Z
    .end local v7    # "dark":[Z
    .end local v8    # "gridHeight":I
    .end local v9    # "gridWidth":I
    .end local v10    # "left":I
    .end local v12    # "top":I
    .end local v13    # "bottom":I
    .end local v14    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v24    # "right":I
    .end local v26    # "best":Lcom/pikminx/helper/MapPostcardBubbleDetector$Target;
    :cond_c
    :goto_6
    const/4 v2, 0x0

    return-object v2
.end method

.method private static isDarkNeutral(I)Z
    .locals 6
    .param p0, "color"    # I

    .line 130
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 131
    .local v0, "red":I
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 132
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 133
    .local v2, "blue":I
    mul-int/lit16 v3, v0, 0x12b

    mul-int/lit16 v4, v1, 0x24b

    add-int/2addr v3, v4

    mul-int/lit8 v4, v2, 0x72

    add-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x3e8

    .line 134
    .local v3, "luminance":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 135
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v4, v5

    .line 136
    .local v4, "chroma":I
    const/16 v5, 0x76

    if-gt v3, v5, :cond_0

    const/16 v5, 0x37

    if-gt v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method
