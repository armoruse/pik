.class final Lcom/pikminx/helper/MapFlowerDetector;
.super Ljava/lang/Object;
.source "MapFlowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/MapFlowerDetector$VisualKind;,
        Lcom/pikminx/helper/MapFlowerDetector$Component;,
        Lcom/pikminx/helper/MapFlowerDetector$Point;
    }
.end annotation


# static fields
.field private static final SAMPLE_STEP:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dominantKind(IIIII)Lcom/pikminx/helper/MapFlowerDetector$VisualKind;
    .locals 2
    .param p0, "white"    # I
    .param p1, "red"    # I
    .param p2, "yellow"    # I
    .param p3, "blue"    # I
    .param p4, "purple"    # I

    .line 195
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 196
    .local v0, "maximum":I
    if-ne v0, p0, :cond_0

    .line 197
    sget-object v1, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->WHITE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v1

    .line 199
    :cond_0
    if-ne v0, p1, :cond_1

    .line 200
    sget-object v1, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->RED:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v1

    .line 202
    :cond_1
    if-ne v0, p2, :cond_2

    .line 203
    sget-object v1, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->YELLOW:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v1

    .line 205
    :cond_2
    if-ne v0, p3, :cond_3

    .line 206
    sget-object v1, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->BLUE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v1

    .line 208
    :cond_3
    sget-object v1, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->PURPLE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v1
.end method

