.class final Lcom/pikminx/helper/OcrScan$Transform;
.super Lcom/android/tools/r8/RecordTag;
.source "OcrScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/OcrScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Transform"
.end annotation


# instance fields
.field private final analysisHeight:I

.field private final analysisWidth:I

.field private final basisBottom:I

.field private final basisLeft:I

.field private final basisRight:I

.field private final basisTop:I

.field private final cropHeight:I

.field private final cropLeft:I

.field private final cropTop:I

.field private final cropWidth:I

.field private final fallbackReason:Ljava/lang/String;

.field private final fallbackToScreenshot:Z

.field private final roiBasis:Lcom/pikminx/helper/OcrScan$RoiBasis;

.field private final sourceHeight:I

.field private final sourceWidth:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/pikminx/helper/OcrScan$Transform;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/OcrScan$Transform;

    invoke-direct {p1}, Lcom/pikminx/helper/OcrScan$Transform;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->sourceWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->sourceHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->cropTop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->analysisWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->analysisHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lcom/pikminx/helper/OcrScan$Transform;->roiBasis:Lcom/pikminx/helper/OcrScan$RoiBasis;

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->basisLeft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->basisTop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->basisRight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->basisBottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-boolean v1, v0, Lcom/pikminx/helper/OcrScan$Transform;->fallbackToScreenshot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-object v0, v0, Lcom/pikminx/helper/OcrScan$Transform;->fallbackReason:Ljava/lang/String;

    move-object/from16 v16, v0

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(IIIIIIIILcom/pikminx/helper/OcrScan$RoiBasis;IIIIZLjava/lang/String;)V
    .locals 0
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I
    .param p3, "cropLeft"    # I
    .param p4, "cropTop"    # I
    .param p5, "cropWidth"    # I
    .param p6, "cropHeight"    # I
    .param p7, "analysisWidth"    # I
    .param p8, "analysisHeight"    # I
    .param p9, "roiBasis"    # Lcom/pikminx/helper/OcrScan$RoiBasis;
    .param p10, "basisLeft"    # I
    .param p11, "basisTop"    # I
    .param p12, "basisRight"    # I
    .param p13, "basisBottom"    # I
    .param p14, "fallbackToScreenshot"    # Z
    .param p15, "fallbackReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourceWidth",
            "sourceHeight",
            "cropLeft",
            "cropTop",
            "cropWidth",
            "cropHeight",
            "analysisWidth",
            "analysisHeight",
            "roiBasis",
            "basisLeft",
            "basisTop",
            "basisRight",
            "basisBottom",
            "fallbackToScreenshot",
            "fallbackReason"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/OcrScan$Transform;->sourceWidth:I

    iput p2, p0, Lcom/pikminx/helper/OcrScan$Transform;->sourceHeight:I

    iput p3, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft:I

    iput p4, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropTop:I

    iput p5, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth:I

    iput p6, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight:I

    iput p7, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisWidth:I

    iput p8, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisHeight:I

    iput-object p9, p0, Lcom/pikminx/helper/OcrScan$Transform;->roiBasis:Lcom/pikminx/helper/OcrScan$RoiBasis;

    iput p10, p0, Lcom/pikminx/helper/OcrScan$Transform;->basisLeft:I

    iput p11, p0, Lcom/pikminx/helper/OcrScan$Transform;->basisTop:I

    iput p12, p0, Lcom/pikminx/helper/OcrScan$Transform;->basisRight:I

    iput p13, p0, Lcom/pikminx/helper/OcrScan$Transform;->basisBottom:I

    iput-boolean p14, p0, Lcom/pikminx/helper/OcrScan$Transform;->fallbackToScreenshot:Z

    iput-object p15, p0, Lcom/pikminx/helper/OcrScan$Transform;->fallbackReason:Ljava/lang/String;

    return-void
.end method

