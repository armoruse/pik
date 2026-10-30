.class final Lcom/pikminx/helper/GeometryValidation;
.super Ljava/lang/Object;
.source "GeometryValidation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/GeometryValidation$Snapshot;,
        Lcom/pikminx/helper/GeometryValidation$Metrics;,
        Lcom/pikminx/helper/GeometryValidation$RoiSanity;,
        Lcom/pikminx/helper/GeometryValidation$Evidence;,
        Lcom/pikminx/helper/GeometryValidation$Discrepancy;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PikminXGeometry"

.field private static final SCALE_MISMATCH_RATIO:F = 0.05f

.field private static final SCHEMA_VERSION:I = 0x1


# direct methods
.method static bridge synthetic -$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/GeometryValidation;->field(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/GeometryValidation;->field(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/pikminx/helper/GeometryValidation;->field(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/GeometryValidation;->field(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/GeometryValidation;->field(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smname(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/pikminx/helper/GeometryValidation;->name(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smquoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/pikminx/helper/GeometryValidation;->quoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smrect(Ljava/lang/StringBuilder;Ljava/lang/String;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/pikminx/helper/GeometryValidation;->rect(Ljava/lang/StringBuilder;Ljava/lang/String;IIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smrect(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/pikminx/helper/CaptureGeometry$Bounds;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/GeometryValidation;->rect(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/pikminx/helper/CaptureGeometry$Bounds;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smrect(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/GeometryValidation;->rect(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static classify(Lcom/pikminx/helper/GeometryValidation$Evidence;)Lcom/pikminx/helper/GeometryValidation$Discrepancy;
    .locals 1
    .param p0, "evidence"    # Lcom/pikminx/helper/GeometryValidation$Evidence;

    .line 207
    invoke-virtual {p0}, Lcom/pikminx/helper/GeometryValidation$Evidence;->windowBoundsMismatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->WINDOW_BOUNDS_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    return-object v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/pikminx/helper/GeometryValidation$Evidence;->scaleMismatch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->SCALE_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    return-object v0

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/pikminx/helper/GeometryValidation$Evidence;->systematicOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    sget-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->SYSTEMATIC_OFFSET:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    return-object v0

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/pikminx/helper/GeometryValidation$Evidence;->roiContentMismatch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    sget-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->ROI_CONTENT_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    return-object v0

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/pikminx/helper/GeometryValidation$Evidence;->minor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    sget-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->MINOR:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    return-object v0

    .line 222
    :cond_4
    invoke-virtual {p0}, Lcom/pikminx/helper/GeometryValidation$Evidence;->unknown()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->UNKNOWN:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->NONE:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    :goto_0
    return-object v0
.end method

.method private static create(ILcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/CaptureGeometry;IJLjava/lang/String;Ljava/lang/String;)Lcom/pikminx/helper/GeometryValidation$Snapshot;
    .locals 28
    .param p0, "androidSdk"    # I
    .param p1, "profile"    # Lcom/pikminx/helper/OcrScan$Profile;
    .param p2, "transform"    # Lcom/pikminx/helper/OcrScan$Transform;
    .param p3, "captureGeometry"    # Lcom/pikminx/helper/CaptureGeometry;
    .param p4, "tokenCount"    # I
    .param p5, "elapsedMillis"    # J
    .param p7, "outcome"    # Ljava/lang/String;
    .param p8, "errorClass"    # Ljava/lang/String;

    .line 242
    nop

    .line 243
    invoke-static/range {p3 .. p3}, Lcom/pikminx/helper/ScreenCoordinateTransform;->targetWindowInScreenshot(Lcom/pikminx/helper/CaptureGeometry;)Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    move-result-object v14

    .line 244
    .local v14, "target":Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;
    move-object/from16 v15, p2

    invoke-static {v15, v14}, Lcom/pikminx/helper/GeometryValidation;->roiSanity(Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;)Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    move-result-object v16

    .line 245
    .local v16, "roiSanity":Lcom/pikminx/helper/GeometryValidation$RoiSanity;
    invoke-virtual/range {p3 .. p3}, Lcom/pikminx/helper/CaptureGeometry;->scaleX()F

    move-result v13

    .line 246
    .local v13, "scaleX":F
    invoke-virtual/range {p3 .. p3}, Lcom/pikminx/helper/CaptureGeometry;->scaleY()F

    move-result v12

    .line 247
    .local v12, "scaleY":F
    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 248
    .local v17, "largestScale":F
    const/4 v0, 0x0

    cmpl-float v0, v17, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    sub-float v0, v13, v12

    .line 249
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float v0, v0, v17

    const v3, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move/from16 v21, v2

    goto :goto_0

    :cond_0
    move/from16 v21, v1

    .line 250
    .local v21, "scaleMismatch":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/pikminx/helper/CaptureGeometry;->targetWindowBoundsOnScreen()Lcom/pikminx/helper/CaptureGeometry$Bounds;

    move-result-object v10

    .line 251
    .local v10, "targetBounds":Lcom/pikminx/helper/CaptureGeometry$Bounds;
    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/OcrScan$Profile;->roiBasis()Lcom/pikminx/helper/OcrScan$RoiBasis;

    move-result-object v0

    sget-object v3, Lcom/pikminx/helper/OcrScan$RoiBasis;->TARGET_WINDOW:Lcom/pikminx/helper/OcrScan$RoiBasis;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move/from16 v25, v0

    .line 252
    .local v25, "targetExpectedForProfile":Z
    invoke-virtual/range {p3 .. p3}, Lcom/pikminx/helper/CaptureGeometry;->mode()Lcom/pikminx/helper/CaptureGeometry$Mode;

    move-result-object v0

    sget-object v3, Lcom/pikminx/helper/CaptureGeometry$Mode;->WINDOW:Lcom/pikminx/helper/CaptureGeometry$Mode;

    if-ne v0, v3, :cond_2

    .line 253
    invoke-virtual/range {p3 .. p3}, Lcom/pikminx/helper/CaptureGeometry;->expectedSourceBoundsOnScreen()Lcom/pikminx/helper/CaptureGeometry$Bounds;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    move/from16 v26, v0

    .line 254
    .local v26, "sourceExpectedToMatchTarget":Z
    if-eqz v14, :cond_3

    .line 255
    invoke-virtual {v14}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 256
    invoke-virtual {v14}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 257
    invoke-virtual {v14}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->right()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/pikminx/helper/CaptureGeometry;->bitmapWidth()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_3

    .line 258
    invoke-virtual {v14}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->bottom()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/pikminx/helper/CaptureGeometry;->bitmapHeight()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    move/from16 v27, v0

    .line 259
    .local v27, "targetCoversBitmap":Z
    if-eqz v10, :cond_4

    if-eqz v14, :cond_6

    :cond_4
    if-eqz v25, :cond_5

    if-eqz v10, :cond_6

    :cond_5
    if-eqz v26, :cond_7

    if-nez v27, :cond_7

    :cond_6
    move/from16 v22, v2

    goto :goto_4

    :cond_7
    move/from16 v22, v1

    .line 262
    .local v22, "windowBoundsMismatch":Z
    :goto_4
    new-instance v0, Lcom/pikminx/helper/GeometryValidation$Evidence;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    .line 268
    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->valid()Z

    move-result v3

    xor-int/lit8 v24, v3, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v24}, Lcom/pikminx/helper/GeometryValidation$Evidence;-><init>(ZZZZZZ)V

    .line 262
    invoke-static {v0}, Lcom/pikminx/helper/GeometryValidation;->classify(Lcom/pikminx/helper/GeometryValidation$Evidence;)Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    move-result-object v18

    .line 269
    .local v18, "discrepancy":Lcom/pikminx/helper/GeometryValidation$Discrepancy;
    new-instance v19, Lcom/pikminx/helper/GeometryValidation$Snapshot;

    .line 275
    invoke-virtual/range {p3 .. p3}, Lcom/pikminx/helper/CaptureGeometry;->bitmapWidth()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/pikminx/helper/CaptureGeometry;->bitmapHeight()I

    move-result v2

    invoke-static {v0, v2, v14}, Lcom/pikminx/helper/GeometryValidation;->metrics(IILcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;)Lcom/pikminx/helper/GeometryValidation$Metrics;

    move-result-object v6

    .line 278
    move/from16 v11, p4

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 279
    const-wide/16 v0, 0x0

    move-wide/from16 v7, p5

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    move-object/from16 v0, v19

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v14

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    move-object/from16 v20, v10

    .end local v10    # "targetBounds":Lcom/pikminx/helper/CaptureGeometry$Bounds;
    .local v20, "targetBounds":Lcom/pikminx/helper/CaptureGeometry$Bounds;
    move-wide/from16 v10, v23

    move/from16 v23, v12

    .end local v12    # "scaleY":F
    .local v23, "scaleY":F
    move-object/from16 v12, p7

    move/from16 v24, v13

    .end local v13    # "scaleX":F
    .local v24, "scaleX":F
    move-object/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/pikminx/helper/GeometryValidation$Snapshot;-><init>(ILcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/CaptureGeometry;Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;Lcom/pikminx/helper/GeometryValidation$Metrics;Lcom/pikminx/helper/GeometryValidation$RoiSanity;Lcom/pikminx/helper/GeometryValidation$Discrepancy;IJLjava/lang/String;Ljava/lang/String;)V

    .line 269
    return-object v19
.end method

.method static failure(ILcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/CaptureGeometry;Ljava/lang/Exception;)Lcom/pikminx/helper/GeometryValidation$Snapshot;
    .locals 9
    .param p0, "androidSdk"    # I
    .param p1, "profile"    # Lcom/pikminx/helper/OcrScan$Profile;
    .param p2, "transform"    # Lcom/pikminx/helper/OcrScan$Transform;
    .param p3, "captureGeometry"    # Lcom/pikminx/helper/CaptureGeometry;
    .param p4, "error"    # Ljava/lang/Exception;

    .line 156
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "failure"

    .line 164
    if-nez p4, :cond_0

    const-string v0, "Exception"

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    .line 156
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v8}, Lcom/pikminx/helper/GeometryValidation;->create(ILcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/CaptureGeometry;IJLjava/lang/String;Ljava/lang/String;)Lcom/pikminx/helper/GeometryValidation$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method private static field(Ljava/lang/StringBuilder;Ljava/lang/String;F)V
    .locals 1
    .param p0, "json"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 338
    invoke-static {p0, p1}, Lcom/pikminx/helper/GeometryValidation;->name(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 339
    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 342
    :cond_0
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :goto_0
    return-void
.end method

.method private static field(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 0
    .param p0, "json"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 328
    invoke-static {p0, p1}, Lcom/pikminx/helper/GeometryValidation;->name(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    return-void
.end method

.method private static field(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 0
    .param p0, "json"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 333
    invoke-static {p0, p1}, Lcom/pikminx/helper/GeometryValidation;->name(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 335
    return-void
.end method

.method private static field(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "json"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 318
    invoke-static {p0, p1}, Lcom/pikminx/helper/GeometryValidation;->name(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 319
    invoke-static {p0, p2}, Lcom/pikminx/helper/GeometryValidation;->quoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method private static field(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "json"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 323
    invoke-static {p0, p1}, Lcom/pikminx/helper/GeometryValidation;->name(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 325
    return-void
.end method

.method static log(Lcom/pikminx/helper/GeometryValidation$Snapshot;)V
    .locals 2
    .param p0, "snapshot"    # Lcom/pikminx/helper/GeometryValidation$Snapshot;

    .line 227
    :try_start_0
    const-string v0, "PikminXGeometry"

    invoke-virtual {p0}, Lcom/pikminx/helper/GeometryValidation$Snapshot;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 231
    :goto_0
    return-void
.end method

.method static metrics(IILcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;)Lcom/pikminx/helper/GeometryValidation$Metrics;
    .locals 17
    .param p0, "bitmapWidth"    # I
    .param p1, "bitmapHeight"    # I
    .param p2, "target"    # Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    .line 171
    move/from16 v0, p0

    move/from16 v1, p1

    if-nez p2, :cond_0

    .line 172
    new-instance v9, Lcom/pikminx/helper/GeometryValidation$Metrics;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/high16 v8, 0x7fc00000    # Float.NaN

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/pikminx/helper/GeometryValidation$Metrics;-><init>(FFFFFF)V

    return-object v9

    .line 176
    :cond_0
    new-instance v2, Lcom/pikminx/helper/GeometryValidation$Metrics;

    .line 177
    invoke-virtual/range {p2 .. p2}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->width()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v11, v3, v4

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float v12, v3, v4

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float v13, v3, v4

    .line 180
    invoke-virtual/range {p2 .. p2}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->bottom()I

    move-result v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float v14, v3, v4

    .line 181
    invoke-virtual/range {p2 .. p2}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v15, v3, v4

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->right()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v16, v3, v4

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/pikminx/helper/GeometryValidation$Metrics;-><init>(FFFFFF)V

    .line 176
    return-object v2
.end method

.method private static name(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p0, "json"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 348
    .local v0, "previous":C
    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    .line 349
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :cond_0
    invoke-static {p0, p1}, Lcom/pikminx/helper/GeometryValidation;->quoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 352
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    return-void
.end method

.method private static quoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "json"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/String;

    .line 356
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 358
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 359
    .local v2, "character":C
    sparse-switch v2, :sswitch_data_0

    .line 368
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 369
    const-string v3, "\\u00"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 370
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v4, v2, 0xf

    .line 371
    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 361
    :sswitch_0
    const-string v3, "\\\\"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 360
    :sswitch_1
    const-string v3, "\\\""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 365
    :sswitch_2
    const-string v3, "\\r"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 363
    :sswitch_3
    const-string v3, "\\f"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 364
    :sswitch_4
    const-string v3, "\\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 366
    :sswitch_5
    const-string v3, "\\t"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 362
    :sswitch_6
    const-string v3, "\\b"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 373
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    .end local v2    # "character":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x22 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private static rect(Ljava/lang/StringBuilder;Ljava/lang/String;IIII)V
    .locals 1
    .param p0, "json"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 308
    invoke-static {p0, p1}, Lcom/pikminx/helper/GeometryValidation;->name(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 309
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    const-string v0, "left"

    invoke-static {p0, v0, p2}, Lcom/pikminx/helper/GeometryValidation;->field(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 311
    const-string v0, "top"

    invoke-static {p0, v0, p3}, Lcom/pikminx/helper/GeometryValidation;->field(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 312
    const-string v0, "right"

    invoke-static {p0, v0, p4}, Lcom/pikminx/helper/GeometryValidation;->field(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 313
    const-string v0, "bottom"

    invoke-static {p0, v0, p5}, Lcom/pikminx/helper/GeometryValidation;->field(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 314
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    return-void
.end method

.method private static rect(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/pikminx/helper/CaptureGeometry$Bounds;)V
    .locals 7
    .param p0, "json"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "bounds"    # Lcom/pikminx/helper/CaptureGeometry$Bounds;

    .line 286
    if-nez p2, :cond_0

    .line 287
    invoke-static {p0, p1}, Lcom/pikminx/helper/GeometryValidation;->name(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 288
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    return-void

    .line 291
    :cond_0
    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->left()I

    move-result v3

    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->top()I

    move-result v4

    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->right()I

    move-result v5

    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->bottom()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/pikminx/helper/GeometryValidation;->rect(Ljava/lang/StringBuilder;Ljava/lang/String;IIII)V

    .line 292
    return-void
.end method

.method private static rect(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;)V
    .locals 7
    .param p0, "json"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "bounds"    # Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    .line 298
    if-nez p2, :cond_0

    .line 299
    invoke-static {p0, p1}, Lcom/pikminx/helper/GeometryValidation;->name(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 300
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    return-void

    .line 303
    :cond_0
    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left()I

    move-result v3

    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top()I

    move-result v4

    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->right()I

    move-result v5

    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->bottom()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/pikminx/helper/GeometryValidation;->rect(Ljava/lang/StringBuilder;Ljava/lang/String;IIII)V

    .line 304
    return-void
.end method

.method static roiSanity(Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;)Lcom/pikminx/helper/GeometryValidation$RoiSanity;
    .locals 9
    .param p0, "transform"    # Lcom/pikminx/helper/OcrScan$Transform;
    .param p1, "target"    # Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    .line 188
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    .local v0, "right":I
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->cropTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 190
    .local v1, "bottom":I
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 191
    .local v2, "positiveWidth":Z
    :goto_0
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 192
    .local v5, "positiveHeight":Z
    :goto_1
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft()I

    move-result v6

    if-ltz v6, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->cropTop()I

    move-result v6

    if-ltz v6, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->sourceWidth()I

    move-result v6

    if-gt v0, v6, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->sourceHeight()I

    move-result v6

    if-gt v1, v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    .line 196
    .local v6, "withinBitmap":Z
    :goto_2
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->roiBasis()Lcom/pikminx/helper/OcrScan$RoiBasis;

    move-result-object v7

    sget-object v8, Lcom/pikminx/helper/OcrScan$RoiBasis;->TARGET_WINDOW:Lcom/pikminx/helper/OcrScan$RoiBasis;

    if-ne v7, v8, :cond_4

    if-eqz p1, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft()I

    move-result v7

    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 199
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScan$Transform;->cropTop()I

    move-result v7

    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 200
    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->right()I

    move-result v7

    if-gt v0, v7, :cond_3

    .line 201
    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->bottom()I

    move-result v7

    if-gt v1, v7, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    goto :goto_4

    :cond_4
    :goto_3
    nop

    .line 202
    .local v3, "withinTargetWindow":Z
    :goto_4
    new-instance v4, Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    invoke-direct {v4, v6, v3, v2, v5}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;-><init>(ZZZZ)V

    return-object v4
.end method

.method static success(ILcom/pikminx/helper/OcrScan$Frame;)Lcom/pikminx/helper/GeometryValidation$Snapshot;
    .locals 9
    .param p0, "androidSdk"    # I
    .param p1, "frame"    # Lcom/pikminx/helper/OcrScan$Frame;

    .line 139
    nop

    .line 141
    invoke-virtual {p1}, Lcom/pikminx/helper/OcrScan$Frame;->profile()Lcom/pikminx/helper/OcrScan$Profile;

    move-result-object v1

    .line 142
    invoke-virtual {p1}, Lcom/pikminx/helper/OcrScan$Frame;->transform()Lcom/pikminx/helper/OcrScan$Transform;

    move-result-object v2

    .line 143
    invoke-virtual {p1}, Lcom/pikminx/helper/OcrScan$Frame;->captureGeometry()Lcom/pikminx/helper/CaptureGeometry;

    move-result-object v3

    .line 144
    invoke-virtual {p1}, Lcom/pikminx/helper/OcrScan$Frame;->tokens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 145
    invoke-virtual {p1}, Lcom/pikminx/helper/OcrScan$Frame;->elapsedMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-string v7, "success"

    const-string v8, ""

    .line 139
    move v0, p0

    invoke-static/range {v0 .. v8}, Lcom/pikminx/helper/GeometryValidation;->create(ILcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/CaptureGeometry;IJLjava/lang/String;Ljava/lang/String;)Lcom/pikminx/helper/GeometryValidation$Snapshot;

    move-result-object v0

    return-object v0
.end method
