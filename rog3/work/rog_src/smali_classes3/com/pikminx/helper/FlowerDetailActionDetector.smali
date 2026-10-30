.class final Lcom/pikminx/helper/FlowerDetailActionDetector;
.super Ljava/lang/Object;
.source "FlowerDetailActionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static find(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    .locals 25
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 12
    move/from16 v0, p0

    move/from16 v1, p1

    if-lez v0, :cond_8

    if-lez v1, :cond_8

    invoke-static/range {p0 .. p2}, Lcom/pikminx/helper/FlowerDetailActionDetector;->hasLightDetailSheet(IILjava/util/function/IntBinaryOperator;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v8, p2

    const/4 v3, 0x0

    goto/16 :goto_5

    .line 18
    :cond_0
    int-to-float v3, v0

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 19
    .local v3, "left":I
    int-to-float v4, v0

    const v5, 0x3f6147ae    # 0.88f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 20
    .local v4, "right":I
    int-to-float v5, v1

    const v6, 0x3f23d70a    # 0.64f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 21
    .local v5, "top":I
    int-to-float v6, v1

    const v7, 0x3f428f5c    # 0.76f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 22
    .local v6, "bottom":I
    int-to-float v7, v0

    const/high16 v8, 0x43d80000    # 432.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 23
    .local v7, "step":I
    const/4 v9, 0x0

    .line 24
    .local v9, "sampled":I
    const/4 v10, 0x0

    .line 25
    .local v10, "teal":I
    move v11, v4

    .line 26
    .local v11, "minX":I
    move v12, v3

    .line 27
    .local v12, "maxX":I
    move v13, v6

    .line 28
    .local v13, "minY":I
    move v14, v5

    .line 29
    .local v14, "maxY":I
    move v15, v5

    .local v15, "y":I
    :goto_0
    if-ge v15, v6, :cond_3

    .line 30
    move/from16 v16, v3

    move/from16 v2, v16

    .local v2, "x":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 31
    add-int/lit8 v9, v9, 0x1

    .line 32
    move-object/from16 v8, p2

    invoke-interface {v8, v2, v15}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/pikminx/helper/FlowerDetailActionDetector;->isTealAccent(I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 33
    goto :goto_2

    .line 35
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 36
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 37
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 38
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 39
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 30
    :goto_2
    add-int/2addr v2, v7

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v8, p2

    .line 29
    .end local v2    # "x":I
    add-int/2addr v15, v7

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v8, p2

    .line 42
    .end local v15    # "y":I
    if-eqz v9, :cond_7

    mul-int/lit16 v2, v10, 0x3e8

    mul-int/lit8 v15, v9, 0x8

    if-ge v2, v15, :cond_4

    move/from16 v24, v3

    move/from16 v17, v4

    const/4 v3, 0x0

    goto/16 :goto_4

    .line 46
    :cond_4
    sub-int v2, v12, v11

    add-int/2addr v2, v7

    .line 47
    .local v2, "controlWidth":I
    sub-int v15, v14, v13

    add-int/2addr v15, v7

    .line 48
    .local v15, "controlHeight":I
    int-to-float v1, v2

    move/from16 v24, v3

    const/4 v3, 0x1

    .end local v3    # "left":I
    .local v24, "left":I
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 52
    .local v1, "aspect":F
    int-to-float v3, v2

    move/from16 v17, v4

    .end local v4    # "right":I
    .local v17, "right":I
    int-to-float v4, v0

    const v18, 0x3e8f5c29    # 0.28f

    mul-float v4, v4, v18

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_6

    int-to-float v3, v2

    int-to-float v4, v0

    const/high16 v18, 0x3f400000    # 0.75f

    mul-float v4, v4, v18

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_6

    int-to-float v3, v15

    int-to-float v4, v0

    const v18, 0x3d6147ae    # 0.055f

    mul-float v4, v4, v18

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_6

    int-to-float v3, v15

    int-to-float v4, v0

    const v18, 0x3eae147b    # 0.34f

    mul-float v4, v4, v18

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_6

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_6

    const/high16 v3, 0x41180000    # 9.5f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    goto :goto_3

    .line 60
    :cond_5
    int-to-float v3, v10

    int-to-float v4, v9

    div-float/2addr v3, v4

    .line 61
    .local v3, "confidence":F
    new-instance v4, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;

    add-int v16, v11, v12

    add-int v16, v16, v7

    div-int/lit8 v19, v16, 0x2

    add-int v16, v13, v14

    add-int v16, v16, v7

    div-int/lit8 v20, v16, 0x2

    move-object/from16 v18, v4

    move/from16 v21, v2

    move/from16 v22, v15

    move/from16 v23, v3

    invoke-direct/range {v18 .. v23}, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;-><init>(IIIIF)V

    return-object v4

    .line 58
    .end local v3    # "confidence":F
    :cond_6
    :goto_3
    const/4 v3, 0x0

    return-object v3

    .line 42
    .end local v1    # "aspect":F
    .end local v2    # "controlWidth":I
    .end local v15    # "controlHeight":I
    .end local v17    # "right":I
    .end local v24    # "left":I
    .local v3, "left":I
    .restart local v4    # "right":I
    :cond_7
    move/from16 v24, v3

    move/from16 v17, v4

    const/4 v3, 0x0

    .line 43
    .end local v3    # "left":I
    .end local v4    # "right":I
    .restart local v17    # "right":I
    .restart local v24    # "left":I
    :goto_4
    return-object v3

    .line 12
    .end local v5    # "top":I
    .end local v6    # "bottom":I
    .end local v7    # "step":I
    .end local v9    # "sampled":I
    .end local v10    # "teal":I
    .end local v11    # "minX":I
    .end local v12    # "maxX":I
    .end local v13    # "minY":I
    .end local v14    # "maxY":I
    .end local v17    # "right":I
    .end local v24    # "left":I
    :cond_8
    move-object/from16 v8, p2

    const/4 v3, 0x0

    .line 13
    :goto_5
    return-object v3
.end method

.method static findConnected(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    .locals 40
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 71
    move/from16 v7, p0

    move/from16 v8, p1

    if-lez v7, :cond_12

    if-lez v8, :cond_12

    invoke-static/range {p0 .. p2}, Lcom/pikminx/helper/FlowerDetailActionDetector;->hasLightDetailSheet(IILjava/util/function/IntBinaryOperator;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_a

    .line 75
    :cond_0
    int-to-float v1, v7

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 76
    .local v9, "left":I
    int-to-float v1, v7

    const v2, 0x3f6147ae    # 0.88f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 77
    .local v10, "right":I
    int-to-float v1, v8

    const v2, 0x3f23d70a    # 0.64f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 78
    .local v11, "top":I
    int-to-float v1, v8

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 79
    .local v12, "bottom":I
    int-to-float v1, v7

    const/high16 v2, 0x43d80000    # 432.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 80
    .local v13, "step":I
    sub-int v1, v10, v9

    add-int/2addr v1, v13

    sub-int/2addr v1, v2

    div-int/2addr v1, v13

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 81
    .local v14, "columns":I
    sub-int v1, v12, v11

    add-int/2addr v1, v13

    sub-int/2addr v1, v2

    div-int/2addr v1, v13

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 82
    .local v15, "rows":I
    mul-int v1, v14, v15

    new-array v6, v1, [Z

    .line 83
    .local v6, "teal":[Z
    const/4 v1, 0x0

    .line 84
    .local v1, "tealCount":I
    const/4 v3, 0x0

    move v5, v1

    .end local v1    # "tealCount":I
    .local v3, "row":I
    .local v5, "tealCount":I
    :goto_0
    if-ge v3, v15, :cond_3

    .line 85
    const/4 v1, 0x0

    .local v1, "column":I
    :goto_1
    if-ge v1, v14, :cond_2

    .line 86
    mul-int v4, v3, v14

    add-int/2addr v4, v1

    .line 87
    .local v4, "index":I
    mul-int v16, v1, v13

    add-int v0, v9, v16

    mul-int v16, v3, v13

    add-int v2, v11, v16

    move-object/from16 v8, p2

    invoke-interface {v8, v0, v2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/pikminx/helper/FlowerDetailActionDetector;->isTealAccent(I)Z

    move-result v0

    aput-boolean v0, v6, v4

    .line 89
    aget-boolean v0, v6, v4

    if-eqz v0, :cond_1

    .line 90
    add-int/lit8 v5, v5, 0x1

    .line 85
    .end local v4    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move/from16 v8, p1

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v8, p2

    .line 84
    .end local v1    # "column":I
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, p1

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v8, p2

    .line 94
    .end local v3    # "row":I
    array-length v0, v6

    if-eqz v0, :cond_11

    mul-int/lit16 v0, v5, 0x3e8

    array-length v1, v6

    mul-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_4

    move/from16 v25, v9

    move/from16 v20, v10

    move/from16 v22, v11

    move/from16 v21, v12

    move v11, v5

    move-object v12, v6

    goto/16 :goto_9

    .line 98
    :cond_4
    array-length v0, v6

    new-array v4, v0, [Z

    .line 99
    .local v4, "visited":[Z
    array-length v0, v6

    new-array v3, v0, [I

    .line 100
    .local v3, "queue":[I
    const/4 v0, 0x0

    .line 101
    .local v0, "best":Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    const/4 v1, 0x0

    .line 102
    .local v1, "bestPixels":I
    const/4 v2, 0x0

    move-object/from16 v16, v0

    move v0, v2

    move v2, v1

    .end local v1    # "bestPixels":I
    .local v0, "start":I
    .local v2, "bestPixels":I
    .local v16, "best":Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    :goto_2
    array-length v1, v6

    if-ge v0, v1, :cond_f

    .line 103
    aget-boolean v1, v6, v0

    if-eqz v1, :cond_e

    aget-boolean v1, v4, v0

    if-eqz v1, :cond_5

    .line 104
    move/from16 v17, v0

    move-object/from16 v32, v3

    move-object/from16 v23, v4

    move/from16 v19, v5

    move/from16 v25, v9

    move/from16 v20, v10

    move/from16 v22, v11

    move/from16 v21, v12

    goto/16 :goto_7

    .line 106
    :cond_5
    const/4 v1, 0x0

    .line 107
    .local v1, "head":I
    const/16 v17, 0x0

    .line 108
    .local v17, "tail":I
    add-int/lit8 v19, v17, 0x1

    .end local v17    # "tail":I
    .local v19, "tail":I
    aput v0, v3, v17

    .line 109
    const/16 v17, 0x1

    aput-boolean v17, v4, v0

    .line 110
    move/from16 v17, v14

    .line 111
    .local v17, "minColumn":I
    const/16 v20, 0x0

    .line 112
    .local v20, "maxColumn":I
    move/from16 v21, v15

    .line 113
    .local v21, "minRow":I
    const/16 v22, 0x0

    .line 114
    .local v22, "maxRow":I
    const/16 v23, 0x0

    move/from16 v8, v19

    move/from16 v19, v5

    move/from16 v5, v17

    move/from16 v17, v0

    move/from16 v0, v22

    move/from16 v22, v11

    move/from16 v11, v23

    move/from16 v38, v20

    move/from16 v20, v10

    move/from16 v10, v38

    move/from16 v39, v21

    move/from16 v21, v12

    move/from16 v12, v39

    .line 115
    .local v0, "maxRow":I
    .local v5, "minColumn":I
    .local v8, "tail":I
    .local v10, "maxColumn":I
    .local v11, "pixels":I
    .local v12, "minRow":I
    .local v17, "start":I
    .local v19, "tealCount":I
    .local v20, "right":I
    .local v21, "bottom":I
    .local v22, "top":I
    :goto_3
    if-ge v1, v8, :cond_b

    .line 116
    add-int/lit8 v23, v1, 0x1

    .end local v1    # "head":I
    .local v23, "head":I
    aget v1, v3, v1

    .line 117
    .local v1, "index":I
    move/from16 v24, v8

    .end local v8    # "tail":I
    .local v24, "tail":I
    div-int v8, v1, v14

    .line 118
    .local v8, "row":I
    move/from16 v25, v9

    .end local v9    # "left":I
    .local v25, "left":I
    rem-int v9, v1, v14

    .line 119
    .local v9, "column":I
    add-int/lit8 v11, v11, 0x1

    .line 120
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 121
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 122
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 123
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 124
    const/16 v26, -0x1

    move/from16 v38, v26

    move/from16 v26, v0

    move/from16 v0, v38

    .local v0, "rowOffset":I
    .local v26, "maxRow":I
    :goto_4
    move/from16 v27, v1

    const/4 v1, 0x1

    .end local v1    # "index":I
    .local v27, "index":I
    if-gt v0, v1, :cond_a

    .line 125
    const/16 v18, -0x1

    move/from16 v28, v5

    move/from16 v5, v18

    .local v5, "columnOffset":I
    .local v28, "minColumn":I
    :goto_5
    if-gt v5, v1, :cond_9

    .line 126
    add-int v1, v8, v0

    .line 127
    .local v1, "nextRow":I
    move/from16 v29, v8

    .end local v8    # "row":I
    .local v29, "row":I
    add-int v8, v9, v5

    .line 128
    .local v8, "nextColumn":I
    if-nez v0, :cond_6

    if-eqz v5, :cond_8

    :cond_6
    if-ltz v1, :cond_8

    if-ge v1, v15, :cond_8

    if-ltz v8, :cond_8

    if-lt v8, v14, :cond_7

    .line 131
    goto :goto_6

    .line 133
    :cond_7
    mul-int v30, v1, v14

    add-int v30, v30, v8

    .line 134
    .local v30, "next":I
    aget-boolean v31, v6, v30

    if-eqz v31, :cond_8

    aget-boolean v31, v4, v30

    if-nez v31, :cond_8

    .line 135
    const/16 v18, 0x1

    aput-boolean v18, v4, v30

    .line 136
    add-int/lit8 v31, v24, 0x1

    .end local v24    # "tail":I
    .local v31, "tail":I
    aput v30, v3, v24

    move/from16 v24, v31

    .line 125
    .end local v1    # "nextRow":I
    .end local v8    # "nextColumn":I
    .end local v30    # "next":I
    .end local v31    # "tail":I
    .restart local v24    # "tail":I
    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v29

    const/4 v1, 0x1

    goto :goto_5

    .end local v29    # "row":I
    .local v8, "row":I
    :cond_9
    move/from16 v29, v8

    .line 124
    .end local v5    # "columnOffset":I
    .end local v8    # "row":I
    .restart local v29    # "row":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v27

    move/from16 v5, v28

    goto :goto_4

    .end local v28    # "minColumn":I
    .end local v29    # "row":I
    .local v5, "minColumn":I
    .restart local v8    # "row":I
    :cond_a
    move/from16 v28, v5

    move/from16 v29, v8

    .line 140
    .end local v0    # "rowOffset":I
    .end local v5    # "minColumn":I
    .end local v8    # "row":I
    .end local v9    # "column":I
    .end local v27    # "index":I
    .restart local v28    # "minColumn":I
    move/from16 v1, v23

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v0, v26

    goto :goto_3

    .line 142
    .end local v23    # "head":I
    .end local v24    # "tail":I
    .end local v25    # "left":I
    .end local v26    # "maxRow":I
    .end local v28    # "minColumn":I
    .local v0, "maxRow":I
    .local v1, "head":I
    .restart local v5    # "minColumn":I
    .local v8, "tail":I
    .local v9, "left":I
    :cond_b
    move/from16 v24, v8

    move/from16 v25, v9

    .end local v8    # "tail":I
    .end local v9    # "left":I
    .restart local v24    # "tail":I
    .restart local v25    # "left":I
    sub-int v8, v10, v5

    const/4 v9, 0x1

    add-int/2addr v8, v9

    mul-int/2addr v8, v13

    .line 143
    .local v8, "controlWidth":I
    sub-int v18, v0, v12

    add-int/lit8 v18, v18, 0x1

    mul-int v9, v18, v13

    .line 144
    .local v9, "controlHeight":I
    move/from16 v18, v1

    .end local v1    # "head":I
    .local v18, "head":I
    int-to-float v1, v8

    move-object/from16 v32, v3

    move-object/from16 v23, v4

    const/4 v3, 0x1

    .end local v3    # "queue":[I
    .end local v4    # "visited":[Z
    .local v23, "visited":[Z
    .local v32, "queue":[I
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 145
    .local v1, "aspect":F
    int-to-float v4, v8

    int-to-float v3, v7

    const v26, 0x3e8f5c29    # 0.28f

    mul-float v3, v3, v26

    cmpg-float v3, v4, v3

    if-ltz v3, :cond_d

    int-to-float v3, v8

    int-to-float v4, v7

    const/high16 v26, 0x3f400000    # 0.75f

    mul-float v4, v4, v26

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_d

    int-to-float v3, v9

    int-to-float v4, v7

    const v26, 0x3d6147ae    # 0.055f

    mul-float v4, v4, v26

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_d

    int-to-float v3, v9

    int-to-float v4, v7

    const v26, 0x3eae147b    # 0.34f

    mul-float v4, v4, v26

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_d

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_d

    const/high16 v3, 0x41180000    # 9.5f

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_d

    if-gt v11, v2, :cond_c

    .line 152
    goto :goto_7

    .line 154
    :cond_c
    move v2, v11

    .line 155
    mul-int v3, v5, v13

    add-int v3, v25, v3

    .line 156
    .local v3, "minX":I
    mul-int v4, v10, v13

    add-int v4, v25, v4

    .line 157
    .local v4, "maxX":I
    mul-int v26, v12, v13

    add-int v33, v22, v26

    .line 158
    .local v33, "minY":I
    mul-int v26, v0, v13

    add-int v34, v22, v26

    .line 159
    .local v34, "maxY":I
    new-instance v35, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;

    add-int v26, v3, v4

    add-int v26, v26, v13

    div-int/lit8 v27, v26, 0x2

    add-int v26, v33, v34

    add-int v26, v26, v13

    div-int/lit8 v28, v26, 0x2

    move/from16 v36, v0

    .end local v0    # "maxRow":I
    .local v36, "maxRow":I
    int-to-float v0, v11

    move/from16 v37, v1

    .end local v1    # "aspect":F
    .local v37, "aspect":F
    array-length v1, v6

    int-to-float v1, v1

    div-float v31, v0, v1

    move-object/from16 v26, v35

    move/from16 v29, v8

    move/from16 v30, v9

    invoke-direct/range {v26 .. v31}, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;-><init>(IIIIF)V

    move-object/from16 v0, v35

    move-object/from16 v16, v0

    .end local v16    # "best":Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    .local v0, "best":Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    goto :goto_7

    .line 145
    .end local v3    # "minX":I
    .end local v4    # "maxX":I
    .end local v33    # "minY":I
    .end local v34    # "maxY":I
    .end local v36    # "maxRow":I
    .end local v37    # "aspect":F
    .local v0, "maxRow":I
    .restart local v1    # "aspect":F
    .restart local v16    # "best":Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    :cond_d
    move/from16 v36, v0

    move/from16 v37, v1

    .end local v0    # "maxRow":I
    .end local v1    # "aspect":F
    .restart local v36    # "maxRow":I
    .restart local v37    # "aspect":F
    goto :goto_7

    .line 103
    .end local v8    # "controlWidth":I
    .end local v17    # "start":I
    .end local v18    # "head":I
    .end local v19    # "tealCount":I
    .end local v20    # "right":I
    .end local v21    # "bottom":I
    .end local v22    # "top":I
    .end local v23    # "visited":[Z
    .end local v24    # "tail":I
    .end local v25    # "left":I
    .end local v32    # "queue":[I
    .end local v36    # "maxRow":I
    .end local v37    # "aspect":F
    .local v0, "start":I
    .local v3, "queue":[I
    .local v4, "visited":[Z
    .local v5, "tealCount":I
    .local v9, "left":I
    .local v10, "right":I
    .local v11, "top":I
    .local v12, "bottom":I
    :cond_e
    move/from16 v17, v0

    move-object/from16 v32, v3

    move-object/from16 v23, v4

    move/from16 v19, v5

    move/from16 v25, v9

    move/from16 v20, v10

    move/from16 v22, v11

    move/from16 v21, v12

    .line 102
    .end local v0    # "start":I
    .end local v3    # "queue":[I
    .end local v4    # "visited":[Z
    .end local v5    # "tealCount":I
    .end local v9    # "left":I
    .end local v10    # "right":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .restart local v17    # "start":I
    .restart local v19    # "tealCount":I
    .restart local v20    # "right":I
    .restart local v21    # "bottom":I
    .restart local v22    # "top":I
    .restart local v23    # "visited":[Z
    .restart local v25    # "left":I
    .restart local v32    # "queue":[I
    :goto_7
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v8, p2

    move/from16 v5, v19

    move/from16 v10, v20

    move/from16 v12, v21

    move/from16 v11, v22

    move-object/from16 v4, v23

    move/from16 v9, v25

    move-object/from16 v3, v32

    .end local v17    # "start":I
    .restart local v0    # "start":I
    goto/16 :goto_2

    .end local v19    # "tealCount":I
    .end local v20    # "right":I
    .end local v21    # "bottom":I
    .end local v22    # "top":I
    .end local v23    # "visited":[Z
    .end local v25    # "left":I
    .end local v32    # "queue":[I
    .restart local v3    # "queue":[I
    .restart local v4    # "visited":[Z
    .restart local v5    # "tealCount":I
    .restart local v9    # "left":I
    .restart local v10    # "right":I
    .restart local v11    # "top":I
    .restart local v12    # "bottom":I
    :cond_f
    move/from16 v17, v0

    move-object/from16 v32, v3

    move-object/from16 v23, v4

    move/from16 v19, v5

    move/from16 v25, v9

    move/from16 v20, v10

    move/from16 v22, v11

    move/from16 v21, v12

    .line 166
    .end local v0    # "start":I
    .end local v3    # "queue":[I
    .end local v4    # "visited":[Z
    .end local v5    # "tealCount":I
    .end local v9    # "left":I
    .end local v10    # "right":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .restart local v19    # "tealCount":I
    .restart local v20    # "right":I
    .restart local v21    # "bottom":I
    .restart local v22    # "top":I
    .restart local v23    # "visited":[Z
    .restart local v25    # "left":I
    .restart local v32    # "queue":[I
    if-eqz v16, :cond_10

    .line 167
    move v8, v2

    move-object v12, v6

    move-object/from16 v0, v16

    move/from16 v11, v19

    move-object/from16 v10, v23

    move-object/from16 v9, v32

    goto :goto_8

    .line 168
    :cond_10
    move/from16 v0, p0

    move/from16 v1, v25

    move v8, v2

    .end local v2    # "bestPixels":I
    .local v8, "bestPixels":I
    move/from16 v2, v22

    move-object/from16 v9, v32

    .end local v32    # "queue":[I
    .local v9, "queue":[I
    move v3, v13

    move-object/from16 v10, v23

    .end local v23    # "visited":[Z
    .local v10, "visited":[Z
    move v4, v14

    move/from16 v11, v19

    .end local v19    # "tealCount":I
    .local v11, "tealCount":I
    move v5, v15

    move-object v12, v6

    .end local v6    # "teal":[Z
    .local v12, "teal":[Z
    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/FlowerDetailActionDetector;->findFragmentedOutline(IIIIII[Z)Lcom/pikminx/helper/FlowerDetailActionDetector$Target;

    move-result-object v0

    .line 166
    :goto_8
    return-object v0

    .line 94
    .end local v8    # "bestPixels":I
    .end local v16    # "best":Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    .end local v20    # "right":I
    .end local v21    # "bottom":I
    .end local v22    # "top":I
    .end local v25    # "left":I
    .restart local v5    # "tealCount":I
    .restart local v6    # "teal":[Z
    .local v9, "left":I
    .local v10, "right":I
    .local v11, "top":I
    .local v12, "bottom":I
    :cond_11
    move/from16 v25, v9

    move/from16 v20, v10

    move/from16 v22, v11

    move/from16 v21, v12

    move v11, v5

    move-object v12, v6

    .line 95
    .end local v5    # "tealCount":I
    .end local v6    # "teal":[Z
    .end local v9    # "left":I
    .end local v10    # "right":I
    .local v11, "tealCount":I
    .local v12, "teal":[Z
    .restart local v20    # "right":I
    .restart local v21    # "bottom":I
    .restart local v22    # "top":I
    .restart local v25    # "left":I
    :goto_9
    const/4 v0, 0x0

    return-object v0

    .line 71
    .end local v11    # "tealCount":I
    .end local v12    # "teal":[Z
    .end local v13    # "step":I
    .end local v14    # "columns":I
    .end local v15    # "rows":I
    .end local v20    # "right":I
    .end local v21    # "bottom":I
    .end local v22    # "top":I
    .end local v25    # "left":I
    :cond_12
    const/4 v0, 0x0

    .line 72
    :goto_a
    return-object v0
.end method

.method private static findFragmentedOutline(IIIIII[Z)Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    .locals 28
    .param p0, "width"    # I
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "step"    # I
    .param p4, "columns"    # I
    .param p5, "rows"    # I
    .param p6, "teal"    # [Z

    .line 180
    move/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    new-array v5, v3, [I

    .line 181
    .local v5, "runStart":[I
    new-array v6, v3, [I

    .line 182
    .local v6, "runEnd":[I
    const/4 v7, -0x1

    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([II)V

    .line 183
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 184
    int-to-float v7, v0

    const v8, 0x3e23d70a    # 0.16f

    mul-float/2addr v7, v8

    int-to-float v8, v1

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 185
    .local v7, "minimumRun":I
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_0
    if-ge v9, v3, :cond_7

    .line 186
    const/4 v10, -0x1

    .line 187
    .local v10, "bestStart":I
    const/4 v11, -0x1

    .line 188
    .local v11, "bestEnd":I
    const/4 v12, -0x1

    .line 189
    .local v12, "currentStart":I
    const/4 v13, 0x0

    .local v13, "column":I
    :goto_1
    if-gt v13, v2, :cond_5

    .line 190
    if-ge v13, v2, :cond_0

    mul-int v14, v9, v2

    add-int/2addr v14, v13

    aget-boolean v14, v4, v14

    if-eqz v14, :cond_0

    move v14, v8

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    .line 191
    .local v14, "marked":Z
    :goto_2
    if-eqz v14, :cond_1

    if-gez v12, :cond_1

    .line 192
    move v12, v13

    .line 194
    :cond_1
    if-eqz v14, :cond_2

    if-ne v13, v2, :cond_4

    :cond_2
    if-ltz v12, :cond_4

    .line 195
    sub-int v15, v13, v12

    sub-int v8, v11, v10

    if-le v15, v8, :cond_3

    .line 196
    move v10, v12

    .line 197
    add-int/lit8 v11, v13, -0x1

    .line 199
    :cond_3
    const/4 v8, -0x1

    move v12, v8

    .line 189
    .end local v14    # "marked":Z
    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_1

    .line 202
    .end local v13    # "column":I
    :cond_5
    if-ltz v10, :cond_6

    sub-int v8, v11, v10

    const/4 v13, 0x1

    add-int/2addr v8, v13

    if-lt v8, v7, :cond_6

    .line 203
    aput v10, v5, v9

    .line 204
    aput v11, v6, v9

    .line 185
    .end local v10    # "bestStart":I
    .end local v11    # "bestEnd":I
    .end local v12    # "currentStart":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x1

    goto :goto_0

    .line 208
    .end local v9    # "row":I
    :cond_7
    const/4 v8, 0x0

    .line 209
    .local v8, "best":Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    const/4 v9, 0x0

    .line 210
    .local v9, "bestArea":I
    const/4 v10, 0x0

    .local v10, "upper":I
    :goto_3
    if-ge v10, v3, :cond_13

    .line 211
    aget v11, v5, v10

    if-gez v11, :cond_8

    .line 212
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    const/16 v26, 0x1

    goto/16 :goto_9

    .line 214
    :cond_8
    add-int/lit8 v11, v10, 0x1

    .local v11, "lower":I
    :goto_4
    if-ge v11, v3, :cond_12

    .line 215
    aget v12, v5, v11

    if-gez v12, :cond_9

    .line 216
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    const/16 v26, 0x1

    goto/16 :goto_8

    .line 218
    :cond_9
    sub-int v12, v11, v10

    const/4 v13, 0x1

    add-int/2addr v12, v13

    mul-int/2addr v12, v1

    .line 219
    .local v12, "controlHeight":I
    int-to-float v13, v12

    int-to-float v14, v0

    const v15, 0x3d6147ae    # 0.055f

    mul-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_11

    int-to-float v13, v12

    int-to-float v14, v0

    const v15, 0x3eae147b    # 0.34f

    mul-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a

    .line 220
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    const/16 v26, 0x1

    goto/16 :goto_8

    .line 222
    :cond_a
    aget v13, v5, v10

    aget v14, v6, v10

    add-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    .line 223
    .local v13, "upperCenter":F
    aget v15, v5, v11

    aget v17, v6, v11

    add-int v15, v15, v17

    int-to-float v15, v15

    div-float v20, v15, v14

    .line 224
    .local v20, "lowerCenter":F
    sub-float v15, v13, v20

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v14, v1

    mul-float/2addr v15, v14

    int-to-float v14, v0

    const v18, 0x3d4ccccd    # 0.05f

    mul-float v14, v14, v18

    cmpl-float v14, v15, v14

    if-lez v14, :cond_b

    .line 225
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    const/16 v26, 0x1

    goto/16 :goto_8

    .line 228
    :cond_b
    move/from16 v14, p4

    .line 229
    .local v14, "minColumn":I
    const/4 v15, -0x1

    .line 230
    .local v15, "maxColumn":I
    const/16 v18, 0x0

    .line 231
    .local v18, "pixels":I
    move/from16 v19, v10

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v15, v18

    move/from16 v14, v19

    .end local v18    # "pixels":I
    .local v14, "row":I
    .local v15, "pixels":I
    .local v21, "minColumn":I
    .local v22, "maxColumn":I
    :goto_5
    if-gt v14, v11, :cond_e

    .line 232
    const/16 v18, 0x0

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v3, v18

    move/from16 v5, v21

    move/from16 v6, v22

    .end local v21    # "minColumn":I
    .end local v22    # "maxColumn":I
    .local v3, "column":I
    .local v5, "minColumn":I
    .local v6, "maxColumn":I
    .local v23, "runStart":[I
    .local v24, "runEnd":[I
    :goto_6
    if-ge v3, v2, :cond_d

    .line 233
    mul-int v18, v14, v2

    add-int v18, v18, v3

    aget-boolean v18, v4, v18

    if-nez v18, :cond_c

    .line 234
    goto :goto_7

    .line 236
    :cond_c
    add-int/lit8 v15, v15, 0x1

    .line 237
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 238
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 232
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 231
    .end local v3    # "column":I
    :cond_d
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p5

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    goto :goto_5

    .end local v23    # "runStart":[I
    .end local v24    # "runEnd":[I
    .local v5, "runStart":[I
    .local v6, "runEnd":[I
    .restart local v21    # "minColumn":I
    .restart local v22    # "maxColumn":I
    :cond_e
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .line 241
    .end local v5    # "runStart":[I
    .end local v6    # "runEnd":[I
    .end local v14    # "row":I
    .restart local v23    # "runStart":[I
    .restart local v24    # "runEnd":[I
    sub-int v3, v22, v21

    const/4 v5, 0x1

    add-int/2addr v3, v5

    mul-int/2addr v3, v1

    .line 242
    .local v3, "controlWidth":I
    int-to-float v6, v3

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v6, v14

    .line 243
    .local v6, "aspect":F
    add-int v14, v21, v22

    add-int/2addr v14, v5

    mul-int/2addr v14, v1

    div-int/lit8 v14, v14, 0x2

    add-int v5, p1, v14

    .line 244
    .local v5, "centerX":I
    mul-int v14, v3, v12

    .line 245
    .local v14, "area":I
    int-to-float v2, v3

    move/from16 v25, v7

    .end local v7    # "minimumRun":I
    .local v25, "minimumRun":I
    int-to-float v7, v0

    const v18, 0x3e8f5c29    # 0.28f

    mul-float v7, v7, v18

    cmpg-float v2, v2, v7

    if-ltz v2, :cond_10

    int-to-float v2, v3

    int-to-float v7, v0

    const/high16 v18, 0x3f400000    # 0.75f

    mul-float v7, v7, v18

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_10

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v6, v2

    if-ltz v2, :cond_10

    const/high16 v2, 0x41180000    # 9.5f

    cmpl-float v2, v6, v2

    if-gtz v2, :cond_10

    int-to-float v2, v5

    int-to-float v7, v0

    const v17, 0x3e99999a    # 0.3f

    mul-float v7, v7, v17

    cmpg-float v2, v2, v7

    if-ltz v2, :cond_10

    int-to-float v2, v5

    int-to-float v7, v0

    const v17, 0x3f333333    # 0.7f

    mul-float v7, v7, v17

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_10

    if-gt v14, v9, :cond_f

    .line 252
    const/16 v26, 0x1

    goto :goto_8

    .line 254
    :cond_f
    move v2, v14

    .line 255
    .end local v9    # "bestArea":I
    .local v2, "bestArea":I
    new-instance v7, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;

    add-int v9, v10, v11

    const/16 v26, 0x1

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x2

    add-int v16, p2, v9

    int-to-float v9, v15

    array-length v0, v4

    int-to-float v0, v0

    div-float v19, v9, v0

    move v0, v14

    .end local v14    # "area":I
    .local v0, "area":I
    move-object v14, v7

    move/from16 v27, v15

    .end local v15    # "pixels":I
    .local v27, "pixels":I
    move v15, v5

    move/from16 v17, v3

    move/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;-><init>(IIIIF)V

    move v9, v2

    move-object v8, v7

    .end local v8    # "best":Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    .local v7, "best":Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    goto :goto_8

    .line 245
    .end local v0    # "area":I
    .end local v2    # "bestArea":I
    .end local v7    # "best":Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    .end local v27    # "pixels":I
    .restart local v8    # "best":Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
    .restart local v9    # "bestArea":I
    .restart local v14    # "area":I
    .restart local v15    # "pixels":I
    :cond_10
    move v0, v14

    move/from16 v27, v15

    const/16 v26, 0x1

    .end local v14    # "area":I
    .end local v15    # "pixels":I
    .restart local v0    # "area":I
    .restart local v27    # "pixels":I
    goto :goto_8

    .line 219
    .end local v0    # "area":I
    .end local v3    # "controlWidth":I
    .end local v13    # "upperCenter":F
    .end local v20    # "lowerCenter":F
    .end local v21    # "minColumn":I
    .end local v22    # "maxColumn":I
    .end local v23    # "runStart":[I
    .end local v24    # "runEnd":[I
    .end local v25    # "minimumRun":I
    .end local v27    # "pixels":I
    .local v5, "runStart":[I
    .local v6, "runEnd":[I
    .local v7, "minimumRun":I
    :cond_11
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    const/16 v26, 0x1

    .line 214
    .end local v5    # "runStart":[I
    .end local v6    # "runEnd":[I
    .end local v7    # "minimumRun":I
    .end local v12    # "controlHeight":I
    .restart local v23    # "runStart":[I
    .restart local v24    # "runEnd":[I
    .restart local v25    # "minimumRun":I
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v7, v25

    goto/16 :goto_4

    .end local v23    # "runStart":[I
    .end local v24    # "runEnd":[I
    .end local v25    # "minimumRun":I
    .restart local v5    # "runStart":[I
    .restart local v6    # "runEnd":[I
    .restart local v7    # "minimumRun":I
    :cond_12
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    const/16 v26, 0x1

    .line 210
    .end local v5    # "runStart":[I
    .end local v6    # "runEnd":[I
    .end local v7    # "minimumRun":I
    .end local v11    # "lower":I
    .restart local v23    # "runStart":[I
    .restart local v24    # "runEnd":[I
    .restart local v25    # "minimumRun":I
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v7, v25

    goto/16 :goto_3

    .line 263
    .end local v10    # "upper":I
    .end local v23    # "runStart":[I
    .end local v24    # "runEnd":[I
    .end local v25    # "minimumRun":I
    .restart local v5    # "runStart":[I
    .restart local v6    # "runEnd":[I
    .restart local v7    # "minimumRun":I
    :cond_13
    return-object v8
.end method

.method private static hasLightDetailSheet(IILjava/util/function/IntBinaryOperator;)Z
    .locals 16
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 268
    move/from16 v0, p0

    move/from16 v1, p1

    int-to-float v2, v0

    const v3, 0x3d75c28f    # 0.06f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 269
    .local v2, "left":I
    int-to-float v3, v0

    const v4, 0x3f70a3d7    # 0.94f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 270
    .local v3, "right":I
    int-to-float v4, v1

    const v5, 0x3f147ae1    # 0.58f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 271
    .local v4, "top":I
    int-to-float v5, v1

    const v6, 0x3f6b851f    # 0.92f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 272
    .local v5, "bottom":I
    div-int/lit8 v6, v0, 0x48

    const/4 v7, 0x4

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 273
    .local v6, "step":I
    const/4 v7, 0x0

    .line 274
    .local v7, "sampled":I
    const/4 v8, 0x0

    .line 275
    .local v8, "light":I
    move v9, v4

    .local v9, "y":I
    :goto_0
    if-ge v9, v5, :cond_2

    .line 276
    move v10, v2

    .local v10, "x":I
    :goto_1
    if-ge v10, v3, :cond_1

    .line 277
    move-object/from16 v11, p2

    invoke-interface {v11, v10, v9}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v12

    .line 278
    .local v12, "color":I
    ushr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    .line 279
    .local v13, "red":I
    ushr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    .line 280
    .local v14, "green":I
    and-int/lit16 v15, v12, 0xff

    .line 281
    .local v15, "blue":I
    add-int/lit8 v7, v7, 0x1

    .line 282
    const/16 v0, 0xe6

    if-lt v13, v0, :cond_0

    if-lt v14, v0, :cond_0

    if-lt v15, v0, :cond_0

    .line 283
    add-int/lit8 v8, v8, 0x1

    .line 276
    .end local v12    # "color":I
    .end local v13    # "red":I
    .end local v14    # "green":I
    .end local v15    # "blue":I
    :cond_0
    add-int/2addr v10, v6

    move/from16 v0, p0

    goto :goto_1

    :cond_1
    move-object/from16 v11, p2

    .line 275
    .end local v10    # "x":I
    add-int/2addr v9, v6

    move/from16 v0, p0

    goto :goto_0

    :cond_2
    move-object/from16 v11, p2

    .line 287
    .end local v9    # "y":I
    if-lez v7, :cond_3

    mul-int/lit8 v0, v8, 0x64

    mul-int/lit8 v9, v7, 0x2a

    if-lt v0, v9, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private static isTealAccent(I)Z
    .locals 5
    .param p0, "color"    # I

    .line 291
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 292
    .local v0, "red":I
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 293
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 294
    .local v2, "blue":I
    const/16 v3, 0x6e

    if-gt v0, v3, :cond_0

    const/16 v3, 0x69

    if-lt v1, v3, :cond_0

    const/16 v3, 0x46

    if-lt v2, v3, :cond_0

    sub-int v3, v1, v0

    const/16 v4, 0x28

    if-lt v3, v4, :cond_0

    sub-int v3, v2, v0

    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    sub-int v3, v1, v2

    .line 299
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 294
    :goto_0
    return v3
.end method