.method static create(Lcom/pikminx/helper/OcrScan$Profile;II)Lcom/pikminx/helper/OcrScan$Transform;
    .locals 1
    .param p0, "profile"    # Lcom/pikminx/helper/OcrScan$Profile;
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I

    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/pikminx/helper/OcrScan$Transform;->create(Lcom/pikminx/helper/OcrScan$Profile;IILcom/pikminx/helper/CaptureGeometry;)Lcom/pikminx/helper/OcrScan$Transform;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/pikminx/helper/OcrScan$Profile;IILcom/pikminx/helper/CaptureGeometry;)Lcom/pikminx/helper/OcrScan$Transform;
    .locals 33
    .param p0, "profile"    # Lcom/pikminx/helper/OcrScan$Profile;
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I
    .param p3, "captureGeometry"    # Lcom/pikminx/helper/CaptureGeometry;

    .line 85
    const/4 v0, 0x1

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 86
    .local v15, "safeWidth":I
    move/from16 v14, p2

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 87
    .local v13, "safeHeight":I
    new-instance v2, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v15, v13}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;-><init>(IIII)V

    .line 89
    .local v2, "basis":Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;
    const/4 v3, 0x0

    .line 90
    .local v3, "fallbackToScreenshot":Z
    const-string v4, ""

    .line 91
    .local v4, "fallbackReason":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/OcrScan$Profile;->-$$Nest$fgetroiBasis(Lcom/pikminx/helper/OcrScan$Profile;)Lcom/pikminx/helper/OcrScan$RoiBasis;

    move-result-object v5

    sget-object v6, Lcom/pikminx/helper/OcrScan$RoiBasis;->TARGET_WINDOW:Lcom/pikminx/helper/OcrScan$RoiBasis;

    if-ne v5, v6, :cond_3

    .line 92
    if-nez p3, :cond_0

    .line 93
    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/pikminx/helper/ScreenCoordinateTransform;->targetWindowInScreenshot(Lcom/pikminx/helper/CaptureGeometry;)Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    move-result-object v5

    .line 94
    .local v5, "target":Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;
    :goto_0
    if-nez v5, :cond_2

    .line 95
    const/4 v3, 0x1

    .line 96
    if-nez p3, :cond_1

    .line 97
    const-string v6, "target_geometry_missing"

    goto :goto_1

    :cond_1
    const-string v6, "target_window_unresolved"

    :goto_1
    move-object v4, v6

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    goto :goto_2

    .line 99
    :cond_2
    move-object v2, v5

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    goto :goto_2

    .line 91
    .end local v5    # "target":Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;
    :cond_3
    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    .line 102
    .end local v2    # "basis":Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;
    .end local v3    # "fallbackToScreenshot":Z
    .end local v4    # "fallbackReason":Ljava/lang/String;
    .local v18, "basis":Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;
    .local v19, "fallbackToScreenshot":Z
    .local v20, "fallbackReason":Ljava/lang/String;
    :goto_2
    nop

    .line 103
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/OcrScan$Profile;->-$$Nest$fgetleftFraction(Lcom/pikminx/helper/OcrScan$Profile;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 104
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->right()I

    move-result v4

    sub-int/2addr v4, v0

    .line 102
    invoke-static {v2, v3, v4}, Lcom/pikminx/helper/OcrScan;->-$$Nest$smclamp(III)I

    move-result v21

    .line 105
    .local v21, "left":I
    nop

    .line 106
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/OcrScan$Profile;->-$$Nest$fgettopFraction(Lcom/pikminx/helper/OcrScan$Profile;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 107
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->bottom()I

    move-result v4

    sub-int/2addr v4, v0

    .line 105
    invoke-static {v2, v3, v4}, Lcom/pikminx/helper/OcrScan;->-$$Nest$smclamp(III)I

    move-result v22

    .line 108
    .local v22, "top":I
    nop

    .line 109
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/OcrScan$Profile;->-$$Nest$fgetrightFraction(Lcom/pikminx/helper/OcrScan$Profile;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v3, v21, 0x1

    .line 110
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->right()I

    move-result v4

    .line 108
    invoke-static {v2, v3, v4}, Lcom/pikminx/helper/OcrScan;->-$$Nest$smclamp(III)I

    move-result v23

    .line 111
    .local v23, "right":I
    nop

    .line 112
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/OcrScan$Profile;->-$$Nest$fgetbottomFraction(Lcom/pikminx/helper/OcrScan$Profile;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v3, v22, 0x1

    .line 113
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->bottom()I

    move-result v4

    .line 111
    invoke-static {v2, v3, v4}, Lcom/pikminx/helper/OcrScan;->-$$Nest$smclamp(III)I

    move-result v24

    .line 114
    .local v24, "bottom":I
    sub-int v12, v23, v21

    .line 115
    .local v12, "cropWidth":I
    sub-int v11, v24, v22

    .line 116
    .local v11, "cropHeight":I
    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/OcrScan$Profile;->-$$Nest$fgetminimumAnalysisWidth(Lcom/pikminx/helper/OcrScan$Profile;)I

    move-result v2

    if-nez v2, :cond_4

    .line 117
    move v2, v12

    goto :goto_3

    .line 118
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/OcrScan$Profile;->-$$Nest$fgetminimumAnalysisWidth(Lcom/pikminx/helper/OcrScan$Profile;)I

    move-result v2

    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/OcrScan$Profile;->-$$Nest$fgetmaximumAnalysisWidth(Lcom/pikminx/helper/OcrScan$Profile;)I

    move-result v3

    invoke-static {v12, v2, v3}, Lcom/pikminx/helper/OcrScan;->-$$Nest$smclamp(III)I

    move-result v2

    :goto_3
    move v10, v2

    .line 122
    .local v10, "targetWidth":I
    int-to-float v2, v11

    int-to-float v3, v10

    int-to-float v4, v12

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 124
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 122
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 125
    .local v0, "targetHeight":I
    new-instance v25, Lcom/pikminx/helper/OcrScan$Transform;

    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/OcrScan$Profile;->-$$Nest$fgetroiBasis(Lcom/pikminx/helper/OcrScan$Profile;)Lcom/pikminx/helper/OcrScan$RoiBasis;

    move-result-object v16

    .line 135
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left()I

    move-result v17

    .line 136
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top()I

    move-result v26

    .line 137
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->right()I

    move-result v27

    .line 138
    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->bottom()I

    move-result v28

    move-object/from16 v2, v25

    move v3, v15

    move v4, v13

    move/from16 v5, v21

    move/from16 v6, v22

    move v7, v12

    move v8, v11

    move v9, v10

    move/from16 v29, v10

    .end local v10    # "targetWidth":I
    .local v29, "targetWidth":I
    move v10, v0

    move/from16 v30, v11

    .end local v11    # "cropHeight":I
    .local v30, "cropHeight":I
    move-object/from16 v11, v16

    move/from16 v31, v12

    .end local v12    # "cropWidth":I
    .local v31, "cropWidth":I
    move/from16 v12, v17

    move/from16 v32, v13

    .end local v13    # "safeHeight":I
    .local v32, "safeHeight":I
    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v26, v15

    .end local v15    # "safeWidth":I
    .local v26, "safeWidth":I
    move/from16 v15, v28

    move/from16 v16, v19

    move-object/from16 v17, v20

    invoke-direct/range {v2 .. v17}, Lcom/pikminx/helper/OcrScan$Transform;-><init>(IIIIIIIILcom/pikminx/helper/OcrScan$RoiBasis;IIIIZLjava/lang/String;)V

    .line 125
    return-object v25
.end method


# virtual methods
.method public analysisHeight()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisHeight:I

    return v0
.end method

.method public analysisWidth()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisWidth:I

    return v0
.end method

.method analysisX(I)I
    .locals 3
    .param p1, "sourceX"    # I

    .line 183
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 184
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisWidth:I

    add-int/lit8 v1, v1, -0x1

    .line 183
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/pikminx/helper/OcrScan;->-$$Nest$smclamp(III)I

    move-result v0

    return v0
.end method

.method analysisY(I)I
    .locals 3
    .param p1, "sourceY"    # I

    .line 190
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropTop:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 191
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisHeight:I

    add-int/lit8 v1, v1, -0x1

    .line 190
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/pikminx/helper/OcrScan;->-$$Nest$smclamp(III)I

    move-result v0

    return v0
.end method

.method public basisBottom()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->basisBottom:I

    return v0
.end method

.method public basisLeft()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->basisLeft:I

    return v0
.end method

.method public basisRight()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->basisRight:I

    return v0
.end method

.method public basisTop()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->basisTop:I

    return v0
.end method

.method containsSource(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 197
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft:I

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropTop:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropTop:I

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cropHeight()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight:I

    return v0
.end method

.method public cropLeft()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft:I

    return v0
.end method

.method public cropTop()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropTop:I

    return v0
.end method

.method public cropWidth()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 59
    invoke-direct {p0, p1}, Lcom/pikminx/helper/OcrScan$Transform;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fallbackReason()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->fallbackReason:Ljava/lang/String;

    return-object v0
.end method

.method public fallbackToScreenshot()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->fallbackToScreenshot:Z

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/OcrScan$Transform;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public roiBasis()Lcom/pikminx/helper/OcrScan$RoiBasis;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->roiBasis:Lcom/pikminx/helper/OcrScan$RoiBasis;

    return-object v0
.end method

.method public sourceHeight()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->sourceHeight:I

    return v0
.end method

.method public sourceWidth()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->sourceWidth:I

    return v0
.end method

.method sourceX(I)I
    .locals 4
    .param p1, "analysisX"    # I

    .line 169
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft:I

    int-to-float v1, p1

    iget v2, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 170
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft:I

    iget v2, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft:I

    iget v3, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth:I

    add-int/2addr v2, v3

    .line 169
    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/OcrScan;->-$$Nest$smclamp(III)I

    move-result v0

    return v0
.end method

.method sourceY(I)I
    .locals 4
    .param p1, "analysisY"    # I

    .line 176
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropTop:I

    int-to-float v1, p1

    iget v2, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 177
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropTop:I

    iget v2, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropTop:I

    iget v3, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight:I

    add-int/2addr v2, v3

    .line 176
    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/OcrScan;->-$$Nest$smclamp(III)I

    move-result v0

    return v0
.end method

.method toSourceTokens(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;"
        }
    .end annotation

    .line 153
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->usesSourceBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v0, "mapped":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 158
    .local v2, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    new-instance v9, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 159
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pikminx/helper/OcrScan$Transform;->sourceX(I)I

    move-result v5

    .line 161
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pikminx/helper/OcrScan$Transform;->sourceY(I)I

    move-result v6

    .line 162
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pikminx/helper/OcrScan$Transform;->sourceX(I)I

    move-result v7

    .line 163
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/pikminx/helper/OcrScan$Transform;->sourceY(I)I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/pikminx/helper/PetalMatcher$Token;-><init>(Ljava/lang/String;IIII)V

    .line 158
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    goto :goto_0

    .line 165
    :cond_1
    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/pikminx/helper/OcrScan$Transform;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/OcrScan$Transform;

    const-string v2, "sourceWidth;sourceHeight;cropLeft;cropTop;cropWidth;cropHeight;analysisWidth;analysisHeight;roiBasis;basisLeft;basisTop;basisRight;basisBottom;fallbackToScreenshot;fallbackReason"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method usesSourceBitmap()Z
    .locals 2

    .line 144
    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth:I

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->sourceWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight:I

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->sourceHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisWidth:I

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->sourceWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/pikminx/helper/OcrScan$Transform;->analysisHeight:I

    iget v1, p0, Lcom/pikminx/helper/OcrScan$Transform;->sourceHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
