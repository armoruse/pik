.class final Lcom/pikminx/helper/ReturnRewardDetector;
.super Ljava/lang/Object;
.source "ReturnRewardDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/ReturnRewardDetector$Target;
    }
.end annotation


# static fields
.field private static final MIN_REWARD_CONFIDENCE:F = 0.2f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "minimum"    # I
    .param p2, "maximum"    # I

    .line 250
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "foreground"    # [Z
    .param p5, "visited"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[Z[Z",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p6, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    if-ltz p0, :cond_2

    if-ge p0, p2, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, p3, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    mul-int v0, p1, p2

    add-int/2addr v0, p0

    .line 129
    .local v0, "index":I
    aget-boolean v1, p4, v0

    if-eqz v1, :cond_1

    aget-boolean v1, p5, v0

    if-nez v1, :cond_1

    .line 130
    const/4 v1, 0x1

    aput-boolean v1, p5, v0

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    return-void

    .line 126
    .end local v0    # "index":I
    :cond_2
    :goto_0
    return-void
.end method

.method static find(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/ReturnRewardDetector$Target;
    .locals 44
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 21
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-lez v0, :cond_13

    if-gtz v1, :cond_0

    move v7, v1

    move-object v6, v2

    goto/16 :goto_b

    .line 24
    :cond_0
    int-to-float v3, v0

    const/high16 v4, 0x43580000    # 216.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 25
    .local v3, "step":I
    int-to-float v4, v0

    const v5, 0x3e3851ec    # 0.18f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 26
    .local v4, "left":I
    int-to-float v5, v0

    const v6, 0x3f51eb85    # 0.82f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 27
    .local v5, "right":I
    int-to-float v6, v1

    const v7, 0x3f051eb8    # 0.52f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 28
    .local v6, "top":I
    int-to-float v7, v1

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 29
    .local v7, "bottom":I
    sub-int v8, v5, v4

    add-int/2addr v8, v3

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    div-int/2addr v8, v3

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 30
    .local v8, "gridWidth":I
    sub-int v10, v7, v6

    add-int/2addr v10, v3

    sub-int/2addr v10, v9

    div-int/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 31
    .local v15, "gridHeight":I
    mul-int v10, v8, v15

    new-array v14, v10, [Z

    .line 32
    .local v14, "foreground":[Z
    array-length v10, v14

    new-array v13, v10, [Z

    .line 33
    .local v13, "visited":[Z
    const/4 v10, 0x0

    .local v10, "gy":I
    :goto_0
    if-ge v10, v15, :cond_2

    .line 34
    add-int/lit8 v11, v1, -0x1

    mul-int v12, v10, v3

    add-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 35
    .local v11, "y":I
    const/4 v12, 0x0

    .local v12, "gx":I
    :goto_1
    if-ge v12, v8, :cond_1

    .line 36
    add-int/lit8 v9, v0, -0x1

    mul-int v16, v12, v3

    move/from16 v18, v5

    .end local v5    # "right":I
    .local v18, "right":I
    add-int v5, v4, v16

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 37
    .local v5, "x":I
    mul-int v9, v10, v8

    add-int/2addr v9, v12

    invoke-interface {v2, v5, v11}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/pikminx/helper/ReturnRewardDetector;->isRewardPixel(I)Z

    move-result v16

    aput-boolean v16, v14, v9

    .line 35
    .end local v5    # "x":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v18

    const/4 v9, 0x1

    goto :goto_1

    .end local v18    # "right":I
    .local v5, "right":I
    :cond_1
    move/from16 v18, v5

    .line 33
    .end local v5    # "right":I
    .end local v11    # "y":I
    .end local v12    # "gx":I
    .restart local v18    # "right":I
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x1

    goto :goto_0

    .end local v18    # "right":I
    .restart local v5    # "right":I
    :cond_2
    move/from16 v18, v5

    .line 41
    .end local v5    # "right":I
    .end local v10    # "gy":I
    .restart local v18    # "right":I
    const/4 v5, 0x0

    .line 42
    .local v5, "best":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    new-instance v9, Ljava/util/ArrayDeque;

    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    .line 43
    .local v9, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    move v12, v10

    .local v12, "index":I
    :goto_2
    array-length v10, v14

    if-ge v12, v10, :cond_12

    .line 44
    aget-boolean v10, v14, v12

    if-eqz v10, :cond_10

    aget-boolean v10, v13, v12

    if-eqz v10, :cond_3

    .line 45
    move/from16 v31, v3

    move/from16 v24, v4

    move-object/from16 v22, v5

    move/from16 v21, v6

    move/from16 v19, v7

    move/from16 v17, v8

    move-object/from16 v23, v9

    move/from16 v29, v12

    move-object/from16 v20, v13

    move-object/from16 v32, v14

    move/from16 v33, v15

    move v7, v1

    move-object v6, v2

    goto/16 :goto_9

    .line 47
    :cond_3
    const/4 v10, 0x1

    aput-boolean v10, v13, v12

    .line 48
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v10, 0x0

    .line 50
    .local v10, "count":I
    move v11, v8

    .line 51
    .local v11, "minX":I
    const/16 v16, 0x0

    .line 52
    .local v16, "maxX":I
    move/from16 v19, v15

    .line 53
    .local v19, "minY":I
    const/16 v20, 0x0

    .line 54
    .local v20, "maxY":I
    const-wide/16 v21, 0x0

    .line 55
    .local v21, "sumX":J
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-wide/from16 v40, v21

    move-object/from16 v22, v5

    move/from16 v21, v6

    move-wide/from16 v5, v40

    move/from16 v42, v19

    move/from16 v19, v7

    move/from16 v7, v16

    move/from16 v16, v12

    move/from16 v12, v42

    move/from16 v43, v20

    move-object/from16 v20, v13

    move/from16 v13, v43

    .line 56
    .end local v6    # "top":I
    .local v0, "sumY":J
    .local v5, "sumX":J
    .local v7, "maxX":I
    .local v12, "minY":I
    .local v13, "maxY":I
    .local v16, "index":I
    .local v19, "bottom":I
    .local v20, "visited":[Z
    .local v21, "top":I
    .local v22, "best":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_8

    .line 57
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 58
    .local v23, "current":I
    rem-int v2, v23, v8

    .line 59
    .local v2, "gx":I
    move/from16 v24, v4

    .end local v4    # "left":I
    .local v24, "left":I
    div-int v4, v23, v8

    .line 60
    .local v4, "gy":I
    add-int/lit8 v25, v10, 0x1

    .line 61
    .end local v10    # "count":I
    .local v25, "count":I
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 62
    .end local v11    # "minX":I
    .local v26, "minX":I
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 63
    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v27

    .line 64
    .end local v12    # "minY":I
    .local v27, "minY":I
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 65
    .end local v13    # "maxY":I
    .local v28, "maxY":I
    int-to-long v10, v2

    add-long/2addr v5, v10

    .line 66
    int-to-long v10, v4

    add-long/2addr v0, v10

    .line 67
    const/4 v10, -0x1

    move v13, v10

    .local v13, "dy":I
    :goto_4
    const/4 v10, 0x1

    if-gt v13, v10, :cond_7

    .line 68
    const/4 v11, -0x1

    move v12, v11

    .local v12, "dx":I
    :goto_5
    if-gt v12, v10, :cond_6

    .line 69
    if-nez v12, :cond_5

    if-eqz v13, :cond_4

    goto :goto_6

    :cond_4
    move/from16 v30, v12

    move/from16 v31, v13

    move-object/from16 v32, v14

    move/from16 v33, v15

    move/from16 v29, v16

    goto :goto_7

    .line 70
    :cond_5
    :goto_6
    add-int v10, v2, v12

    add-int v11, v4, v13

    move/from16 v30, v12

    move/from16 v29, v16

    .end local v12    # "dx":I
    .end local v16    # "index":I
    .local v29, "index":I
    .local v30, "dx":I
    move v12, v8

    move/from16 v31, v13

    .end local v13    # "dy":I
    .local v31, "dy":I
    move v13, v15

    move-object/from16 v32, v14

    .end local v14    # "foreground":[Z
    .local v32, "foreground":[Z
    move/from16 v33, v15

    .end local v15    # "gridHeight":I
    .local v33, "gridHeight":I
    move-object/from16 v15, v20

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/pikminx/helper/ReturnRewardDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 68
    :goto_7
    add-int/lit8 v12, v30, 0x1

    move/from16 v16, v29

    move/from16 v13, v31

    move-object/from16 v14, v32

    move/from16 v15, v33

    const/4 v10, 0x1

    .end local v30    # "dx":I
    .restart local v12    # "dx":I
    goto :goto_5

    .end local v29    # "index":I
    .end local v31    # "dy":I
    .end local v32    # "foreground":[Z
    .end local v33    # "gridHeight":I
    .restart local v13    # "dy":I
    .restart local v14    # "foreground":[Z
    .restart local v15    # "gridHeight":I
    .restart local v16    # "index":I
    :cond_6
    move/from16 v30, v12

    move/from16 v31, v13

    move-object/from16 v32, v14

    move/from16 v33, v15

    move/from16 v29, v16

    .line 67
    .end local v12    # "dx":I
    .end local v13    # "dy":I
    .end local v14    # "foreground":[Z
    .end local v15    # "gridHeight":I
    .end local v16    # "index":I
    .restart local v29    # "index":I
    .restart local v31    # "dy":I
    .restart local v32    # "foreground":[Z
    .restart local v33    # "gridHeight":I
    add-int/lit8 v13, v31, 0x1

    .end local v31    # "dy":I
    .restart local v13    # "dy":I
    goto :goto_4

    .end local v29    # "index":I
    .end local v32    # "foreground":[Z
    .end local v33    # "gridHeight":I
    .restart local v14    # "foreground":[Z
    .restart local v15    # "gridHeight":I
    .restart local v16    # "index":I
    :cond_7
    move/from16 v31, v13

    move-object/from16 v32, v14

    move/from16 v33, v15

    move/from16 v29, v16

    .line 75
    .end local v2    # "gx":I
    .end local v4    # "gy":I
    .end local v13    # "dy":I
    .end local v14    # "foreground":[Z
    .end local v15    # "gridHeight":I
    .end local v16    # "index":I
    .end local v23    # "current":I
    .restart local v29    # "index":I
    .restart local v32    # "foreground":[Z
    .restart local v33    # "gridHeight":I
    move-object/from16 v2, p2

    move/from16 v4, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    goto/16 :goto_3

    .line 77
    .end local v24    # "left":I
    .end local v25    # "count":I
    .end local v26    # "minX":I
    .end local v27    # "minY":I
    .end local v28    # "maxY":I
    .end local v29    # "index":I
    .end local v32    # "foreground":[Z
    .end local v33    # "gridHeight":I
    .local v4, "left":I
    .restart local v10    # "count":I
    .restart local v11    # "minX":I
    .local v12, "minY":I
    .local v13, "maxY":I
    .restart local v14    # "foreground":[Z
    .restart local v15    # "gridHeight":I
    .restart local v16    # "index":I
    :cond_8
    move/from16 v24, v4

    move-object/from16 v32, v14

    move/from16 v33, v15

    move/from16 v29, v16

    .end local v4    # "left":I
    .end local v14    # "foreground":[Z
    .end local v15    # "gridHeight":I
    .end local v16    # "index":I
    .restart local v24    # "left":I
    .restart local v29    # "index":I
    .restart local v32    # "foreground":[Z
    .restart local v33    # "gridHeight":I
    sub-int v2, v7, v11

    const/4 v4, 0x1

    add-int/2addr v2, v4

    mul-int/2addr v2, v3

    .line 78
    .local v2, "componentWidth":I
    sub-int v14, v13, v12

    add-int/2addr v14, v4

    mul-int/2addr v14, v3

    .line 79
    .local v14, "componentHeight":I
    int-to-float v15, v10

    sub-int v16, v7, v11

    add-int/lit8 v16, v16, 0x1

    sub-int v17, v13, v12

    add-int/lit8 v17, v17, 0x1

    move-wide/from16 v25, v0

    .end local v0    # "sumY":J
    .local v25, "sumY":J
    mul-int v0, v16, v17

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v15, v0

    .line 81
    .local v15, "fill":F
    mul-int v0, v10, v3

    mul-int/2addr v0, v3

    int-to-float v0, v0

    move/from16 v1, p0

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v23, v9

    move-wide/from16 v8, v25

    move/from16 v7, p1

    move/from16 v25, v11

    .end local v7    # "maxX":I
    .end local v9    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v11    # "minX":I
    .local v8, "sumY":J
    .local v16, "maxX":I
    .local v17, "gridWidth":I
    .local v23, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .local v25, "minX":I
    mul-int v11, v1, v7

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v0, v11

    .line 82
    .local v0, "areaRatio":F
    long-to-float v11, v5

    int-to-float v4, v10

    div-float/2addr v11, v4

    int-to-float v4, v3

    mul-float/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v4, v24, v4

    .line 83
    .local v4, "centerX":I
    long-to-float v11, v8

    move-wide/from16 v27, v5

    .end local v5    # "sumX":J
    .local v27, "sumX":J
    int-to-float v5, v10

    div-float/2addr v11, v5

    int-to-float v5, v3

    mul-float/2addr v11, v5

    .line 84
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v6, v21, v5

    mul-int v5, v12, v3

    add-int v5, v21, v5

    int-to-float v11, v14

    const v30, 0x3ee66666    # 0.45f

    mul-float v11, v11, v30

    .line 85
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v5, v11

    .line 83
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 86
    .local v5, "centerY":I
    int-to-float v6, v2

    int-to-float v11, v1

    const v30, 0x3da3d70a    # 0.08f

    mul-float v11, v11, v30

    cmpg-float v6, v6, v11

    if-ltz v6, :cond_f

    int-to-float v6, v2

    int-to-float v11, v1

    const v30, 0x3f0f5c29    # 0.56f

    mul-float v11, v11, v30

    cmpl-float v6, v6, v11

    if-gtz v6, :cond_f

    int-to-float v6, v14

    int-to-float v11, v7

    const v31, 0x3d3851ec    # 0.045f

    mul-float v11, v11, v31

    cmpg-float v6, v6, v11

    if-ltz v6, :cond_f

    int-to-float v6, v14

    int-to-float v11, v7

    const v31, 0x3e851eb8    # 0.26f

    mul-float v11, v11, v31

    cmpl-float v6, v6, v11

    if-gtz v6, :cond_f

    int-to-float v6, v2

    int-to-float v11, v1

    const v31, 0x3ec28f5c    # 0.38f

    mul-float v11, v11, v31

    cmpl-float v6, v6, v11

    if-lez v6, :cond_a

    int-to-float v6, v14

    int-to-float v11, v7

    const v31, 0x3dae147b    # 0.085f

    mul-float v11, v11, v31

    cmpg-float v6, v6, v11

    if-ltz v6, :cond_9

    goto :goto_8

    :cond_9
    move-object/from16 v6, p2

    move/from16 v31, v3

    goto/16 :goto_9

    :cond_a
    :goto_8
    const v6, 0x3df5c28f    # 0.12f

    cmpg-float v6, v15, v6

    if-ltz v6, :cond_f

    const v6, 0x3b449ba6    # 0.003f

    cmpg-float v6, v0, v6

    if-ltz v6, :cond_f

    int-to-float v6, v4

    int-to-float v11, v1

    const v31, 0x3e8a3d71    # 0.27f

    mul-float v11, v11, v31

    cmpg-float v6, v6, v11

    if-ltz v6, :cond_f

    int-to-float v6, v4

    int-to-float v11, v1

    const v31, 0x3f59999a    # 0.85f

    mul-float v11, v11, v31

    cmpl-float v6, v6, v11

    if-gtz v6, :cond_f

    int-to-float v6, v5

    int-to-float v11, v7

    const v31, 0x3edc28f6    # 0.43f

    mul-float v11, v11, v31

    cmpg-float v6, v6, v11

    if-ltz v6, :cond_f

    int-to-float v6, v5

    int-to-float v11, v7

    const v31, 0x3f2b851f    # 0.67f

    mul-float v11, v11, v31

    cmpl-float v6, v6, v11

    if-gtz v6, :cond_f

    .line 98
    move-object/from16 v6, p2

    invoke-static {v1, v7, v4, v5, v6}, Lcom/pikminx/helper/ReturnRewardDetector;->hasFieldLikeBackground(IIIILjava/util/function/IntBinaryOperator;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 99
    invoke-static {v1, v7, v4, v5, v6}, Lcom/pikminx/helper/ReturnRewardDetector;->looksLikeGift(IIIILjava/util/function/IntBinaryOperator;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 100
    move/from16 v31, v3

    goto/16 :goto_9

    .line 102
    :cond_b
    int-to-float v11, v4

    move/from16 v31, v3

    .end local v3    # "step":I
    .local v31, "step":I
    int-to-float v3, v1

    const/high16 v34, 0x3f000000    # 0.5f

    mul-float v3, v3, v34

    sub-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v11, v1

    div-float/2addr v3, v11

    int-to-float v11, v5

    int-to-float v1, v7

    mul-float v1, v1, v30

    sub-float/2addr v11, v1

    .line 103
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v11, v7

    div-float/2addr v1, v11

    add-float/2addr v3, v1

    .line 104
    .local v3, "centerPenalty":F
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    const v11, 0x3eb33333    # 0.35f

    mul-float/2addr v11, v15

    add-float/2addr v1, v11

    const v11, 0x3e4ccccd    # 0.2f

    mul-float v30, v3, v11

    sub-float v1, v1, v30

    .line 105
    .local v1, "confidence":F
    cmpg-float v11, v1, v11

    if-gez v11, :cond_c

    .line 106
    goto :goto_9

    .line 108
    :cond_c
    new-instance v11, Lcom/pikminx/helper/ReturnRewardDetector$Target;

    move-object/from16 v34, v11

    move/from16 v35, v4

    move/from16 v36, v5

    move/from16 v37, v2

    move/from16 v38, v14

    move/from16 v39, v1

    invoke-direct/range {v34 .. v39}, Lcom/pikminx/helper/ReturnRewardDetector$Target;-><init>(IIIIF)V

    .line 110
    .local v11, "candidate":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    if-eqz v22, :cond_d

    invoke-virtual {v11}, Lcom/pikminx/helper/ReturnRewardDetector$Target;->confidence()F

    move-result v30

    invoke-virtual/range {v22 .. v22}, Lcom/pikminx/helper/ReturnRewardDetector$Target;->confidence()F

    move-result v34

    cmpl-float v30, v30, v34

    if-lez v30, :cond_11

    .line 111
    :cond_d
    move-object/from16 v22, v11

    move-object/from16 v5, v22

    goto :goto_a

    .line 98
    .end local v1    # "confidence":F
    .end local v11    # "candidate":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    .end local v31    # "step":I
    .local v3, "step":I
    :cond_e
    move/from16 v31, v3

    .end local v3    # "step":I
    .restart local v31    # "step":I
    goto :goto_9

    .line 86
    .end local v31    # "step":I
    .restart local v3    # "step":I
    :cond_f
    move-object/from16 v6, p2

    move/from16 v31, v3

    .end local v3    # "step":I
    .restart local v31    # "step":I
    goto :goto_9

    .line 44
    .end local v0    # "areaRatio":F
    .end local v2    # "componentWidth":I
    .end local v10    # "count":I
    .end local v16    # "maxX":I
    .end local v17    # "gridWidth":I
    .end local v19    # "bottom":I
    .end local v20    # "visited":[Z
    .end local v21    # "top":I
    .end local v22    # "best":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    .end local v23    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v24    # "left":I
    .end local v25    # "minX":I
    .end local v27    # "sumX":J
    .end local v29    # "index":I
    .end local v31    # "step":I
    .end local v32    # "foreground":[Z
    .end local v33    # "gridHeight":I
    .restart local v3    # "step":I
    .local v4, "left":I
    .local v5, "best":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    .restart local v6    # "top":I
    .local v7, "bottom":I
    .local v8, "gridWidth":I
    .restart local v9    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .local v12, "index":I
    .local v13, "visited":[Z
    .local v14, "foreground":[Z
    .local v15, "gridHeight":I
    :cond_10
    move/from16 v31, v3

    move/from16 v24, v4

    move-object/from16 v22, v5

    move/from16 v21, v6

    move/from16 v19, v7

    move/from16 v17, v8

    move-object/from16 v23, v9

    move/from16 v29, v12

    move-object/from16 v20, v13

    move-object/from16 v32, v14

    move/from16 v33, v15

    move v7, v1

    move-object v6, v2

    .line 43
    .end local v3    # "step":I
    .end local v4    # "left":I
    .end local v5    # "best":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    .end local v6    # "top":I
    .end local v7    # "bottom":I
    .end local v8    # "gridWidth":I
    .end local v9    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v12    # "index":I
    .end local v13    # "visited":[Z
    .end local v14    # "foreground":[Z
    .end local v15    # "gridHeight":I
    .restart local v17    # "gridWidth":I
    .restart local v19    # "bottom":I
    .restart local v20    # "visited":[Z
    .restart local v21    # "top":I
    .restart local v22    # "best":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    .restart local v23    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .restart local v24    # "left":I
    .restart local v29    # "index":I
    .restart local v31    # "step":I
    .restart local v32    # "foreground":[Z
    .restart local v33    # "gridHeight":I
    :cond_11
    :goto_9
    move-object/from16 v5, v22

    .end local v22    # "best":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    .restart local v5    # "best":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    :goto_a
    add-int/lit8 v12, v29, 0x1

    move/from16 v0, p0

    move-object v2, v6

    move v1, v7

    move/from16 v8, v17

    move/from16 v7, v19

    move-object/from16 v13, v20

    move/from16 v6, v21

    move-object/from16 v9, v23

    move/from16 v4, v24

    move/from16 v3, v31

    move-object/from16 v14, v32

    move/from16 v15, v33

    .end local v29    # "index":I
    .restart local v12    # "index":I
    goto/16 :goto_2

    .end local v17    # "gridWidth":I
    .end local v19    # "bottom":I
    .end local v20    # "visited":[Z
    .end local v21    # "top":I
    .end local v23    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v24    # "left":I
    .end local v31    # "step":I
    .end local v32    # "foreground":[Z
    .end local v33    # "gridHeight":I
    .restart local v3    # "step":I
    .restart local v4    # "left":I
    .restart local v6    # "top":I
    .restart local v7    # "bottom":I
    .restart local v8    # "gridWidth":I
    .restart local v9    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .restart local v13    # "visited":[Z
    .restart local v14    # "foreground":[Z
    .restart local v15    # "gridHeight":I
    :cond_12
    move-object/from16 v22, v5

    .line 114
    .end local v5    # "best":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    .end local v12    # "index":I
    .restart local v22    # "best":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    return-object v22

    .line 21
    .end local v3    # "step":I
    .end local v4    # "left":I
    .end local v6    # "top":I
    .end local v7    # "bottom":I
    .end local v8    # "gridWidth":I
    .end local v9    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v13    # "visited":[Z
    .end local v14    # "foreground":[Z
    .end local v15    # "gridHeight":I
    .end local v18    # "right":I
    .end local v22    # "best":Lcom/pikminx/helper/ReturnRewardDetector$Target;
    :cond_13
    move v7, v1

    move-object v6, v2

    .line 22
    :goto_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static hasFieldLikeBackground(IIIILjava/util/function/IntBinaryOperator;)Z
    .locals 17
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 157
    move/from16 v0, p0

    move/from16 v1, p1

    int-to-float v2, v0

    const/high16 v3, 0x43580000    # 216.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 158
    .local v2, "step":I
    int-to-float v3, v0

    const v4, 0x3e851eb8    # 0.26f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v3, p2, v3

    add-int/lit8 v5, v0, -0x1

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Lcom/pikminx/helper/ReturnRewardDetector;->clamp(III)I

    move-result v3

    .line 159
    .local v3, "left":I
    int-to-float v5, v0

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v4, p2, v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v6, v5}, Lcom/pikminx/helper/ReturnRewardDetector;->clamp(III)I

    move-result v4

    .line 160
    .local v4, "right":I
    int-to-float v5, v1

    const v7, 0x3e23d70a    # 0.16f

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v5, p3, v5

    add-int/lit8 v8, v1, -0x1

    invoke-static {v5, v6, v8}, Lcom/pikminx/helper/ReturnRewardDetector;->clamp(III)I

    move-result v5

    .line 161
    .local v5, "top":I
    int-to-float v8, v1

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v7, p3, v7

    add-int/lit8 v8, v1, -0x1

    invoke-static {v7, v6, v8}, Lcom/pikminx/helper/ReturnRewardDetector;->clamp(III)I

    move-result v7

    .line 162
    .local v7, "bottom":I
    int-to-float v8, v0

    const v9, 0x3df5c28f    # 0.12f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 163
    .local v8, "coreHalfWidth":I
    int-to-float v9, v1

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 164
    .local v9, "coreHalfHeight":I
    const/4 v10, 0x0

    .line 165
    .local v10, "fieldPixels":I
    const/4 v11, 0x0

    .line 166
    .local v11, "samples":I
    move v12, v5

    .local v12, "y":I
    :goto_0
    if-gt v12, v7, :cond_3

    .line 167
    move v13, v3

    .local v13, "x":I
    :goto_1
    if-gt v13, v4, :cond_2

    .line 168
    sub-int v14, v13, p2

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-gt v14, v8, :cond_0

    sub-int v14, v12, p3

    .line 169
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-gt v14, v9, :cond_0

    .line 170
    move-object/from16 v14, p4

    move/from16 v16, v3

    goto :goto_2

    .line 172
    :cond_0
    move-object/from16 v14, p4

    invoke-interface {v14, v13, v12}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v15

    .line 173
    .local v15, "color":I
    ushr-int/lit8 v6, v15, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 174
    .local v6, "red":I
    ushr-int/lit8 v0, v15, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 175
    .local v0, "green":I
    and-int/lit16 v1, v15, 0xff

    .line 176
    .local v1, "blue":I
    move/from16 v16, v3

    .end local v3    # "left":I
    .local v16, "left":I
    add-int/lit8 v3, v6, 0x8

    if-lt v0, v3, :cond_1

    add-int/lit8 v3, v1, 0x5

    if-lt v0, v3, :cond_1

    const/16 v3, 0x3c

    if-lt v0, v3, :cond_1

    .line 177
    add-int/lit8 v10, v10, 0x1

    .line 179
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 167
    .end local v0    # "green":I
    .end local v1    # "blue":I
    .end local v6    # "red":I
    .end local v15    # "color":I
    :goto_2
    add-int/2addr v13, v2

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, v16

    const/4 v6, 0x0

    goto :goto_1

    .end local v16    # "left":I
    .restart local v3    # "left":I
    :cond_2
    move-object/from16 v14, p4

    move/from16 v16, v3

    .line 166
    .end local v3    # "left":I
    .end local v13    # "x":I
    .restart local v16    # "left":I
    add-int/2addr v12, v2

    move/from16 v0, p0

    move/from16 v1, p1

    const/4 v6, 0x0

    goto :goto_0

    .end local v16    # "left":I
    .restart local v3    # "left":I
    :cond_3
    move-object/from16 v14, p4

    move/from16 v16, v3

    .line 182
    .end local v3    # "left":I
    .end local v12    # "y":I
    .restart local v16    # "left":I
    const/16 v0, 0x14

    if-lt v11, v0, :cond_4

    int-to-float v0, v10

    int-to-float v1, v11

    div-float/2addr v0, v1

    const v1, 0x3eae147b    # 0.34f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    return v6
.end method

.method private static isRewardPixel(I)Z
    .locals 11
    .param p0, "color"    # I

    .line 136
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 137
    .local v0, "red":I
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 138
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 139
    .local v2, "blue":I
    const/16 v3, 0x3e

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v1, v3, :cond_0

    add-int/lit8 v3, v0, 0x10

    if-lt v1, v3, :cond_0

    add-int/lit8 v3, v2, 0xa

    if-lt v1, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 140
    .local v3, "grass":Z
    :goto_0
    const/16 v6, 0x5a

    if-lt v1, v6, :cond_1

    mul-int/lit8 v6, v0, 0x64

    mul-int/lit8 v7, v1, 0x37

    if-lt v6, v7, :cond_1

    mul-int/lit8 v6, v0, 0x64

    mul-int/lit8 v7, v1, 0x5c

    if-gt v6, v7, :cond_1

    mul-int/lit8 v6, v2, 0x64

    mul-int/lit8 v7, v1, 0x3a

    if-gt v6, v7, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    .line 144
    .local v6, "greenFruit":Z
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 145
    .local v7, "maximum":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 146
    .local v8, "minimum":I
    if-nez v6, :cond_3

    if-nez v3, :cond_2

    const/16 v9, 0x30

    if-lt v7, v9, :cond_2

    sub-int v9, v7, v8

    const/16 v10, 0x12

    if-ge v9, v10, :cond_3

    const/16 v9, 0x69

    if-lt v8, v9, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :cond_3
    :goto_2
    return v4
.end method

.method static looksLikeGift(IIIILjava/util/function/IntBinaryOperator;)Z
    .locals 19
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 192
    const/4 v0, 0x7

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, v1, v3

    .line 193
    .local v4, "offset":F
    move/from16 v15, p1

    int-to-float v5, v15

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v16, p3, v5

    .line 194
    .local v16, "shiftedY":I
    const v9, -0x42666666    # -0.075f

    const v10, -0x42333333    # -0.1f

    const v11, 0x3d99999a    # 0.075f

    const v12, -0x435c28f6    # -0.02f

    const/4 v14, 0x1

    move/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, v16

    move-object/from16 v13, p4

    invoke-static/range {v5 .. v14}, Lcom/pikminx/helper/ReturnRewardDetector;->ratio(IIIIFFFFLjava/util/function/IntBinaryOperator;Z)F

    move-result v17

    .line 196
    .local v17, "topRed":F
    const v9, -0x4251eb85    # -0.085f

    const v11, 0x3dae147b    # 0.085f

    const v12, 0x3dcccccd    # 0.1f

    invoke-static/range {v5 .. v14}, Lcom/pikminx/helper/ReturnRewardDetector;->ratio(IIIIFFFFLjava/util/function/IntBinaryOperator;Z)F

    move-result v18

    .line 198
    .local v18, "totalRed":F
    const v9, -0x425c28f6    # -0.08f

    const v10, -0x43dc28f6    # -0.01f

    const v11, 0x3da3d70a    # 0.08f

    const v12, 0x3dae147b    # 0.085f

    const/4 v14, 0x0

    invoke-static/range {v5 .. v14}, Lcom/pikminx/helper/ReturnRewardDetector;->ratio(IIIIFFFFLjava/util/function/IntBinaryOperator;Z)F

    move-result v5

    .line 200
    .local v5, "neutral":F
    const v6, 0x3de147ae    # 0.11f

    cmpl-float v6, v17, v6

    if-ltz v6, :cond_0

    const v6, 0x3ed70a3d    # 0.42f

    cmpg-float v6, v17, v6

    if-gtz v6, :cond_0

    const v6, 0x3dae147b    # 0.085f

    cmpl-float v6, v18, v6

    if-ltz v6, :cond_0

    const v6, 0x3e8a3d71    # 0.27f

    cmpg-float v6, v18, v6

    if-gtz v6, :cond_0

    const v6, 0x3e6147ae    # 0.22f

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_0

    .line 203
    const/4 v0, 0x1

    return v0

    .line 192
    .end local v4    # "offset":F
    .end local v5    # "neutral":F
    .end local v16    # "shiftedY":I
    .end local v17    # "topRed":F
    .end local v18    # "totalRed":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_1
    move/from16 v15, p1

    return v2

    :array_0
    .array-data 4
        -0x42666666    # -0.075f
        -0x42b33333    # -0.05f
        -0x43333333    # -0.025f
        0x0
        0x3ccccccd    # 0.025f
        0x3d4ccccd    # 0.05f
        0x3d99999a    # 0.075f
    .end array-data
.end method

.method private static ratio(IIIIFFFFLjava/util/function/IntBinaryOperator;Z)F
    .locals 17
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .param p4, "leftOffset"    # F
    .param p5, "topOffset"    # F
    .param p6, "rightOffset"    # F
    .param p7, "bottomOffset"    # F
    .param p8, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .param p9, "redPixel"    # Z

    .line 220
    move/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    div-int/lit16 v3, v0, 0x21c

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 221
    .local v3, "step":I
    int-to-float v5, v1

    int-to-float v6, v0

    mul-float v6, v6, p4

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/lit8 v6, v0, -0x1

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/pikminx/helper/ReturnRewardDetector;->clamp(III)I

    move-result v5

    .line 222
    .local v5, "left":I
    int-to-float v6, v1

    int-to-float v8, v0

    mul-float v8, v8, p6

    add-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v8, v0, -0x1

    invoke-static {v6, v7, v8}, Lcom/pikminx/helper/ReturnRewardDetector;->clamp(III)I

    move-result v6

    .line 223
    .local v6, "right":I
    int-to-float v8, v2

    int-to-float v9, v0

    mul-float v9, v9, p5

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/lit8 v9, p1, -0x1

    invoke-static {v8, v7, v9}, Lcom/pikminx/helper/ReturnRewardDetector;->clamp(III)I

    move-result v8

    .line 224
    .local v8, "top":I
    int-to-float v9, v2

    int-to-float v10, v0

    mul-float v10, v10, p7

    add-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/lit8 v10, p1, -0x1

    invoke-static {v9, v7, v10}, Lcom/pikminx/helper/ReturnRewardDetector;->clamp(III)I

    move-result v9

    .line 225
    .local v9, "bottom":I
    const/4 v10, 0x0

    .line 226
    .local v10, "matches":I
    const/4 v11, 0x0

    .line 227
    .local v11, "samples":I
    move v12, v8

    .local v12, "y":I
    :goto_0
    if-gt v12, v9, :cond_5

    .line 228
    move v13, v5

    .local v13, "x":I
    :goto_1
    if-gt v13, v6, :cond_4

    .line 229
    move-object/from16 v14, p8

    invoke-interface {v14, v13, v12}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v15

    .line 230
    .local v15, "color":I
    ushr-int/lit8 v4, v15, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 231
    .local v4, "red":I
    ushr-int/lit8 v7, v15, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 232
    .local v7, "green":I
    and-int/lit16 v0, v15, 0xff

    .line 233
    .local v0, "blue":I
    if-eqz p9, :cond_1

    .line 235
    const/16 v1, 0x91

    if-lt v4, v1, :cond_0

    .line 234
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v1, v4, v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    int-to-float v1, v4

    int-to-float v2, v7

    const v16, 0x3f970a3d    # 1.18f

    mul-float v2, v2, v16

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    int-to-float v1, v4

    int-to-float v2, v0

    const v16, 0x3f8f5c29    # 1.12f

    mul-float v2, v2, v16

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .line 238
    :cond_1
    nop

    .line 236
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x78

    if-lt v1, v2, :cond_2

    .line 237
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0xf6

    if-gt v1, v2, :cond_2

    .line 238
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 239
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x2d

    if-gt v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    nop

    .line 240
    .local v1, "match":Z
    if-eqz v1, :cond_3

    .line 241
    add-int/lit8 v10, v10, 0x1

    .line 243
    :cond_3
    nop

    .end local v0    # "blue":I
    .end local v1    # "match":Z
    .end local v4    # "red":I
    .end local v7    # "green":I
    .end local v15    # "color":I
    add-int/lit8 v11, v11, 0x1

    .line 228
    add-int/2addr v13, v3

    move/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v14, p8

    .line 227
    .end local v13    # "x":I
    add-int/2addr v12, v3

    move/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v14, p8

    .line 246
    .end local v12    # "y":I
    if-nez v11, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    int-to-float v0, v10

    int-to-float v1, v11

    div-float/2addr v0, v1

    :goto_3
    return v0
.end method
