.class final Lcom/pikminx/helper/CardHighlight;
.super Ljava/lang/Object;
.source "CardHighlight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/CardHighlight$Point;,
        Lcom/pikminx/helper/CardHighlight$Bounds;,
        Lcom/pikminx/helper/CardHighlight$MapEntryMatch;,
        Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;
    }
.end annotation


# static fields
.field private static final BOTTOM:D = 0.98

.field private static final LEFT:D = 0.08

.field private static final RIGHT:D = 0.97

.field private static final TOP:D = 0.22


# direct methods
.method public static synthetic $r8$lambda$AWxyedzraNwy__83bboGUV1hkCI(I)Z
    .locals 0

    invoke-static {p0}, Lcom/pikminx/helper/CardHighlight;->isPetalBlue(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IgyccxyK6vKICqGDAvcFvU9JBjg(I)Z
    .locals 0

    invoke-static {p0}, Lcom/pikminx/helper/CardHighlight;->isPetalYellow(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Jy3_sXh4fF28RvPVfJtF1_hgXzE(I)Z
    .locals 0

    invoke-static {p0}, Lcom/pikminx/helper/CardHighlight;->isGreen(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$prToJRrK3dcZboSp48ggFphVe9k(I)Z
    .locals 0

    invoke-static {p0}, Lcom/pikminx/helper/CardHighlight;->isWarmStop(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$un2HtbyPfSuNW052ji6IOwGkdME(I)Z
    .locals 0

    invoke-static {p0}, Lcom/pikminx/helper/CardHighlight;->isPetalRed(I)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static colorCenterAt(IIFFILjava/util/function/IntPredicate;Ljava/util/function/IntBinaryOperator;)I
    .locals 6
    .param p0, "y"    # I
    .param p1, "width"    # I
    .param p2, "leftFraction"    # F
    .param p3, "rightFraction"    # F
    .param p4, "minimumPixels"    # I
    .param p5, "colorPredicate"    # Ljava/util/function/IntPredicate;
    .param p6, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "sumX":I
    const/4 v1, 0x0

    .line 343
    .local v1, "count":I
    int-to-float v2, p1

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 344
    .local v2, "left":I
    int-to-float v3, p1

    mul-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 345
    .local v3, "right":I
    move v4, v2

    .local v4, "x":I
    :goto_0
    if-gt v4, v3, :cond_1

    .line 346
    invoke-interface {p6, v4, p0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v5

    invoke-interface {p5, v5}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 347
    add-int/2addr v0, v4

    .line 348
    add-int/lit8 v1, v1, 0x1

    .line 345
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 351
    .end local v4    # "x":I
    :cond_1
    if-lt v1, p4, :cond_2

    div-int v4, v0, v1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_1
    return v4
.end method

.method static contains(IIII)Z
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 458
    int-to-double v0, p2

    int-to-double v2, p0

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    int-to-double v0, p2

    int-to-double v2, p0

    const-wide v4, 0x3fef0a3d70a3d70aL    # 0.97

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    int-to-double v0, p3

    int-to-double v2, p1

    const-wide v4, 0x3fcc28f5c28f5c29L    # 0.22

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    int-to-double v0, p3

    int-to-double v2, p1

    const-wide v4, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static countWhistleCyan(IIIILjava/util/function/IntBinaryOperator;)I
    .locals 4
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "count":I
    move v1, p1

    .local v1, "y":I
    :goto_0
    if-gt v1, p3, :cond_2

    .line 166
    move v2, p0

    .local v2, "x":I
    :goto_1
    if-gt v2, p2, :cond_1

    .line 167
    invoke-interface {p4, v2, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v3

    invoke-static {v3}, Lcom/pikminx/helper/CardHighlight;->isWhistleCyan(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 166
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    .end local v2    # "x":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "y":I
    :cond_2
    return v0
.end method

.method private static enqueueWhistleLight(IIII[Z[IILjava/util/function/IntBinaryOperator;)I
    .locals 4
    .param p0, "index"    # I
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "regionWidth"    # I
    .param p4, "visited"    # [Z
    .param p5, "queue"    # [I
    .param p6, "tail"    # I
    .param p7, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 146
    aget-boolean v0, p4, p0

    if-eqz v0, :cond_0

    .line 147
    return p6

    .line 149
    :cond_0
    const/4 v0, 0x1

    aput-boolean v0, p4, p0

    .line 150
    rem-int v0, p0, p3

    .line 151
    .local v0, "x":I
    div-int v1, p0, p3

    .line 152
    .local v1, "y":I
    add-int v2, p1, v0

    add-int v3, p2, v1

    invoke-interface {p7, v2, v3}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v2

    invoke-static {v2}, Lcom/pikminx/helper/CardHighlight;->isWhistleLight(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    add-int/lit8 v2, p6, 0x1

    .end local p6    # "tail":I
    .local v2, "tail":I
    aput p0, p5, p6

    move p6, v2

    .line 155
    .end local v2    # "tail":I
    .restart local p6    # "tail":I
    :cond_1
    return p6
.end method

.method private static findControl(IILcom/pikminx/helper/CardHighlight$Bounds;Ljava/util/function/IntPredicate;Ljava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    .locals 16
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "bounds"    # Lcom/pikminx/helper/CardHighlight$Bounds;
    .param p3, "ringColor"    # Ljava/util/function/IntPredicate;
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 311
    move/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    int-to-float v0, v7

    const v1, 0x3d0f5c29    # 0.035f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 312
    .local v11, "xRadius":I
    int-to-float v0, v8

    const v2, 0x3c8b4396    # 0.017f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 313
    .local v12, "yRadius":I
    div-int/lit16 v0, v7, 0xa0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 314
    .local v13, "step":I
    invoke-virtual/range {p2 .. p2}, Lcom/pikminx/helper/CardHighlight$Bounds;->top()I

    move-result v0

    move v14, v0

    .local v14, "y":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/pikminx/helper/CardHighlight$Bounds;->bottom()I

    move-result v0

    if-gt v14, v0, :cond_3

    .line 315
    invoke-virtual/range {p2 .. p2}, Lcom/pikminx/helper/CardHighlight$Bounds;->left()I

    move-result v0

    move v15, v0

    .local v15, "x":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/pikminx/helper/CardHighlight$Bounds;->right()I

    move-result v0

    if-gt v15, v0, :cond_2

    .line 316
    sub-int v0, v15, v11

    if-ltz v0, :cond_1

    add-int v0, v15, v11

    if-ge v0, v7, :cond_1

    sub-int v0, v14, v12

    if-ltz v0, :cond_1

    add-int v0, v14, v12

    if-lt v0, v8, :cond_0

    .line 318
    goto :goto_2

    .line 320
    :cond_0
    invoke-interface {v10, v15, v14}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/pikminx/helper/CardHighlight;->isLight(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sub-int v0, v15, v11

    .line 321
    invoke-interface {v10, v0, v14}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    invoke-interface {v9, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int v0, v15, v11

    .line 322
    invoke-interface {v10, v0, v14}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    invoke-interface {v9, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sub-int v0, v14, v12

    .line 323
    invoke-interface {v10, v15, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    invoke-interface {v9, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int v0, v14, v12

    .line 324
    invoke-interface {v10, v15, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    invoke-interface {v9, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    move v0, v15

    move v1, v14

    move/from16 v2, p0

    move/from16 v3, p1

    move v4, v11

    move v5, v12

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/CardHighlight;->refineLightCenter(IIIIIILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v0

    return-object v0

    .line 315
    :cond_1
    :goto_2
    add-int/2addr v15, v13

    goto :goto_1

    .line 314
    .end local v15    # "x":I
    :cond_2
    add-int/2addr v14, v13

    goto :goto_0

    .line 330
    .end local v14    # "y":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method static findMapPlantingEntryAboveWhistle(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$MapEntryMatch;
    .locals 39
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 47
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v10, p2

    int-to-float v2, v0

    const v3, 0x3f428f5c    # 0.76f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 48
    .local v11, "left":I
    int-to-float v2, v1

    const v3, 0x3f47ae14    # 0.78f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 49
    .local v12, "top":I
    add-int/lit8 v2, v0, -0x1

    int-to-float v3, v0

    const v4, 0x3f7ae148    # 0.98f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 50
    .local v13, "right":I
    add-int/lit8 v2, v1, -0x1

    int-to-float v3, v1

    const v4, 0x3f7851ec    # 0.97f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 51
    .local v14, "bottom":I
    new-instance v2, Lcom/pikminx/helper/CardHighlight$Bounds;

    invoke-direct {v2, v11, v12, v13, v14}, Lcom/pikminx/helper/CardHighlight$Bounds;-><init>(IIII)V

    move-object v15, v2

    .line 52
    .local v15, "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    sub-int v2, v13, v11

    const/16 v16, 0x1

    add-int/lit8 v9, v2, 0x1

    .line 53
    .local v9, "regionWidth":I
    sub-int v2, v14, v12

    add-int/lit8 v8, v2, 0x1

    .line 54
    .local v8, "regionHeight":I
    mul-int v2, v9, v8

    new-array v7, v2, [Z

    .line 55
    .local v7, "visited":[Z
    array-length v2, v7

    new-array v6, v2, [I

    .line 56
    .local v6, "queue":[I
    const/4 v2, 0x0

    .line 57
    .local v2, "bestAnchor":Lcom/pikminx/helper/CardHighlight$Point;
    const/4 v3, -0x1

    .line 58
    .local v3, "bestScore":I
    mul-int v4, v0, v1

    div-int/lit16 v4, v4, 0x1770

    const/16 v5, 0x32

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 59
    .local v5, "minimumBodyPixels":I
    const/4 v4, 0x0

    .local v4, "localY":I
    :goto_0
    move/from16 v17, v13

    .end local v13    # "right":I
    .local v17, "right":I
    if-ge v4, v8, :cond_b

    .line 60
    const/16 v18, 0x0

    move/from16 v38, v18

    move-object/from16 v18, v2

    move/from16 v2, v38

    .local v2, "localX":I
    .local v18, "bestAnchor":Lcom/pikminx/helper/CardHighlight$Point;
    :goto_1
    if-ge v2, v9, :cond_a

    .line 61
    mul-int v19, v4, v9

    add-int v19, v19, v2

    .line 62
    .local v19, "start":I
    aget-boolean v20, v7, v19

    if-eqz v20, :cond_0

    .line 63
    move/from16 v22, v2

    move/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v36, v7

    move-object v7, v10

    move/from16 v28, v14

    move-object/from16 v35, v15

    move v6, v3

    move v15, v5

    move v10, v8

    move v14, v9

    goto/16 :goto_5

    .line 65
    :cond_0
    aput-boolean v16, v7, v19

    .line 66
    add-int v13, v11, v2

    move/from16 v21, v3

    .end local v3    # "bestScore":I
    .local v21, "bestScore":I
    add-int v3, v12, v4

    invoke-interface {v10, v13, v3}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v3

    invoke-static {v3}, Lcom/pikminx/helper/CardHighlight;->isWhistleLight(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    move/from16 v22, v2

    move/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v36, v7

    move-object v7, v10

    move/from16 v28, v14

    move-object/from16 v35, v15

    move/from16 v6, v21

    move v15, v5

    move v10, v8

    move v14, v9

    goto/16 :goto_5

    .line 69
    :cond_1
    const/4 v3, 0x0

    .line 70
    .local v3, "head":I
    const/4 v13, 0x0

    .line 71
    .local v13, "tail":I
    const/16 v22, 0x0

    .line 72
    .local v22, "pixels":I
    const/16 v23, 0x0

    .line 73
    .local v23, "sumX":I
    const/16 v24, 0x0

    .line 74
    .local v24, "sumY":I
    move/from16 v25, v2

    .line 75
    .local v25, "minX":I
    move/from16 v26, v2

    .line 76
    .local v26, "maxX":I
    move/from16 v27, v4

    .line 77
    .local v27, "minY":I
    move/from16 v28, v4

    .line 78
    .local v28, "maxY":I
    add-int/lit8 v29, v13, 0x1

    .end local v13    # "tail":I
    .local v29, "tail":I
    aput v19, v6, v13

    move/from16 v13, v22

    move/from16 v22, v2

    move/from16 v25, v4

    move/from16 v4, v26

    move/from16 v26, v5

    move/from16 v5, v27

    move/from16 v27, v8

    move/from16 v8, v28

    move/from16 v28, v14

    move/from16 v14, v29

    .line 79
    .end local v29    # "tail":I
    .local v2, "minX":I
    .local v4, "maxX":I
    .local v5, "minY":I
    .local v8, "maxY":I
    .local v13, "pixels":I
    .local v14, "tail":I
    .local v22, "localX":I
    .local v25, "localY":I
    .local v26, "minimumBodyPixels":I
    .local v27, "regionHeight":I
    .local v28, "bottom":I
    :goto_2
    if-ge v3, v14, :cond_6

    .line 80
    add-int/lit8 v29, v3, 0x1

    .end local v3    # "head":I
    .local v29, "head":I
    aget v30, v6, v3

    .line 81
    .local v30, "current":I
    rem-int v3, v30, v9

    .line 82
    .local v3, "x":I
    div-int v1, v30, v9

    .line 83
    .local v1, "y":I
    add-int/lit8 v13, v13, 0x1

    .line 84
    add-int v31, v11, v3

    add-int v23, v23, v31

    .line 85
    add-int v31, v12, v1

    add-int v24, v24, v31

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 87
    .end local v2    # "minX":I
    .local v31, "minX":I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 88
    .end local v4    # "maxX":I
    .local v32, "maxX":I
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    .line 89
    .end local v5    # "minY":I
    .local v33, "minY":I
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 90
    .end local v8    # "maxY":I
    .local v34, "maxY":I
    if-lez v3, :cond_2

    .line 91
    add-int/lit8 v2, v30, -0x1

    move/from16 v8, v21

    move/from16 v21, v3

    .end local v3    # "x":I
    .local v8, "bestScore":I
    .local v21, "x":I
    move v3, v11

    move v4, v12

    move-object/from16 v35, v15

    move/from16 v15, v26

    .end local v26    # "minimumBodyPixels":I
    .local v15, "minimumBodyPixels":I
    .local v35, "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    move v5, v9

    move-object/from16 v26, v6

    .end local v6    # "queue":[I
    .local v26, "queue":[I
    move-object v6, v7

    move-object/from16 v36, v7

    .end local v7    # "visited":[Z
    .local v36, "visited":[Z
    move-object/from16 v7, v26

    move/from16 v37, v8

    move/from16 v10, v27

    .end local v8    # "bestScore":I
    .end local v27    # "regionHeight":I
    .local v10, "regionHeight":I
    .local v37, "bestScore":I
    move v8, v14

    move/from16 v27, v14

    move v14, v9

    .end local v9    # "regionWidth":I
    .local v14, "regionWidth":I
    .local v27, "tail":I
    move-object/from16 v9, p2

    invoke-static/range {v2 .. v9}, Lcom/pikminx/helper/CardHighlight;->enqueueWhistleLight(IIII[Z[IILjava/util/function/IntBinaryOperator;)I

    move-result v2

    move/from16 v27, v2

    .end local v27    # "tail":I
    .local v2, "tail":I
    goto :goto_3

    .line 90
    .end local v2    # "tail":I
    .end local v10    # "regionHeight":I
    .end local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .end local v36    # "visited":[Z
    .end local v37    # "bestScore":I
    .restart local v3    # "x":I
    .restart local v6    # "queue":[I
    .restart local v7    # "visited":[Z
    .restart local v9    # "regionWidth":I
    .local v14, "tail":I
    .local v15, "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .local v21, "bestScore":I
    .local v26, "minimumBodyPixels":I
    .local v27, "regionHeight":I
    :cond_2
    move-object/from16 v36, v7

    move-object/from16 v35, v15

    move/from16 v37, v21

    move/from16 v15, v26

    move/from16 v10, v27

    move/from16 v21, v3

    move-object/from16 v26, v6

    move/from16 v27, v14

    move v14, v9

    .line 95
    .end local v3    # "x":I
    .end local v6    # "queue":[I
    .end local v7    # "visited":[Z
    .end local v9    # "regionWidth":I
    .restart local v10    # "regionHeight":I
    .local v14, "regionWidth":I
    .local v15, "minimumBodyPixels":I
    .local v21, "x":I
    .local v26, "queue":[I
    .local v27, "tail":I
    .restart local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .restart local v36    # "visited":[Z
    .restart local v37    # "bestScore":I
    :goto_3
    add-int/lit8 v3, v21, 0x1

    if-ge v3, v14, :cond_3

    .line 96
    add-int/lit8 v2, v30, 0x1

    move v3, v11

    move v4, v12

    move v5, v14

    move-object/from16 v6, v36

    move-object/from16 v7, v26

    move/from16 v8, v27

    move-object/from16 v9, p2

    invoke-static/range {v2 .. v9}, Lcom/pikminx/helper/CardHighlight;->enqueueWhistleLight(IIII[Z[IILjava/util/function/IntBinaryOperator;)I

    move-result v27

    .line 100
    :cond_3
    if-lez v1, :cond_4

    .line 101
    sub-int v2, v30, v14

    move v3, v11

    move v4, v12

    move v5, v14

    move-object/from16 v6, v36

    move-object/from16 v7, v26

    move/from16 v8, v27

    move-object/from16 v9, p2

    invoke-static/range {v2 .. v9}, Lcom/pikminx/helper/CardHighlight;->enqueueWhistleLight(IIII[Z[IILjava/util/function/IntBinaryOperator;)I

    move-result v27

    .line 105
    :cond_4
    add-int/lit8 v2, v1, 0x1

    if-ge v2, v10, :cond_5

    .line 106
    add-int v2, v30, v14

    move v3, v11

    move v4, v12

    move v5, v14

    move-object/from16 v6, v36

    move-object/from16 v7, v26

    move/from16 v8, v27

    move-object/from16 v9, p2

    invoke-static/range {v2 .. v9}, Lcom/pikminx/helper/CardHighlight;->enqueueWhistleLight(IIII[Z[IILjava/util/function/IntBinaryOperator;)I

    move-result v2

    .end local v27    # "tail":I
    .restart local v2    # "tail":I
    goto :goto_4

    .line 105
    .end local v2    # "tail":I
    .restart local v27    # "tail":I
    :cond_5
    move/from16 v2, v27

    .line 110
    .end local v1    # "y":I
    .end local v21    # "x":I
    .end local v27    # "tail":I
    .end local v30    # "current":I
    .restart local v2    # "tail":I
    :goto_4
    move/from16 v1, p1

    move/from16 v27, v10

    move v9, v14

    move-object/from16 v6, v26

    move/from16 v3, v29

    move/from16 v4, v32

    move/from16 v5, v33

    move/from16 v8, v34

    move-object/from16 v7, v36

    move/from16 v21, v37

    move-object/from16 v10, p2

    move v14, v2

    move/from16 v26, v15

    move/from16 v2, v31

    move-object/from16 v15, v35

    goto/16 :goto_2

    .line 111
    .end local v10    # "regionHeight":I
    .end local v29    # "head":I
    .end local v31    # "minX":I
    .end local v32    # "maxX":I
    .end local v33    # "minY":I
    .end local v34    # "maxY":I
    .end local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .end local v36    # "visited":[Z
    .end local v37    # "bestScore":I
    .local v2, "minX":I
    .local v3, "head":I
    .restart local v4    # "maxX":I
    .restart local v5    # "minY":I
    .restart local v6    # "queue":[I
    .restart local v7    # "visited":[Z
    .local v8, "maxY":I
    .restart local v9    # "regionWidth":I
    .local v14, "tail":I
    .local v15, "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .local v21, "bestScore":I
    .local v26, "minimumBodyPixels":I
    .local v27, "regionHeight":I
    :cond_6
    move-object/from16 v36, v7

    move-object/from16 v35, v15

    move/from16 v37, v21

    move/from16 v15, v26

    move/from16 v10, v27

    move-object/from16 v26, v6

    move/from16 v27, v14

    move v14, v9

    .end local v6    # "queue":[I
    .end local v7    # "visited":[Z
    .end local v9    # "regionWidth":I
    .end local v21    # "bestScore":I
    .restart local v10    # "regionHeight":I
    .local v14, "regionWidth":I
    .local v15, "minimumBodyPixels":I
    .local v26, "queue":[I
    .local v27, "tail":I
    .restart local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .restart local v36    # "visited":[Z
    .restart local v37    # "bestScore":I
    if-ge v13, v15, :cond_7

    .line 112
    move-object/from16 v7, p2

    move/from16 v6, v37

    goto :goto_5

    .line 114
    :cond_7
    div-int/lit8 v1, v0, 0x64

    const/4 v6, 0x4

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 115
    .local v1, "padding":I
    sub-int v6, v2, v1

    .line 116
    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v11

    sub-int v9, v5, v1

    .line 117
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v9, v12

    add-int/lit8 v7, v14, -0x1

    add-int v0, v4, v1

    .line 118
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v11

    add-int/lit8 v7, v10, -0x1

    move/from16 v21, v2

    .end local v2    # "minX":I
    .local v21, "minX":I
    add-int v2, v8, v1

    .line 119
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v12

    .line 115
    move-object/from16 v7, p2

    invoke-static {v6, v9, v0, v2, v7}, Lcom/pikminx/helper/CardHighlight;->countWhistleCyan(IIIILjava/util/function/IntBinaryOperator;)I

    move-result v0

    .line 121
    .local v0, "cyanPixels":I
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v13

    .line 122
    .local v2, "score":I
    div-int/lit8 v6, v13, 0x1e

    const/16 v9, 0x8

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lt v0, v6, :cond_9

    move/from16 v6, v37

    .end local v37    # "bestScore":I
    .local v6, "bestScore":I
    if-le v2, v6, :cond_8

    .line 123
    new-instance v9, Lcom/pikminx/helper/CardHighlight$Point;

    move/from16 v29, v0

    .end local v0    # "cyanPixels":I
    .local v29, "cyanPixels":I
    div-int v0, v23, v13

    move/from16 v30, v1

    .end local v1    # "padding":I
    .local v30, "padding":I
    div-int v1, v24, v13

    invoke-direct {v9, v0, v1}, Lcom/pikminx/helper/CardHighlight$Point;-><init>(II)V

    move-object/from16 v18, v9

    .line 124
    move v0, v2

    move v3, v0

    .end local v6    # "bestScore":I
    .local v0, "bestScore":I
    goto :goto_6

    .line 122
    .end local v29    # "cyanPixels":I
    .end local v30    # "padding":I
    .local v0, "cyanPixels":I
    .restart local v1    # "padding":I
    .restart local v6    # "bestScore":I
    :cond_8
    move/from16 v29, v0

    move/from16 v30, v1

    .end local v0    # "cyanPixels":I
    .end local v1    # "padding":I
    .restart local v29    # "cyanPixels":I
    .restart local v30    # "padding":I
    goto :goto_5

    .end local v6    # "bestScore":I
    .end local v29    # "cyanPixels":I
    .end local v30    # "padding":I
    .restart local v0    # "cyanPixels":I
    .restart local v1    # "padding":I
    .restart local v37    # "bestScore":I
    :cond_9
    move/from16 v29, v0

    move/from16 v30, v1

    move/from16 v6, v37

    .line 60
    .end local v0    # "cyanPixels":I
    .end local v1    # "padding":I
    .end local v10    # "regionHeight":I
    .end local v13    # "pixels":I
    .end local v19    # "start":I
    .end local v21    # "minX":I
    .end local v22    # "localX":I
    .end local v23    # "sumX":I
    .end local v24    # "sumY":I
    .end local v25    # "localY":I
    .end local v26    # "queue":[I
    .end local v27    # "tail":I
    .end local v28    # "bottom":I
    .end local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .end local v36    # "visited":[Z
    .end local v37    # "bestScore":I
    .local v2, "localX":I
    .local v3, "bestScore":I
    .local v4, "localY":I
    .local v5, "minimumBodyPixels":I
    .local v6, "queue":[I
    .restart local v7    # "visited":[Z
    .local v8, "regionHeight":I
    .restart local v9    # "regionWidth":I
    .local v14, "bottom":I
    .local v15, "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    :goto_5
    move v3, v6

    .end local v2    # "localX":I
    .end local v4    # "localY":I
    .end local v5    # "minimumBodyPixels":I
    .end local v6    # "queue":[I
    .end local v7    # "visited":[Z
    .end local v8    # "regionHeight":I
    .end local v9    # "regionWidth":I
    .restart local v10    # "regionHeight":I
    .local v14, "regionWidth":I
    .local v15, "minimumBodyPixels":I
    .restart local v22    # "localX":I
    .restart local v25    # "localY":I
    .restart local v26    # "queue":[I
    .restart local v28    # "bottom":I
    .restart local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .restart local v36    # "visited":[Z
    :goto_6
    add-int/lit8 v2, v22, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    move v8, v10

    move v9, v14

    move v5, v15

    move/from16 v4, v25

    move-object/from16 v6, v26

    move/from16 v14, v28

    move-object/from16 v15, v35

    move-object v10, v7

    move-object/from16 v7, v36

    .end local v22    # "localX":I
    .restart local v2    # "localX":I
    goto/16 :goto_1

    .end local v10    # "regionHeight":I
    .end local v25    # "localY":I
    .end local v26    # "queue":[I
    .end local v28    # "bottom":I
    .end local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .end local v36    # "visited":[Z
    .restart local v4    # "localY":I
    .restart local v5    # "minimumBodyPixels":I
    .restart local v6    # "queue":[I
    .restart local v7    # "visited":[Z
    .restart local v8    # "regionHeight":I
    .restart local v9    # "regionWidth":I
    .local v14, "bottom":I
    .local v15, "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    :cond_a
    move/from16 v22, v2

    move/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v36, v7

    move-object v7, v10

    move/from16 v28, v14

    move-object/from16 v35, v15

    move v6, v3

    move v15, v5

    move v10, v8

    move v14, v9

    .line 59
    .end local v2    # "localX":I
    .end local v3    # "bestScore":I
    .end local v4    # "localY":I
    .end local v5    # "minimumBodyPixels":I
    .end local v7    # "visited":[Z
    .end local v8    # "regionHeight":I
    .end local v9    # "regionWidth":I
    .local v6, "bestScore":I
    .restart local v10    # "regionHeight":I
    .local v14, "regionWidth":I
    .local v15, "minimumBodyPixels":I
    .restart local v25    # "localY":I
    .restart local v26    # "queue":[I
    .restart local v28    # "bottom":I
    .restart local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .restart local v36    # "visited":[Z
    add-int/lit8 v4, v25, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v13, v17

    move-object/from16 v2, v18

    move-object/from16 v6, v26

    move/from16 v14, v28

    move-object/from16 v15, v35

    move-object v10, v7

    move-object/from16 v7, v36

    .end local v25    # "localY":I
    .restart local v4    # "localY":I
    goto/16 :goto_0

    .end local v10    # "regionHeight":I
    .end local v18    # "bestAnchor":Lcom/pikminx/helper/CardHighlight$Point;
    .end local v26    # "queue":[I
    .end local v28    # "bottom":I
    .end local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .end local v36    # "visited":[Z
    .local v2, "bestAnchor":Lcom/pikminx/helper/CardHighlight$Point;
    .restart local v3    # "bestScore":I
    .restart local v5    # "minimumBodyPixels":I
    .local v6, "queue":[I
    .restart local v7    # "visited":[Z
    .restart local v8    # "regionHeight":I
    .restart local v9    # "regionWidth":I
    .local v14, "bottom":I
    .local v15, "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    :cond_b
    move/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v36, v7

    move-object v7, v10

    move/from16 v28, v14

    move-object/from16 v35, v15

    move v15, v5

    move v10, v8

    move v14, v9

    .line 128
    .end local v4    # "localY":I
    .end local v5    # "minimumBodyPixels":I
    .end local v6    # "queue":[I
    .end local v7    # "visited":[Z
    .end local v8    # "regionHeight":I
    .end local v9    # "regionWidth":I
    .restart local v10    # "regionHeight":I
    .local v14, "regionWidth":I
    .local v15, "minimumBodyPixels":I
    .restart local v26    # "queue":[I
    .restart local v28    # "bottom":I
    .restart local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .restart local v36    # "visited":[Z
    if-nez v2, :cond_c

    .line 129
    new-instance v0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;

    const/4 v1, -0x1

    const/4 v4, 0x0

    move-object/from16 v5, v35

    .end local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .local v5, "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    invoke-direct {v0, v4, v4, v5, v1}, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;-><init>(Lcom/pikminx/helper/CardHighlight$Point;Lcom/pikminx/helper/CardHighlight$Point;Lcom/pikminx/helper/CardHighlight$Bounds;I)V

    return-object v0

    .line 131
    .end local v5    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .restart local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    :cond_c
    move-object/from16 v5, v35

    .end local v35    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    .restart local v5    # "searchBounds":Lcom/pikminx/helper/CardHighlight$Bounds;
    new-instance v0, Lcom/pikminx/helper/CardHighlight$Point;

    .line 132
    invoke-virtual {v2}, Lcom/pikminx/helper/CardHighlight$Point;->x()I

    move-result v1

    .line 133
    invoke-virtual {v2}, Lcom/pikminx/helper/CardHighlight$Point;->y()I

    move-result v4

    move/from16 v6, p1

    int-to-float v8, v6

    const v9, 0x3e3126e9    # 0.173f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v4, v8

    const/4 v8, 0x0

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v0, v1, v4}, Lcom/pikminx/helper/CardHighlight$Point;-><init>(II)V

    .line 134
    .local v0, "entry":Lcom/pikminx/helper/CardHighlight$Point;
    new-instance v1, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;

    invoke-direct {v1, v0, v2, v5, v3}, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;-><init>(Lcom/pikminx/helper/CardHighlight$Point;Lcom/pikminx/helper/CardHighlight$Point;Lcom/pikminx/helper/CardHighlight$Bounds;I)V

    return-object v1
.end method

.method private static findNeutralDarkControl(IIFLjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    .locals 38
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "xFraction"    # F
    .param p3, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 631
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    int-to-float v3, v0

    const v4, 0x3d0f5c29    # 0.035f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 632
    .local v3, "radius":I
    int-to-float v4, v1

    const v5, 0x3de147ae    # 0.11f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 633
    .local v4, "startY":I
    int-to-float v5, v1

    const v6, 0x3e75c28f    # 0.24f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 634
    .local v5, "endY":I
    int-to-float v6, v0

    const v7, 0x3ccccccd    # 0.025f

    sub-float v8, p2, v7

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v6, v3

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 635
    .local v6, "minX":I
    add-int/lit8 v9, v0, -0x1

    int-to-float v10, v0

    add-float v11, p2, v7

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 636
    .local v9, "maxX":I
    sub-int v10, v4, v3

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 637
    .local v10, "topY":I
    add-int/lit8 v11, v1, -0x1

    add-int v12, v5, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 638
    .local v11, "bottomY":I
    sub-int v12, v9, v6

    const/4 v13, 0x1

    add-int/2addr v12, v13

    .line 639
    .local v12, "scanWidth":I
    sub-int v14, v11, v10

    add-int/2addr v14, v13

    .line 640
    .local v14, "scanHeight":I
    if-lez v12, :cond_10

    if-gtz v14, :cond_0

    move/from16 v34, v3

    move/from16 v22, v4

    move/from16 v24, v5

    move/from16 v23, v9

    move/from16 v20, v11

    move/from16 v29, v12

    move/from16 v26, v14

    goto/16 :goto_8

    .line 644
    :cond_0
    add-int/lit8 v16, v12, 0x1

    .line 645
    .local v16, "stride":I
    add-int/lit8 v17, v14, 0x1

    mul-int v15, v16, v17

    new-array v15, v15, [I

    .line 646
    .local v15, "sat":[I
    const/16 v17, 0x0

    move/from16 v13, v17

    .local v13, "y":I
    :goto_0
    if-ge v13, v14, :cond_3

    .line 647
    add-int/lit8 v17, v13, 0x1

    mul-int v17, v17, v16

    .line 648
    .local v17, "rowOffset":I
    mul-int v19, v13, v16

    .line 649
    .local v19, "prevRowOffset":I
    const/16 v20, 0x0

    .line 650
    .local v20, "rowSum":I
    add-int v8, v10, v13

    .line 651
    .local v8, "screenY":I
    const/16 v22, 0x0

    move/from16 v7, v22

    .local v7, "x":I
    :goto_1
    if-ge v7, v12, :cond_2

    .line 652
    move/from16 v23, v9

    .end local v9    # "maxX":I
    .local v23, "maxX":I
    add-int v9, v6, v7

    invoke-interface {v2, v9, v8}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    invoke-static {v9}, Lcom/pikminx/helper/CardHighlight;->isNeutralDark(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 653
    add-int/lit8 v20, v20, 0x1

    .line 655
    :cond_1
    add-int/lit8 v9, v7, 0x1

    add-int v9, v17, v9

    add-int/lit8 v24, v7, 0x1

    add-int v24, v19, v24

    aget v24, v15, v24

    add-int v24, v24, v20

    aput v24, v15, v9

    .line 651
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v23

    goto :goto_1

    .end local v23    # "maxX":I
    .restart local v9    # "maxX":I
    :cond_2
    move/from16 v23, v9

    .line 646
    .end local v7    # "x":I
    .end local v8    # "screenY":I
    .end local v9    # "maxX":I
    .end local v17    # "rowOffset":I
    .end local v19    # "prevRowOffset":I
    .end local v20    # "rowSum":I
    .restart local v23    # "maxX":I
    add-int/lit8 v13, v13, 0x1

    const v7, 0x3ccccccd    # 0.025f

    const/4 v8, 0x0

    goto :goto_0

    .end local v23    # "maxX":I
    .restart local v9    # "maxX":I
    :cond_3
    move/from16 v23, v9

    .line 659
    .end local v9    # "maxX":I
    .end local v13    # "y":I
    .restart local v23    # "maxX":I
    int-to-float v7, v0

    const v8, 0x3ccccccd    # 0.025f

    sub-float v9, p2, v8

    mul-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v7, v6

    const/4 v9, 0x0

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 660
    .local v7, "centerMinX":I
    add-int/lit8 v9, v12, -0x1

    int-to-float v13, v0

    add-float v8, p2, v8

    mul-float/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 661
    .local v8, "centerMaxX":I
    sub-int v9, v4, v10

    .line 662
    .local v9, "centerMinY":I
    sub-int v13, v5, v10

    .line 664
    .local v13, "centerMaxY":I
    const/16 v17, -0x1

    .line 665
    .local v17, "bestLocalX":I
    const/16 v19, -0x1

    .line 666
    .local v19, "bestLocalY":I
    const/16 v20, 0x0

    .line 667
    .local v20, "bestCount":I
    move/from16 v22, v4

    .end local v4    # "startY":I
    .local v22, "startY":I
    div-int/lit8 v4, v3, 0x8

    move/from16 v24, v5

    const/4 v5, 0x1

    .end local v5    # "endY":I
    .local v24, "endY":I
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 669
    .local v4, "step":I
    move v5, v9

    move/from16 v18, v9

    move/from16 v9, v20

    .end local v20    # "bestCount":I
    .local v5, "localY":I
    .local v9, "bestCount":I
    .local v18, "centerMinY":I
    :goto_2
    if-gt v5, v13, :cond_6

    .line 670
    move/from16 v20, v11

    .end local v11    # "bottomY":I
    .local v20, "bottomY":I
    sub-int v11, v5, v3

    move/from16 v25, v13

    const/4 v13, 0x0

    .end local v13    # "centerMaxY":I
    .local v25, "centerMaxY":I
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 671
    .local v11, "y1":I
    add-int/lit8 v13, v14, -0x1

    move/from16 v26, v14

    .end local v14    # "scanHeight":I
    .local v26, "scanHeight":I
    add-int v14, v5, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 672
    .local v13, "y2":I
    move v14, v7

    .local v14, "localX":I
    :goto_3
    if-gt v14, v8, :cond_5

    .line 673
    move/from16 v27, v7

    .end local v7    # "centerMinX":I
    .local v27, "centerMinX":I
    sub-int v7, v14, v3

    move/from16 v28, v8

    const/4 v8, 0x0

    .end local v8    # "centerMaxX":I
    .local v28, "centerMaxX":I
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 674
    .local v7, "x1":I
    add-int/lit8 v8, v12, -0x1

    move/from16 v29, v12

    .end local v12    # "scanWidth":I
    .local v29, "scanWidth":I
    add-int v12, v14, v3

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 675
    .local v8, "x2":I
    add-int/lit8 v12, v13, 0x1

    mul-int v12, v12, v16

    add-int/lit8 v30, v8, 0x1

    add-int v12, v12, v30

    aget v12, v15, v12

    mul-int v30, v11, v16

    add-int/lit8 v31, v8, 0x1

    add-int v30, v30, v31

    aget v30, v15, v30

    sub-int v12, v12, v30

    add-int/lit8 v30, v13, 0x1

    mul-int v30, v30, v16

    add-int v30, v30, v7

    aget v30, v15, v30

    sub-int v12, v12, v30

    mul-int v30, v11, v16

    add-int v30, v30, v7

    aget v30, v15, v30

    add-int v12, v12, v30

    .line 679
    .local v12, "count":I
    if-le v12, v9, :cond_4

    .line 680
    move v9, v12

    .line 681
    move/from16 v17, v14

    .line 682
    move/from16 v19, v5

    .line 672
    .end local v7    # "x1":I
    .end local v8    # "x2":I
    .end local v12    # "count":I
    :cond_4
    add-int/2addr v14, v4

    move/from16 v7, v27

    move/from16 v8, v28

    move/from16 v12, v29

    goto :goto_3

    .end local v27    # "centerMinX":I
    .end local v28    # "centerMaxX":I
    .end local v29    # "scanWidth":I
    .local v7, "centerMinX":I
    .local v8, "centerMaxX":I
    .local v12, "scanWidth":I
    :cond_5
    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v29, v12

    .line 669
    .end local v7    # "centerMinX":I
    .end local v8    # "centerMaxX":I
    .end local v11    # "y1":I
    .end local v12    # "scanWidth":I
    .end local v13    # "y2":I
    .end local v14    # "localX":I
    .restart local v27    # "centerMinX":I
    .restart local v28    # "centerMaxX":I
    .restart local v29    # "scanWidth":I
    add-int/2addr v5, v4

    move/from16 v11, v20

    move/from16 v13, v25

    move/from16 v14, v26

    goto :goto_2

    .end local v20    # "bottomY":I
    .end local v25    # "centerMaxY":I
    .end local v26    # "scanHeight":I
    .end local v27    # "centerMinX":I
    .end local v28    # "centerMaxX":I
    .end local v29    # "scanWidth":I
    .restart local v7    # "centerMinX":I
    .restart local v8    # "centerMaxX":I
    .local v11, "bottomY":I
    .restart local v12    # "scanWidth":I
    .local v13, "centerMaxY":I
    .local v14, "scanHeight":I
    :cond_6
    move/from16 v27, v7

    move/from16 v28, v8

    move/from16 v20, v11

    move/from16 v29, v12

    move/from16 v25, v13

    move/from16 v26, v14

    .line 688
    .end local v5    # "localY":I
    .end local v7    # "centerMinX":I
    .end local v8    # "centerMaxX":I
    .end local v11    # "bottomY":I
    .end local v12    # "scanWidth":I
    .end local v13    # "centerMaxY":I
    .end local v14    # "scanHeight":I
    .restart local v20    # "bottomY":I
    .restart local v25    # "centerMaxY":I
    .restart local v26    # "scanHeight":I
    .restart local v27    # "centerMinX":I
    .restart local v28    # "centerMaxX":I
    .restart local v29    # "scanWidth":I
    mul-int/lit8 v5, v3, 0x3

    const/16 v7, 0x30

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ge v9, v5, :cond_7

    .line 689
    const/4 v5, 0x0

    return-object v5

    .line 692
    :cond_7
    add-int v5, v6, v17

    .line 693
    .local v5, "screenCenterX":I
    add-int v7, v10, v19

    .line 696
    .local v7, "screenCenterY":I
    const/4 v8, 0x0

    .line 697
    .local v8, "lightCount":I
    sub-int v11, v5, v3

    add-int v12, v5, v3

    filled-new-array {v11, v12, v5, v5}, [I

    move-result-object v11

    .line 698
    .local v11, "checkX":[I
    sub-int v12, v7, v3

    add-int v13, v7, v3

    filled-new-array {v7, v7, v12, v13}, [I

    move-result-object v12

    .line 699
    .local v12, "checkY":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    const/4 v14, 0x4

    if-ge v13, v14, :cond_a

    .line 700
    add-int/lit8 v14, v0, -0x1

    aget v0, v11, v13

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v14, 0x0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 701
    .local v0, "cx":I
    add-int/lit8 v14, v1, -0x1

    aget v1, v12, v13

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v14, 0x0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 702
    .local v1, "cy":I
    invoke-interface {v2, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v14

    invoke-static {v14}, Lcom/pikminx/helper/CardHighlight;->isCapsuleLight(I)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-interface {v2, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v14

    invoke-static {v14}, Lcom/pikminx/helper/CardHighlight;->isLightBackground(I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 703
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 699
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    goto :goto_4

    .line 706
    .end local v13    # "i":I
    :cond_a
    const/4 v0, 0x2

    if-ge v8, v0, :cond_b

    .line 707
    const/4 v0, 0x0

    return-object v0

    .line 710
    :cond_b
    const/4 v0, 0x0

    .line 711
    .local v0, "sumX":I
    const/4 v1, 0x0

    .line 712
    .local v1, "sumY":I
    const/4 v13, 0x0

    .line 713
    .local v13, "count":I
    sub-int v14, v17, v3

    move/from16 v30, v0

    const/4 v0, 0x0

    .end local v0    # "sumX":I
    .local v30, "sumX":I
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 714
    .local v14, "x1":I
    add-int/lit8 v0, v29, -0x1

    move/from16 v31, v1

    .end local v1    # "sumY":I
    .local v31, "sumY":I
    add-int v1, v17, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 715
    .local v0, "x2":I
    sub-int v1, v19, v3

    move/from16 v32, v4

    const/4 v4, 0x0

    .end local v4    # "step":I
    .local v32, "step":I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 716
    .local v1, "y1":I
    add-int/lit8 v4, v26, -0x1

    move/from16 v21, v5

    .end local v5    # "screenCenterX":I
    .local v21, "screenCenterX":I
    add-int v5, v19, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 717
    .local v4, "y2":I
    move v5, v1

    .local v5, "y":I
    :goto_5
    if-gt v5, v4, :cond_e

    .line 718
    move/from16 v33, v1

    .end local v1    # "y1":I
    .local v33, "y1":I
    add-int v1, v10, v5

    .line 719
    .local v1, "screenY":I
    move/from16 v34, v14

    move/from16 v37, v34

    move/from16 v34, v3

    move/from16 v3, v37

    .local v3, "x":I
    .local v34, "radius":I
    :goto_6
    if-gt v3, v0, :cond_d

    .line 720
    move/from16 v35, v0

    .end local v0    # "x2":I
    .local v35, "x2":I
    add-int v0, v6, v3

    .line 721
    .local v0, "screenX":I
    invoke-interface {v2, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v36

    invoke-static/range {v36 .. v36}, Lcom/pikminx/helper/CardHighlight;->isNeutralDark(I)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 722
    add-int v30, v30, v0

    .line 723
    add-int v31, v31, v1

    .line 724
    add-int/lit8 v13, v13, 0x1

    .line 719
    .end local v0    # "screenX":I
    :cond_c
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v35

    goto :goto_6

    .end local v35    # "x2":I
    .local v0, "x2":I
    :cond_d
    move/from16 v35, v0

    .line 717
    .end local v0    # "x2":I
    .end local v1    # "screenY":I
    .end local v3    # "x":I
    .restart local v35    # "x2":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v33

    move/from16 v3, v34

    goto :goto_5

    .end local v33    # "y1":I
    .end local v34    # "radius":I
    .end local v35    # "x2":I
    .restart local v0    # "x2":I
    .local v1, "y1":I
    .local v3, "radius":I
    :cond_e
    move/from16 v35, v0

    move/from16 v33, v1

    move/from16 v34, v3

    .line 728
    .end local v0    # "x2":I
    .end local v1    # "y1":I
    .end local v3    # "radius":I
    .end local v5    # "y":I
    .restart local v33    # "y1":I
    .restart local v34    # "radius":I
    .restart local v35    # "x2":I
    if-nez v13, :cond_f

    const/4 v0, 0x0

    goto :goto_7

    :cond_f
    new-instance v0, Lcom/pikminx/helper/CardHighlight$Point;

    div-int v1, v30, v13

    div-int v3, v31, v13

    invoke-direct {v0, v1, v3}, Lcom/pikminx/helper/CardHighlight$Point;-><init>(II)V

    :goto_7
    return-object v0

    .line 640
    .end local v7    # "screenCenterY":I
    .end local v8    # "lightCount":I
    .end local v13    # "count":I
    .end local v15    # "sat":[I
    .end local v16    # "stride":I
    .end local v17    # "bestLocalX":I
    .end local v18    # "centerMinY":I
    .end local v19    # "bestLocalY":I
    .end local v20    # "bottomY":I
    .end local v21    # "screenCenterX":I
    .end local v22    # "startY":I
    .end local v23    # "maxX":I
    .end local v24    # "endY":I
    .end local v25    # "centerMaxY":I
    .end local v26    # "scanHeight":I
    .end local v27    # "centerMinX":I
    .end local v28    # "centerMaxX":I
    .end local v29    # "scanWidth":I
    .end local v30    # "sumX":I
    .end local v31    # "sumY":I
    .end local v32    # "step":I
    .end local v33    # "y1":I
    .end local v34    # "radius":I
    .end local v35    # "x2":I
    .restart local v3    # "radius":I
    .local v4, "startY":I
    .local v5, "endY":I
    .local v9, "maxX":I
    .local v11, "bottomY":I
    .local v12, "scanWidth":I
    .local v14, "scanHeight":I
    :cond_10
    move/from16 v34, v3

    move/from16 v22, v4

    move/from16 v24, v5

    move/from16 v23, v9

    move/from16 v20, v11

    move/from16 v29, v12

    move/from16 v26, v14

    .line 641
    .end local v3    # "radius":I
    .end local v4    # "startY":I
    .end local v5    # "endY":I
    .end local v9    # "maxX":I
    .end local v11    # "bottomY":I
    .end local v12    # "scanWidth":I
    .end local v14    # "scanHeight":I
    .restart local v20    # "bottomY":I
    .restart local v22    # "startY":I
    .restart local v23    # "maxX":I
    .restart local v24    # "endY":I
    .restart local v26    # "scanHeight":I
    .restart local v29    # "scanWidth":I
    .restart local v34    # "radius":I
    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method static findPetalSearchButton(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 30
    const v0, 0x3f68f5c3    # 0.91f

    invoke-static {p0, p1, v0, p2}, Lcom/pikminx/helper/CardHighlight;->findNeutralDarkControl(IIFLjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v0

    return-object v0
.end method

.method static findPetalSearchCloseButton(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 180
    const v0, 0x3da3d70a    # 0.08f

    invoke-static {p0, p1, v0, p2}, Lcom/pikminx/helper/CardHighlight;->findNeutralDarkControl(IIFLjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v0

    .line 181
    .local v0, "magnifier":Lcom/pikminx/helper/CardHighlight$Point;
    if-nez v0, :cond_0

    .line 182
    const/4 v1, 0x0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v1, Lcom/pikminx/helper/CardHighlight$Point;

    int-to-float v2, p0

    const v3, 0x3f68f5c3    # 0.91f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0}, Lcom/pikminx/helper/CardHighlight$Point;->y()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/pikminx/helper/CardHighlight$Point;-><init>(II)V

    .line 181
    :goto_0
    return-object v1
.end method

.method static findPlantingMenuControls(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;
    .locals 18
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 245
    move/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    div-int/lit8 v0, v7, 0x64

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 246
    .local v10, "minimumColorPixels":I
    int-to-float v0, v8

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 247
    .local v11, "yStart":I
    int-to-float v0, v8

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 248
    .local v12, "yEnd":I
    move v0, v11

    move v13, v0

    .local v13, "y":I
    :goto_0
    if-gt v13, v12, :cond_7

    .line 249
    const v2, 0x3de147ae    # 0.11f

    const v3, 0x3e570a3d    # 0.21f

    new-instance v5, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda0;-><init>()V

    move v0, v13

    move/from16 v1, p0

    move v4, v10

    move-object/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/CardHighlight;->colorCenterAt(IIFFILjava/util/function/IntPredicate;Ljava/util/function/IntBinaryOperator;)I

    move-result v15

    .line 252
    .local v15, "yellowX":I
    const v2, 0x3e428f5c    # 0.19f

    const v3, 0x3e947ae1    # 0.29f

    new-instance v5, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda1;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/CardHighlight;->colorCenterAt(IIFFILjava/util/function/IntPredicate;Ljava/util/function/IntBinaryOperator;)I

    move-result v16

    .line 255
    .local v16, "redX":I
    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3ec28f5c    # 0.38f

    new-instance v5, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda2;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/CardHighlight;->colorCenterAt(IIFFILjava/util/function/IntPredicate;Ljava/util/function/IntBinaryOperator;)I

    move-result v0

    .line 258
    .local v0, "blueX":I
    if-ltz v15, :cond_5

    if-ltz v16, :cond_5

    if-gez v0, :cond_0

    .line 259
    goto/16 :goto_1

    .line 261
    :cond_0
    sub-int v1, v16, v15

    .line 262
    .local v1, "firstSpacing":I
    sub-int v2, v0, v16

    .line 263
    .local v2, "secondSpacing":I
    int-to-float v3, v1

    int-to-float v4, v7

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_4

    int-to-float v3, v1

    int-to-float v4, v7

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_4

    int-to-float v3, v2

    int-to-float v4, v7

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_4

    int-to-float v3, v2

    int-to-float v4, v7

    mul-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_4

    sub-int v3, v1, v2

    .line 267
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v7

    const v5, 0x3d0f5c29    # 0.035f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 268
    invoke-static {v7, v8, v13, v9}, Lcom/pikminx/helper/CardHighlight;->isLightSelectorStrip(IIILjava/util/function/IntBinaryOperator;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 269
    goto :goto_1

    .line 272
    :cond_1
    new-instance v3, Lcom/pikminx/helper/CardHighlight$Bounds;

    int-to-float v4, v7

    const v5, 0x3ca3d70a    # 0.02f

    mul-float/2addr v4, v5

    .line 273
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v6, v8

    const v17, 0x3e23d70a    # 0.16f

    mul-float v6, v6, v17

    .line 274
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v6, v13, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v14, v7, -0x1

    int-to-float v5, v7

    mul-float v5, v5, v17

    .line 275
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v14, v8

    const v17, 0x3d23d70a    # 0.04f

    mul-float v14, v14, v17

    .line 276
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v14, v13, v14

    move/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "blueX":I
    .local v17, "blueX":I
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v3, v4, v6, v5, v0}, Lcom/pikminx/helper/CardHighlight$Bounds;-><init>(IIII)V

    move-object v0, v3

    .line 277
    .local v0, "controlSearch":Lcom/pikminx/helper/CardHighlight$Bounds;
    invoke-static {v7, v8, v0, v9}, Lcom/pikminx/helper/CardHighlight;->findStartButton(IILcom/pikminx/helper/CardHighlight$Bounds;Ljava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v3

    .line 278
    .local v3, "start":Lcom/pikminx/helper/CardHighlight$Point;
    invoke-static {v7, v8, v0, v9}, Lcom/pikminx/helper/CardHighlight;->findStopButton(IILcom/pikminx/helper/CardHighlight$Bounds;Ljava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v4

    .line 279
    .local v4, "stop":Lcom/pikminx/helper/CardHighlight$Point;
    invoke-static {v7, v8, v3, v9}, Lcom/pikminx/helper/CardHighlight;->isPlantingPanelControlRow(IILcom/pikminx/helper/CardHighlight$Point;Ljava/util/function/IntBinaryOperator;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 280
    new-instance v5, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;-><init>(Lcom/pikminx/helper/CardHighlight$Point;Lcom/pikminx/helper/CardHighlight$Point;)V

    return-object v5

    .line 282
    :cond_2
    const/4 v6, 0x0

    invoke-static {v7, v8, v4, v9}, Lcom/pikminx/helper/CardHighlight;->isPlantingPanelControlRow(IILcom/pikminx/helper/CardHighlight$Point;Ljava/util/function/IntBinaryOperator;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 283
    new-instance v5, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;

    invoke-direct {v5, v6, v4}, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;-><init>(Lcom/pikminx/helper/CardHighlight$Point;Lcom/pikminx/helper/CardHighlight$Point;)V

    return-object v5

    .line 267
    .end local v3    # "start":Lcom/pikminx/helper/CardHighlight$Point;
    .end local v4    # "stop":Lcom/pikminx/helper/CardHighlight$Point;
    .end local v17    # "blueX":I
    .local v0, "blueX":I
    :cond_3
    move/from16 v17, v0

    .end local v0    # "blueX":I
    .restart local v17    # "blueX":I
    goto :goto_1

    .line 263
    .end local v17    # "blueX":I
    .restart local v0    # "blueX":I
    :cond_4
    move/from16 v17, v0

    .end local v0    # "blueX":I
    .restart local v17    # "blueX":I
    goto :goto_1

    .line 258
    .end local v1    # "firstSpacing":I
    .end local v2    # "secondSpacing":I
    .end local v17    # "blueX":I
    .restart local v0    # "blueX":I
    :cond_5
    move/from16 v17, v0

    .line 248
    .end local v0    # "blueX":I
    .end local v15    # "yellowX":I
    .end local v16    # "redX":I
    :cond_6
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 286
    .end local v13    # "y":I
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findStartButton(IILcom/pikminx/helper/CardHighlight$Bounds;Ljava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "bounds"    # Lcom/pikminx/helper/CardHighlight$Bounds;
    .param p3, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 294
    new-instance v0, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/pikminx/helper/CardHighlight;->findControl(IILcom/pikminx/helper/CardHighlight$Bounds;Ljava/util/function/IntPredicate;Ljava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v0

    return-object v0
.end method

.method static findStartButton(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    .locals 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 191
    int-to-float v0, p0

    const v1, 0x3eae147b    # 0.34f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 192
    .local v0, "xStart":I
    int-to-float v1, p0

    const v2, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 193
    .local v1, "xEnd":I
    int-to-float v2, p1

    const v3, 0x3e2e147b    # 0.17f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 194
    .local v2, "yStart":I
    int-to-float v3, p1

    const v4, 0x3f23d70a    # 0.64f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 195
    .local v3, "yEnd":I
    int-to-float v4, p0

    const v5, 0x3d0f5c29    # 0.035f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/16 v5, 0xc

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 196
    .local v4, "xRadius":I
    int-to-float v6, p1

    const v7, 0x3c8b4396    # 0.017f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 197
    .local v5, "yRadius":I
    div-int/lit16 v6, p0, 0xa0

    const/4 v7, 0x4

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 198
    .local v6, "step":I
    move v7, v2

    .local v7, "y":I
    :goto_0
    if-gt v7, v3, :cond_2

    .line 199
    move v8, v0

    .local v8, "x":I
    :goto_1
    if-gt v8, v1, :cond_1

    .line 200
    invoke-interface {p2, v8, v7}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    invoke-static {v9}, Lcom/pikminx/helper/CardHighlight;->isLight(I)Z

    move-result v9

    if-eqz v9, :cond_0

    sub-int v9, v8, v4

    .line 201
    invoke-interface {p2, v9, v7}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    invoke-static {v9}, Lcom/pikminx/helper/CardHighlight;->isGreen(I)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int v9, v8, v4

    .line 202
    invoke-interface {p2, v9, v7}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    invoke-static {v9}, Lcom/pikminx/helper/CardHighlight;->isGreen(I)Z

    move-result v9

    if-eqz v9, :cond_0

    sub-int v9, v7, v5

    .line 203
    invoke-interface {p2, v8, v9}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    invoke-static {v9}, Lcom/pikminx/helper/CardHighlight;->isGreen(I)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int v9, v7, v5

    .line 204
    invoke-interface {p2, v8, v9}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    invoke-static {v9}, Lcom/pikminx/helper/CardHighlight;->isGreen(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 205
    new-instance v9, Lcom/pikminx/helper/CardHighlight$Point;

    invoke-direct {v9, v8, v7}, Lcom/pikminx/helper/CardHighlight$Point;-><init>(II)V

    return-object v9

    .line 199
    :cond_0
    add-int/2addr v8, v6

    goto :goto_1

    .line 198
    .end local v8    # "x":I
    :cond_1
    add-int/2addr v7, v6

    goto :goto_0

    .line 209
    .end local v7    # "y":I
    :cond_2
    const/4 v7, 0x0

    return-object v7
.end method

.method private static findStopButton(IILcom/pikminx/helper/CardHighlight$Bounds;Ljava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "bounds"    # Lcom/pikminx/helper/CardHighlight$Bounds;
    .param p3, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 302
    new-instance v0, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/pikminx/helper/CardHighlight$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/pikminx/helper/CardHighlight;->findControl(IILcom/pikminx/helper/CardHighlight$Bounds;Ljava/util/function/IntPredicate;Ljava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v0

    return-object v0
.end method

.method static findStopButton(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    .locals 19
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 217
    move/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    int-to-float v0, v7

    const v1, 0x3eae147b    # 0.34f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 218
    .local v10, "xStart":I
    int-to-float v0, v7

    const v1, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 220
    .local v11, "xEnd":I
    int-to-float v0, v8

    const v1, 0x3e23d70a    # 0.16f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 221
    .local v12, "yStart":I
    int-to-float v0, v8

    const v1, 0x3f23d70a    # 0.64f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 222
    .local v13, "yEnd":I
    int-to-float v0, v7

    const v1, 0x3d0f5c29    # 0.035f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 223
    .local v14, "xRadius":I
    int-to-float v0, v8

    const v2, 0x3c8b4396    # 0.017f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 224
    .local v15, "yRadius":I
    div-int/lit16 v0, v7, 0xa0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 225
    .local v16, "step":I
    move v0, v12

    move v6, v0

    .local v6, "y":I
    :goto_0
    if-gt v6, v13, :cond_6

    .line 226
    move v0, v10

    move v5, v0

    .local v5, "x":I
    :goto_1
    if-gt v5, v11, :cond_5

    .line 227
    invoke-interface {v9, v5, v6}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/pikminx/helper/CardHighlight;->isLight(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sub-int v0, v5, v14

    .line 228
    invoke-interface {v9, v0, v6}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/pikminx/helper/CardHighlight;->isWarmStop(I)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int v0, v5, v14

    .line 229
    invoke-interface {v9, v0, v6}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/pikminx/helper/CardHighlight;->isWarmStop(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-int v0, v6, v15

    .line 230
    invoke-interface {v9, v5, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/pikminx/helper/CardHighlight;->isWarmStop(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int v0, v6, v15

    .line 231
    invoke-interface {v9, v5, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/pikminx/helper/CardHighlight;->isWarmStop(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    move v0, v5

    move v1, v6

    move/from16 v2, p0

    move/from16 v3, p1

    move v4, v14

    move/from16 v17, v5

    .end local v5    # "x":I
    .local v17, "x":I
    move v5, v15

    move/from16 v18, v6

    .end local v6    # "y":I
    .local v18, "y":I
    move-object/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/CardHighlight;->refineLightCenter(IIIIIILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v0

    return-object v0

    .line 231
    .end local v17    # "x":I
    .end local v18    # "y":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_0
    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "x":I
    .end local v6    # "y":I
    .restart local v17    # "x":I
    .restart local v18    # "y":I
    goto :goto_2

    .line 230
    .end local v17    # "x":I
    .end local v18    # "y":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_1
    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "x":I
    .end local v6    # "y":I
    .restart local v17    # "x":I
    .restart local v18    # "y":I
    goto :goto_2

    .line 229
    .end local v17    # "x":I
    .end local v18    # "y":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_2
    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "x":I
    .end local v6    # "y":I
    .restart local v17    # "x":I
    .restart local v18    # "y":I
    goto :goto_2

    .line 228
    .end local v17    # "x":I
    .end local v18    # "y":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_3
    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "x":I
    .end local v6    # "y":I
    .restart local v17    # "x":I
    .restart local v18    # "y":I
    goto :goto_2

    .line 227
    .end local v17    # "x":I
    .end local v18    # "y":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_4
    move/from16 v17, v5

    move/from16 v18, v6

    .line 226
    .end local v5    # "x":I
    .end local v6    # "y":I
    .restart local v17    # "x":I
    .restart local v18    # "y":I
    :goto_2
    add-int v5, v17, v16

    move/from16 v6, v18

    .end local v17    # "x":I
    .restart local v5    # "x":I
    goto :goto_1

    .end local v18    # "y":I
    .restart local v6    # "y":I
    :cond_5
    move/from16 v17, v5

    move/from16 v18, v6

    .line 225
    .end local v5    # "x":I
    .end local v6    # "y":I
    .restart local v18    # "y":I
    add-int v6, v18, v16

    .end local v18    # "y":I
    .restart local v6    # "y":I
    goto :goto_0

    .line 237
    .end local v6    # "y":I
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isCapsuleLight(I)Z
    .locals 7
    .param p0, "color"    # I

    .line 610
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 611
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 612
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 613
    .local v2, "blue":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 614
    .local v3, "min":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 615
    .local v4, "max":I
    const/16 v5, 0xd2

    if-lt v3, v5, :cond_0

    sub-int v5, v4, v3

    const/16 v6, 0x32

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method private static isGreen(I)Z
    .locals 4
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
    const/16 v3, 0x96

    if-lt v1, v3, :cond_0

    add-int/lit8 v3, v0, 0x23

    if-lt v1, v3, :cond_0

    add-int/lit8 v3, v2, 0x19

    if-lt v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isLight(I)Z
    .locals 2
    .param p0, "color"    # I

    .line 505
    invoke-static {p0}, Lcom/pikminx/helper/CardHighlight;->minimumChannel(I)I

    move-result v0

    const/16 v1, 0xeb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isLightBackground(I)Z
    .locals 5
    .param p0, "color"    # I

    .line 619
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 620
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 621
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 622
    .local v2, "blue":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0xb4

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isLightSelectorStrip(IIILjava/util/function/IntBinaryOperator;)Z
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "y"    # I
    .param p3, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 359
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_1

    aget v5, v1, v3

    .line 360
    .local v5, "xFraction":F
    int-to-float v6, p0

    mul-float/2addr v6, v5

    .line 361
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 360
    invoke-static {v6, p2, p0, p1, p3}, Lcom/pikminx/helper/CardHighlight;->panelSurfaceAt(IIIILjava/util/function/IntBinaryOperator;)I

    move-result v6

    if-eq v6, v4, :cond_0

    .line 362
    return v2

    .line 359
    .end local v5    # "xFraction":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    :cond_1
    return v4

    :array_0
    .array-data 4
        0x3eeb851f    # 0.46f
        0x3f147ae1    # 0.58f
        0x3f333333    # 0.7f
        0x3f51eb85    # 0.82f
    .end array-data
.end method

.method private static isNeutralDark(I)Z
    .locals 5
    .param p0, "color"    # I

    .line 732
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 733
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 734
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 735
    .local v2, "blue":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0xb4

    if-ge v3, v4, :cond_0

    .line 736
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 737
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x23

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 735
    :goto_0
    return v3
.end method

.method private static isPetalBlue(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 583
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 584
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 585
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 586
    .local v2, "blue":I
    const/16 v3, 0x96

    if-lt v2, v3, :cond_0

    add-int/lit8 v3, v0, 0x19

    if-lt v2, v3, :cond_0

    add-int/lit8 v3, v1, 0xa

    if-lt v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isPetalRed(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 576
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 577
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 578
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 579
    .local v2, "blue":I
    const/16 v3, 0xdc

    if-lt v0, v3, :cond_0

    const/16 v3, 0x91

    if-gt v1, v3, :cond_0

    const/16 v3, 0xaa

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v1, 0x46

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static isPetalSearchOpen(IILjava/util/function/IntBinaryOperator;)Z
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 38
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/CardHighlight;->findPetalSearchCloseButton(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v0

    .line 39
    .local v0, "close":Lcom/pikminx/helper/CardHighlight$Point;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pikminx/helper/CardHighlight$Point;->y()I

    move-result v1

    invoke-static {p0, p1, v1, p2}, Lcom/pikminx/helper/CardHighlight;->isSearchCapsuleRow(IIILjava/util/function/IntBinaryOperator;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isPetalYellow(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 569
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 570
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 571
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 572
    .local v2, "blue":I
    const/16 v3, 0xd2

    if-lt v0, v3, :cond_0

    const/16 v3, 0xa5

    if-lt v1, v3, :cond_0

    const/16 v3, 0x78

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x5a

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isPlantingPanelActive(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 518
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 519
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 520
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 521
    .local v2, "blue":I
    const/16 v3, 0xdc

    if-lt v0, v3, :cond_0

    const/16 v3, 0xbe

    if-gt v1, v3, :cond_0

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v1, 0x2d

    if-lt v0, v3, :cond_0

    add-int/lit8 v3, v2, 0x23

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static isPlantingPanelControlRow(IILcom/pikminx/helper/CardHighlight$Point;Ljava/util/function/IntBinaryOperator;)Z
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "control"    # Lcom/pikminx/helper/CardHighlight$Point;
    .param p3, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 377
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 378
    return v0

    .line 380
    :cond_0
    const/4 v1, 0x0

    .line 381
    .local v1, "expectedSurface":I
    const/4 v2, 0x4

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v3, v4

    .line 382
    .local v5, "xFraction":F
    int-to-float v6, p0

    mul-float/2addr v6, v5

    .line 383
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p2}, Lcom/pikminx/helper/CardHighlight$Point;->y()I

    move-result v7

    .line 382
    invoke-static {v6, v7, p0, p1, p3}, Lcom/pikminx/helper/CardHighlight;->panelSurfaceAt(IIIILjava/util/function/IntBinaryOperator;)I

    move-result v6

    .line 384
    .local v6, "surface":I
    if-eqz v6, :cond_2

    if-eqz v1, :cond_1

    if-eq v6, v1, :cond_1

    goto :goto_1

    .line 387
    :cond_1
    move v1, v6

    .line 381
    .end local v5    # "xFraction":F
    .end local v6    # "surface":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 385
    .restart local v5    # "xFraction":F
    .restart local v6    # "surface":I
    :cond_2
    :goto_1
    return v0

    .line 389
    .end local v5    # "xFraction":F
    .end local v6    # "surface":I
    :cond_3
    const/4 v0, 0x1

    return v0

    :array_0
    .array-data 4
        0x3cf5c28f    # 0.03f
        0x3e947ae1    # 0.29f
        0x3f35c28f    # 0.71f
        0x3f7851ec    # 0.97f
    .end array-data
.end method

.method private static isPlantingPanelLight(I)Z
    .locals 7
    .param p0, "color"    # I

    .line 509
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 510
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 511
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 512
    .local v2, "blue":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 513
    .local v3, "minimum":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 514
    .local v4, "maximum":I
    const/16 v5, 0xdc

    if-lt v3, v5, :cond_0

    sub-int v5, v4, v3

    const/16 v6, 0x2d

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method static isSearchCapsuleRow(IIILjava/util/function/IntBinaryOperator;)Z
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "y"    # I
    .param p3, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 595
    const/4 v0, 0x0

    if-ltz p2, :cond_4

    if-lt p2, p1, :cond_0

    goto :goto_1

    .line 598
    :cond_0
    const/4 v1, 0x0

    .line 599
    .local v1, "lightCount":I
    const/4 v2, 0x5

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 600
    .local v2, "sampleFractions":[F
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 601
    .local v5, "fraction":F
    int-to-float v6, p0

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 602
    .local v6, "x":I
    if-ltz v6, :cond_1

    if-ge v6, p0, :cond_1

    invoke-interface {p3, v6, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v7

    invoke-static {v7}, Lcom/pikminx/helper/CardHighlight;->isCapsuleLight(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 603
    add-int/lit8 v1, v1, 0x1

    .line 600
    .end local v5    # "fraction":F
    .end local v6    # "x":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 606
    :cond_2
    const/4 v3, 0x3

    if-lt v1, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 596
    .end local v1    # "lightCount":I
    .end local v2    # "sampleFractions":[F
    :cond_4
    :goto_1
    return v0

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
        0x3f0ccccd    # 0.55f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method private static isWarmStop(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 557
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 558
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 559
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 560
    .local v2, "blue":I
    const/16 v3, 0xdc

    if-lt v0, v3, :cond_0

    const/16 v3, 0x82

    if-lt v1, v3, :cond_0

    const/16 v3, 0xe1

    if-gt v1, v3, :cond_0

    const/16 v3, 0xa0

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v1, 0x1e

    if-lt v0, v3, :cond_0

    add-int/lit8 v3, v2, 0x23

    if-lt v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isWhistleCyan(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 538
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 539
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 540
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 541
    .local v2, "blue":I
    const/16 v3, 0x82

    if-lt v1, v3, :cond_0

    if-lt v2, v3, :cond_0

    add-int/lit8 v3, v0, 0x14

    if-lt v1, v3, :cond_0

    add-int/lit8 v3, v0, 0x14

    if-lt v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isWhistleLight(I)Z
    .locals 5
    .param p0, "color"    # I

    .line 529
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 530
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 531
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 532
    .local v2, "blue":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0xb9

    if-lt v3, v4, :cond_0

    .line 533
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 534
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x2d

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 532
    :goto_0
    return v3
.end method

.method private static minimumChannel(I)I
    .locals 4
    .param p0, "color"    # I

    .line 497
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 498
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 499
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 500
    .local v2, "blue":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3
.end method

.method private static panelSurfaceAt(IIIILjava/util/function/IntBinaryOperator;)I
    .locals 11
    .param p0, "centerX"    # I
    .param p1, "centerY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 398
    int-to-float v0, p2

    const v1, 0x3bc49ba6    # 0.006f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 399
    .local v0, "xRadius":I
    int-to-float v2, p3

    const v3, 0x3b83126f    # 0.004f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 400
    .local v2, "yRadius":I
    const/4 v3, 0x0

    .line 401
    .local v3, "light":I
    const/4 v4, 0x0

    .line 402
    .local v4, "active":I
    const/4 v5, 0x0

    .line 403
    .local v5, "total":I
    sub-int v6, p1, v2

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 404
    .local v6, "y":I
    :goto_0
    add-int/lit8 v8, p3, -0x1

    add-int v9, p1, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-gt v6, v8, :cond_3

    .line 406
    sub-int v8, p0, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 407
    .local v8, "x":I
    :goto_1
    add-int/lit8 v9, p2, -0x1

    add-int v10, p0, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-gt v8, v9, :cond_2

    .line 409
    invoke-interface {p4, v8, v6}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    .line 410
    .local v9, "color":I
    invoke-static {v9}, Lcom/pikminx/helper/CardHighlight;->isPlantingPanelLight(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 411
    add-int/lit8 v3, v3, 0x1

    .line 413
    :cond_0
    invoke-static {v9}, Lcom/pikminx/helper/CardHighlight;->isPlantingPanelActive(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 414
    add-int/lit8 v4, v4, 0x1

    .line 416
    :cond_1
    nop

    .end local v9    # "color":I
    add-int/lit8 v5, v5, 0x1

    .line 408
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 405
    .end local v8    # "x":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 419
    .end local v6    # "y":I
    :cond_3
    mul-int/lit8 v6, v5, 0x3

    div-int/lit8 v6, v6, 0x4

    .line 420
    .local v6, "required":I
    if-lt v3, v6, :cond_4

    .line 421
    const/4 v1, 0x1

    return v1

    .line 423
    :cond_4
    if-lt v4, v6, :cond_5

    goto :goto_2

    :cond_5
    move v1, v7

    :goto_2
    return v1
.end method

.method private static refineLightCenter(IIIIIILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$Point;
    .locals 12
    .param p0, "centerX"    # I
    .param p1, "centerY"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "xRadius"    # I
    .param p5, "yRadius"    # I
    .param p6, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 435
    move v0, p0

    move v1, p1

    div-int/lit8 v2, p4, 0x2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 436
    .local v2, "halfWidth":I
    div-int/lit8 v4, p5, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 437
    .local v3, "halfHeight":I
    const/4 v4, 0x0

    .line 438
    .local v4, "sumX":I
    const/4 v5, 0x0

    .line 439
    .local v5, "sumY":I
    const/4 v6, 0x0

    .line 440
    .local v6, "count":I
    sub-int v7, v1, v3

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 441
    .local v7, "y":I
    :goto_0
    add-int/lit8 v9, p3, -0x1

    add-int v10, v1, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-gt v7, v9, :cond_2

    .line 443
    sub-int v9, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 444
    .local v9, "x":I
    :goto_1
    add-int/lit8 v10, p2, -0x1

    add-int v11, v0, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-gt v9, v10, :cond_1

    .line 446
    move-object/from16 v10, p6

    invoke-interface {v10, v9, v7}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v11

    invoke-static {v11}, Lcom/pikminx/helper/CardHighlight;->isLight(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 447
    add-int/2addr v4, v9

    .line 448
    add-int/2addr v5, v7

    .line 449
    add-int/lit8 v6, v6, 0x1

    .line 445
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 444
    :cond_1
    move-object/from16 v10, p6

    .line 442
    .end local v9    # "x":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 441
    :cond_2
    move-object/from16 v10, p6

    .line 453
    .end local v7    # "y":I
    new-instance v7, Lcom/pikminx/helper/CardHighlight$Point;

    if-nez v6, :cond_3

    invoke-direct {v7, p0, p1}, Lcom/pikminx/helper/CardHighlight$Point;-><init>(II)V

    goto :goto_2

    :cond_3
    div-int v8, v4, v6

    div-int v9, v5, v6

    invoke-direct {v7, v8, v9}, Lcom/pikminx/helper/CardHighlight$Point;-><init>(II)V

    :goto_2
    return-object v7
.end method

.method static score(IIIILjava/util/function/IntBinaryOperator;)I
    .locals 16
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 471
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    int-to-float v3, v0

    const v4, 0x3d75c28f    # 0.06f

    mul-float/2addr v3, v4

    .line 472
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v5, v0

    const v6, 0x3db851ec    # 0.09f

    mul-float/2addr v5, v6

    .line 473
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    filled-new-array {v3, v5}, [I

    move-result-object v3

    .line 475
    .local v3, "xOffsets":[I
    int-to-float v5, v1

    const v7, 0x3ccccccd    # 0.025f

    mul-float/2addr v5, v7

    .line 476
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v5, v1

    const v7, 0x3d23d70a    # 0.04f

    mul-float/2addr v5, v7

    .line 477
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v6, v1

    const v7, 0x3d6147ae    # 0.055f

    mul-float/2addr v6, v7

    .line 478
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/16 v7, 0xc

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    filled-new-array {v4, v5, v6}, [I

    move-result-object v4

    .line 480
    .local v4, "yOffsets":[I
    array-length v5, v3

    array-length v6, v4

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [I

    .line 481
    .local v5, "brightness":[I
    const/4 v6, 0x0

    .line 482
    .local v6, "index":I
    array-length v7, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_1

    aget v10, v4, v9

    .line 483
    .local v10, "yOffset":I
    sub-int v11, p3, v10

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 484
    .local v11, "y":I
    array-length v12, v3

    move v13, v8

    :goto_1
    if-ge v13, v12, :cond_0

    aget v14, v3, v13

    .line 485
    .local v14, "xOffset":I
    add-int/lit8 v15, v6, 0x1

    .end local v6    # "index":I
    .local v15, "index":I
    sub-int v1, p2, v14

    .line 486
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 485
    invoke-interface {v2, v1, v11}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/pikminx/helper/CardHighlight;->minimumChannel(I)I

    move-result v1

    aput v1, v5, v6

    .line 487
    add-int/lit8 v6, v15, 0x1

    .end local v15    # "index":I
    .restart local v6    # "index":I
    add-int/lit8 v1, v0, -0x1

    add-int v8, p2, v14

    .line 488
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 487
    invoke-interface {v2, v1, v11}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/pikminx/helper/CardHighlight;->minimumChannel(I)I

    move-result v1

    aput v1, v5, v15

    .line 484
    .end local v14    # "xOffset":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p1

    const/4 v8, 0x0

    goto :goto_1

    .line 482
    .end local v10    # "yOffset":I
    .end local v11    # "y":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    const/4 v8, 0x0

    goto :goto_0

    .line 491
    :cond_1
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 492
    array-length v1, v5

    div-int/lit8 v1, v1, 0x2

    aget v1, v5, v1

    return v1
.end method