.method private static enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flowerPixel"    # [Z
    .param p5, "visited"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[Z[Z",
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p6, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    if-ltz p0, :cond_2

    if-ge p0, p2, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, p3, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    mul-int v0, p1, p2

    add-int/2addr v0, p0

    .line 153
    .local v0, "index":I
    aget-boolean v1, p4, v0

    if-eqz v1, :cond_1

    aget-boolean v1, p5, v0

    if-nez v1, :cond_1

    .line 154
    const/4 v1, 0x1

    aput-boolean v1, p5, v0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_1
    return-void

    .line 150
    .end local v0    # "index":I
    :cond_2
    :goto_0
    return-void
.end method

.method static findCandidates(IILjava/util/function/IntBinaryOperator;)Ljava/util/List;
    .locals 43
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

    .line 31
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    int-to-float v3, v0

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 32
    .local v3, "left":I
    int-to-float v4, v0

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 33
    .local v4, "right":I
    int-to-float v5, v1

    const v6, 0x3e0f5c29    # 0.14f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 34
    .local v5, "top":I
    int-to-float v6, v1

    const v7, 0x3f5c28f6    # 0.86f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 35
    .local v6, "bottom":I
    sub-int v7, v4, v3

    div-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 36
    .local v7, "gridWidth":I
    sub-int v9, v6, v5

    div-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 37
    .local v15, "gridHeight":I
    mul-int v9, v7, v15

    new-array v14, v9, [Z

    .line 38
    .local v14, "flowerPixel":[Z
    array-length v9, v14

    new-array v13, v9, [Z

    .line 40
    .local v13, "visited":[Z
    const/4 v9, 0x0

    .local v9, "gy":I
    :goto_0
    if-ge v9, v15, :cond_1

    .line 41
    const/4 v10, 0x0

    .local v10, "gx":I
    :goto_1
    if-ge v10, v7, :cond_0

    .line 42
    mul-int/lit8 v11, v10, 0x2

    add-int/2addr v11, v3

    .line 43
    .local v11, "x":I
    mul-int/lit8 v12, v9, 0x2

    add-int/2addr v12, v5

    .line 44
    .local v12, "y":I
    mul-int v16, v9, v7

    add-int v16, v16, v10

    invoke-interface {v2, v11, v12}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/pikminx/helper/MapFlowerDetector;->isFlowerColor(I)Z

    move-result v17

    aput-boolean v17, v14, v16

    .line 41
    .end local v11    # "x":I
    .end local v12    # "y":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 40
    .end local v10    # "gx":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 48
    .end local v9    # "gy":I
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v9

    .line 49
    .local v12, "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    new-instance v9, Ljava/util/ArrayDeque;

    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    move-object v11, v9

    .line 50
    .local v11, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    move v10, v9

    .local v10, "index":I
    :goto_2
    array-length v9, v14

    if-ge v10, v9, :cond_6

    .line 51
    aget-boolean v9, v14, v10

    if-eqz v9, :cond_5

    aget-boolean v9, v13, v10

    if-eqz v9, :cond_2

    .line 52
    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v25, v7

    move/from16 v19, v10

    move-object/from16 v26, v11

    move-object v2, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move/from16 v22, v15

    goto/16 :goto_5

    .line 54
    :cond_2
    aput-boolean v8, v13, v10

    .line 55
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 56
    const/4 v9, 0x0

    .line 57
    .local v9, "count":I
    const/16 v16, 0x0

    .line 58
    .local v16, "sumX":I
    const/16 v17, 0x0

    .line 59
    .local v17, "sumY":I
    const v18, 0x7fffffff

    .line 60
    .local v18, "minX":I
    const/16 v19, 0x0

    .line 61
    .local v19, "maxX":I
    const v20, 0x7fffffff

    .line 62
    .local v20, "minY":I
    const/16 v21, 0x0

    .line 63
    .local v21, "maxY":I
    const/16 v22, 0x0

    .line 64
    .local v22, "whiteCount":I
    const/16 v23, 0x0

    .line 65
    .local v23, "redCount":I
    const/16 v24, 0x0

    .line 66
    .local v24, "yellowCount":I
    const/16 v25, 0x0

    .line 67
    .local v25, "blueCount":I
    const/16 v26, 0x0

    move/from16 v8, v16

    move/from16 v1, v23

    move/from16 v0, v26

    move/from16 v23, v15

    move/from16 v15, v25

    move/from16 v37, v17

    move/from16 v17, v4

    move/from16 v4, v37

    move/from16 v38, v18

    move/from16 v18, v6

    move/from16 v6, v38

    move/from16 v39, v19

    move/from16 v19, v10

    move/from16 v10, v39

    move/from16 v40, v20

    move-object/from16 v20, v12

    move/from16 v12, v40

    move/from16 v41, v21

    move-object/from16 v21, v13

    move/from16 v13, v41

    move/from16 v42, v22

    move-object/from16 v22, v14

    move/from16 v14, v24

    move/from16 v24, v42

    .line 68
    .end local v16    # "sumX":I
    .end local v25    # "blueCount":I
    .local v0, "purpleCount":I
    .local v1, "redCount":I
    .local v4, "sumY":I
    .local v6, "minX":I
    .local v8, "sumX":I
    .local v10, "maxX":I
    .local v12, "minY":I
    .local v13, "maxY":I
    .local v14, "yellowCount":I
    .local v15, "blueCount":I
    .local v17, "right":I
    .local v18, "bottom":I
    .local v19, "index":I
    .local v20, "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .local v21, "visited":[Z
    .local v22, "flowerPixel":[Z
    .local v23, "gridHeight":I
    .local v24, "whiteCount":I
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_3

    .line 69
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 70
    .local v25, "current":I
    move-object/from16 v26, v11

    .end local v11    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .local v26, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    rem-int v11, v25, v7

    .line 71
    .local v11, "gx":I
    move/from16 v33, v1

    .end local v1    # "redCount":I
    .local v33, "redCount":I
    div-int v1, v25, v7

    .line 72
    .local v1, "gy":I
    add-int/lit8 v27, v9, 0x1

    .line 73
    .end local v9    # "count":I
    .local v27, "count":I
    add-int/2addr v8, v11

    .line 74
    add-int/2addr v4, v1

    .line 75
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 76
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 77
    .end local v10    # "maxX":I
    .local v28, "maxX":I
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 78
    .end local v12    # "minY":I
    .local v29, "minY":I
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 79
    .end local v13    # "maxY":I
    .local v30, "maxY":I
    mul-int/lit8 v9, v11, 0x2

    add-int/2addr v9, v3

    mul-int/lit8 v10, v1, 0x2

    add-int/2addr v10, v5

    invoke-interface {v2, v9, v10}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    invoke-static {v9}, Lcom/pikminx/helper/MapFlowerDetector;->visualKind(I)Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    move-result-object v31

    .line 81
    .local v31, "visualKind":Lcom/pikminx/helper/MapFlowerDetector$VisualKind;
    sget-object v9, Lcom/pikminx/helper/MapFlowerDetector$1;->$SwitchMap$com$pikminx$helper$MapFlowerDetector$VisualKind:[I

    invoke-virtual/range {v31 .. v31}, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    move/from16 v32, v15

    move/from16 v34, v24

    move/from16 v24, v14

    goto :goto_4

    .line 86
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    move/from16 v32, v15

    move/from16 v34, v24

    move/from16 v24, v14

    goto :goto_4

    .line 85
    :pswitch_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v32, v15

    move/from16 v34, v24

    move/from16 v24, v14

    goto :goto_4

    .line 84
    :pswitch_2
    add-int/lit8 v14, v14, 0x1

    move/from16 v32, v15

    move/from16 v34, v24

    move/from16 v24, v14

    goto :goto_4

    .line 83
    :pswitch_3
    add-int/lit8 v9, v33, 0x1

    move/from16 v33, v9

    move/from16 v32, v15

    move/from16 v34, v24

    move/from16 v24, v14

    .end local v33    # "redCount":I
    .local v9, "redCount":I
    goto :goto_4

    .line 82
    .end local v9    # "redCount":I
    .restart local v33    # "redCount":I
    :pswitch_4
    add-int/lit8 v24, v24, 0x1

    move/from16 v32, v15

    move/from16 v34, v24

    move/from16 v24, v14

    .line 89
    .end local v14    # "yellowCount":I
    .end local v15    # "blueCount":I
    .local v24, "yellowCount":I
    .local v32, "blueCount":I
    .local v34, "whiteCount":I
    :goto_4
    add-int/lit8 v9, v11, -0x1

    move v10, v1

    move/from16 v35, v11

    .end local v11    # "gx":I
    .local v35, "gx":I
    move v11, v7

    move-object/from16 v15, v20

    .end local v20    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .local v15, "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    move/from16 v12, v23

    move-object/from16 v20, v21

    .end local v21    # "visited":[Z
    .local v20, "visited":[Z
    move-object/from16 v13, v22

    move-object/from16 v21, v22

    .end local v22    # "flowerPixel":[Z
    .local v21, "flowerPixel":[Z
    move-object/from16 v14, v20

    move-object v2, v15

    move/from16 v22, v23

    .end local v15    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .end local v23    # "gridHeight":I
    .local v2, "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .local v22, "gridHeight":I
    move-object/from16 v15, v26

    invoke-static/range {v9 .. v15}, Lcom/pikminx/helper/MapFlowerDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 90
    add-int/lit8 v9, v35, 0x1

    move/from16 v12, v22

    move-object/from16 v13, v21

    invoke-static/range {v9 .. v15}, Lcom/pikminx/helper/MapFlowerDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 91
    add-int/lit8 v10, v1, -0x1

    move/from16 v9, v35

    invoke-static/range {v9 .. v15}, Lcom/pikminx/helper/MapFlowerDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 92
    add-int/lit8 v10, v1, 0x1

    invoke-static/range {v9 .. v15}, Lcom/pikminx/helper/MapFlowerDetector;->enqueue(IIII[Z[ZLjava/util/ArrayDeque;)V

    .line 93
    .end local v1    # "gy":I
    .end local v25    # "current":I
    .end local v31    # "visualKind":Lcom/pikminx/helper/MapFlowerDetector$VisualKind;
    .end local v35    # "gx":I
    move/from16 v14, v24

    move-object/from16 v11, v26

    move/from16 v9, v27

    move/from16 v10, v28

    move/from16 v12, v29

    move/from16 v13, v30

    move/from16 v15, v32

    move/from16 v1, v33

    move/from16 v24, v34

    move-object/from16 v22, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v2

    move-object/from16 v2, p2

    goto/16 :goto_3

    .line 95
    .end local v2    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .end local v26    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v27    # "count":I
    .end local v28    # "maxX":I
    .end local v29    # "minY":I
    .end local v30    # "maxY":I
    .end local v32    # "blueCount":I
    .end local v33    # "redCount":I
    .end local v34    # "whiteCount":I
    .local v1, "redCount":I
    .local v9, "count":I
    .restart local v10    # "maxX":I
    .local v11, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .restart local v12    # "minY":I
    .restart local v13    # "maxY":I
    .restart local v14    # "yellowCount":I
    .local v15, "blueCount":I
    .local v20, "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .local v21, "visited":[Z
    .local v22, "flowerPixel":[Z
    .restart local v23    # "gridHeight":I
    .local v24, "whiteCount":I
    :cond_3
    move/from16 v33, v1

    move-object/from16 v26, v11

    move-object/from16 v2, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move/from16 v22, v23

    .end local v1    # "redCount":I
    .end local v11    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v23    # "gridHeight":I
    .restart local v2    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .local v20, "visited":[Z
    .local v21, "flowerPixel":[Z
    .local v22, "gridHeight":I
    .restart local v26    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .restart local v33    # "redCount":I
    sub-int v1, v10, v6

    const/4 v11, 0x1

    add-int/2addr v1, v11

    .line 96
    .local v1, "componentWidth":I
    sub-int v16, v13, v12

    move/from16 v23, v6

    .end local v6    # "minX":I
    .local v23, "minX":I
    add-int/lit8 v6, v16, 0x1

    .line 97
    .local v6, "componentHeight":I
    int-to-float v11, v9

    move/from16 v25, v7

    .end local v7    # "gridWidth":I
    .local v25, "gridWidth":I
    mul-int v7, v1, v6

    int-to-float v7, v7

    div-float/2addr v11, v7

    .line 98
    .local v11, "fill":F
    int-to-float v7, v1

    move/from16 v34, v10

    .end local v10    # "maxX":I
    .local v34, "maxX":I
    int-to-float v10, v6

    div-float/2addr v7, v10

    .line 99
    .local v7, "aspect":F
    const/4 v10, 0x6

    if-lt v9, v10, :cond_4

    const/16 v10, 0x104

    if-gt v9, v10, :cond_4

    const/4 v10, 0x3

    if-lt v1, v10, :cond_4

    if-lt v6, v10, :cond_4

    const/16 v10, 0x23

    if-gt v1, v10, :cond_4

    if-gt v6, v10, :cond_4

    const v10, 0x3e23d70a    # 0.16f

    cmpl-float v10, v11, v10

    if-ltz v10, :cond_4

    const v10, 0x3eb33333    # 0.35f

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_4

    const v10, 0x40333333    # 2.8f

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_4

    .line 108
    new-instance v10, Lcom/pikminx/helper/MapFlowerDetector$Component;

    move/from16 v35, v1

    .end local v1    # "componentWidth":I
    .local v35, "componentWidth":I
    int-to-float v1, v8

    move/from16 v36, v6

    .end local v6    # "componentHeight":I
    .local v36, "componentHeight":I
    int-to-float v6, v9

    div-float/2addr v1, v6

    .line 109
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v28, v3, v1

    int-to-float v1, v4

    int-to-float v6, v9

    div-float/2addr v1, v6

    .line 110
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v29, v5, v1

    .line 112
    move/from16 v6, v24

    move/from16 v1, v33

    .end local v24    # "whiteCount":I
    .end local v33    # "redCount":I
    .local v1, "redCount":I
    .local v6, "whiteCount":I
    invoke-static {v6, v1, v14, v15, v0}, Lcom/pikminx/helper/MapFlowerDetector;->dominantKind(IIIII)Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v27, v10

    move/from16 v30, v9

    invoke-direct/range {v27 .. v32}, Lcom/pikminx/helper/MapFlowerDetector$Component;-><init>(IIILcom/pikminx/helper/MapFlowerDetector$VisualKind;Lcom/pikminx/helper/MapFlowerDetector$Component-IA;)V

    .line 108
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 99
    .end local v35    # "componentWidth":I
    .end local v36    # "componentHeight":I
    .local v1, "componentWidth":I
    .local v6, "componentHeight":I
    .restart local v24    # "whiteCount":I
    .restart local v33    # "redCount":I
    :cond_4
    move/from16 v35, v1

    move/from16 v36, v6

    move/from16 v6, v24

    move/from16 v1, v33

    .end local v24    # "whiteCount":I
    .end local v33    # "redCount":I
    .local v1, "redCount":I
    .local v6, "whiteCount":I
    .restart local v35    # "componentWidth":I
    .restart local v36    # "componentHeight":I
    goto :goto_5

    .line 51
    .end local v0    # "purpleCount":I
    .end local v1    # "redCount":I
    .end local v2    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .end local v8    # "sumX":I
    .end local v9    # "count":I
    .end local v17    # "right":I
    .end local v18    # "bottom":I
    .end local v19    # "index":I
    .end local v20    # "visited":[Z
    .end local v21    # "flowerPixel":[Z
    .end local v22    # "gridHeight":I
    .end local v23    # "minX":I
    .end local v25    # "gridWidth":I
    .end local v26    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v34    # "maxX":I
    .end local v35    # "componentWidth":I
    .end local v36    # "componentHeight":I
    .local v4, "right":I
    .local v6, "bottom":I
    .local v7, "gridWidth":I
    .local v10, "index":I
    .local v11, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .local v12, "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .local v13, "visited":[Z
    .local v14, "flowerPixel":[Z
    .local v15, "gridHeight":I
    :cond_5
    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v25, v7

    move/from16 v19, v10

    move-object/from16 v26, v11

    move-object v2, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move/from16 v22, v15

    .line 50
    .end local v4    # "right":I
    .end local v6    # "bottom":I
    .end local v7    # "gridWidth":I
    .end local v10    # "index":I
    .end local v11    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v12    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .end local v13    # "visited":[Z
    .end local v14    # "flowerPixel":[Z
    .end local v15    # "gridHeight":I
    .restart local v2    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .restart local v17    # "right":I
    .restart local v18    # "bottom":I
    .restart local v19    # "index":I
    .restart local v20    # "visited":[Z
    .restart local v21    # "flowerPixel":[Z
    .restart local v22    # "gridHeight":I
    .restart local v25    # "gridWidth":I
    .restart local v26    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    :goto_5
    add-int/lit8 v10, v19, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    move-object v12, v2

    move/from16 v4, v17

    move/from16 v6, v18

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move/from16 v15, v22

    move/from16 v7, v25

    move-object/from16 v11, v26

    const/4 v8, 0x1

    move-object/from16 v2, p2

    .end local v19    # "index":I
    .restart local v10    # "index":I
    goto/16 :goto_2

    .end local v2    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .end local v17    # "right":I
    .end local v18    # "bottom":I
    .end local v20    # "visited":[Z
    .end local v21    # "flowerPixel":[Z
    .end local v22    # "gridHeight":I
    .end local v25    # "gridWidth":I
    .end local v26    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .restart local v4    # "right":I
    .restart local v6    # "bottom":I
    .restart local v7    # "gridWidth":I
    .restart local v11    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .restart local v12    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .restart local v13    # "visited":[Z
    .restart local v14    # "flowerPixel":[Z
    .restart local v15    # "gridHeight":I
    :cond_6
    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v25, v7

    move/from16 v19, v10

    move-object/from16 v26, v11

    move-object v2, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move/from16 v22, v15

    .line 117
    .end local v4    # "right":I
    .end local v6    # "bottom":I
    .end local v7    # "gridWidth":I
    .end local v10    # "index":I
    .end local v11    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    .end local v12    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .end local v13    # "visited":[Z
    .end local v14    # "flowerPixel":[Z
    .end local v15    # "gridHeight":I
    .restart local v2    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Component;>;"
    .restart local v17    # "right":I
    .restart local v18    # "bottom":I
    .restart local v20    # "visited":[Z
    .restart local v21    # "flowerPixel":[Z
    .restart local v22    # "gridHeight":I
    .restart local v25    # "gridWidth":I
    .restart local v26    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/pikminx/helper/MapFlowerDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/pikminx/helper/MapFlowerDetector$$ExternalSyntheticLambda0;-><init>()V

    .line 118
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/MapFlowerDetector$$ExternalSyntheticLambda1;

    move/from16 v4, p0

    move/from16 v6, p1

    invoke-direct {v1, v4, v6}, Lcom/pikminx/helper/MapFlowerDetector$$ExternalSyntheticLambda1;-><init>(II)V

    .line 119
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 117
    invoke-interface {v2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pikminx/helper/MapFlowerDetector$Component;

    .line 124
    .local v7, "component":Lcom/pikminx/helper/MapFlowerDetector$Component;
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/pikminx/helper/MapFlowerDetector$$ExternalSyntheticLambda2;

    invoke-direct {v9, v7}, Lcom/pikminx/helper/MapFlowerDetector$$ExternalSyntheticLambda2;-><init>(Lcom/pikminx/helper/MapFlowerDetector$Component;)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    .line 127
    .local v8, "duplicate":Z
    if-nez v8, :cond_7

    .line 128
    new-instance v9, Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 129
    invoke-virtual {v7}, Lcom/pikminx/helper/MapFlowerDetector$Component;->x()I

    move-result v10

    .line 130
    invoke-virtual {v7}, Lcom/pikminx/helper/MapFlowerDetector$Component;->y()I

    move-result v11

    .line 131
    invoke-virtual {v7}, Lcom/pikminx/helper/MapFlowerDetector$Component;->area()I

    move-result v12

    .line 132
    invoke-virtual {v7}, Lcom/pikminx/helper/MapFlowerDetector$Component;->visualKind()Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/pikminx/helper/MapFlowerDetector$Point;-><init>(IIILcom/pikminx/helper/MapFlowerDetector$VisualKind;)V

    .line 128
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0x1e

    if-ne v9, v10, :cond_8

    .line 135
    goto :goto_7

    .line 137
    .end local v7    # "component":Lcom/pikminx/helper/MapFlowerDetector$Component;
    .end local v8    # "duplicate":Z
    :cond_8
    goto :goto_6

    .line 138
    :cond_9
    :goto_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isFlowerColor(I)Z
    .locals 2
    .param p0, "color"    # I

    .line 160
    invoke-static {p0}, Lcom/pikminx/helper/MapFlowerDetector;->visualKind(I)Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    move-result-object v0

    sget-object v1, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->MIXED:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findCandidates$0(IILcom/pikminx/helper/MapFlowerDetector$Component;)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "component"    # Lcom/pikminx/helper/MapFlowerDetector$Component;

    .line 120
    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Component;->x()I

    move-result v0

    div-int/lit8 v1, p0, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 121
    invoke-virtual {p2}, Lcom/pikminx/helper/MapFlowerDetector$Component;->y()I

    move-result v1

    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    return v0
.end method

.method static synthetic lambda$findCandidates$1(Lcom/pikminx/helper/MapFlowerDetector$Component;Lcom/pikminx/helper/MapFlowerDetector$Point;)Z
    .locals 3
    .param p0, "component"    # Lcom/pikminx/helper/MapFlowerDetector$Component;
    .param p1, "point"    # Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 125
    invoke-virtual {p1}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Component;->x()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Component;->y()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0
.end method

.method private static visualKind(I)Lcom/pikminx/helper/MapFlowerDetector$VisualKind;
    .locals 14
    .param p0, "color"    # I

    .line 164
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 165
    .local v0, "red":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 166
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 167
    .local v2, "blue":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 168
    .local v3, "max":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 169
    .local v4, "min":I
    sub-int v5, v3, v4

    .line 170
    .local v5, "delta":I
    const/16 v6, 0xe1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lt v3, v6, :cond_0

    const/16 v6, 0x1c

    if-gt v5, v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    .line 171
    .local v6, "white":Z
    :goto_0
    const/16 v9, 0xaf

    if-lt v0, v9, :cond_1

    add-int/lit8 v9, v1, 0x2a

    if-lt v0, v9, :cond_1

    add-int/lit8 v9, v2, 0x12

    if-lt v0, v9, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    .line 172
    .local v9, "redOrPink":Z
    :goto_1
    const/16 v10, 0xb9

    const/16 v11, 0x91

    if-lt v0, v10, :cond_2

    if-lt v1, v11, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v10, v10, -0x26

    if-gt v2, v10, :cond_2

    move v10, v7

    goto :goto_2

    :cond_2
    move v10, v8

    .line 173
    .local v10, "yellow":Z
    :goto_2
    const/16 v12, 0xaa

    if-lt v2, v12, :cond_3

    add-int/lit8 v12, v0, 0x23

    if-lt v2, v12, :cond_3

    add-int/lit8 v12, v1, 0xa

    if-lt v2, v12, :cond_3

    move v12, v7

    goto :goto_3

    :cond_3
    move v12, v8

    .line 174
    .local v12, "blueFlower":Z
    :goto_3
    const/16 v13, 0x87

    if-lt v0, v13, :cond_4

    if-lt v2, v11, :cond_4

    add-int/lit8 v11, v1, 0x1e

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-ge v11, v13, :cond_4

    goto :goto_4

    :cond_4
    move v7, v8

    .line 175
    .local v7, "purple":Z
    :goto_4
    if-eqz v6, :cond_5

    .line 176
    sget-object v8, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->WHITE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v8

    .line 178
    :cond_5
    if-eqz v9, :cond_6

    .line 179
    sget-object v8, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->RED:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v8

    .line 181
    :cond_6
    if-eqz v10, :cond_7

    .line 182
    sget-object v8, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->YELLOW:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v8

    .line 184
    :cond_7
    if-eqz v12, :cond_8

    .line 185
    sget-object v8, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->BLUE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v8

    .line 187
    :cond_8
    if-eqz v7, :cond_9

    .line 188
    sget-object v8, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->PURPLE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v8

    .line 190
    :cond_9
    sget-object v8, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->MIXED:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v8
.end method
