.class final Lcom/pikminx/helper/GeometryValidation$Snapshot;
.super Lcom/android/tools/r8/RecordTag;
.source "GeometryValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/GeometryValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Snapshot"
.end annotation


# instance fields
.field private final androidSdk:I

.field private final captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

.field private final discrepancy:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

.field private final elapsedMillis:J

.field private final errorClass:Ljava/lang/String;

.field private final metrics:Lcom/pikminx/helper/GeometryValidation$Metrics;

.field private final outcome:Ljava/lang/String;

.field private final profile:Lcom/pikminx/helper/OcrScan$Profile;

.field private final resolvedTargetWindow:Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

.field private final roiSanity:Lcom/pikminx/helper/GeometryValidation$RoiSanity;

.field private final tokenCount:I

.field private final transform:Lcom/pikminx/helper/OcrScan$Transform;


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
    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$Snapshot;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/GeometryValidation$Snapshot;

    invoke-direct {p1}, Lcom/pikminx/helper/GeometryValidation$Snapshot;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->androidSdk:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->profile:Lcom/pikminx/helper/OcrScan$Profile;

    iget-object v3, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    iget-object v4, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    iget-object v5, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->resolvedTargetWindow:Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    iget-object v6, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->metrics:Lcom/pikminx/helper/GeometryValidation$Metrics;

    iget-object v7, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->roiSanity:Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    iget-object v8, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->discrepancy:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->tokenCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-wide v10, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->elapsedMillis:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->outcome:Ljava/lang/String;

    iget-object v12, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->errorClass:Ljava/lang/String;

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(ILcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/CaptureGeometry;Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;Lcom/pikminx/helper/GeometryValidation$Metrics;Lcom/pikminx/helper/GeometryValidation$RoiSanity;Lcom/pikminx/helper/GeometryValidation$Discrepancy;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "androidSdk"    # I
    .param p2, "profile"    # Lcom/pikminx/helper/OcrScan$Profile;
    .param p3, "transform"    # Lcom/pikminx/helper/OcrScan$Transform;
    .param p4, "captureGeometry"    # Lcom/pikminx/helper/CaptureGeometry;
    .param p5, "resolvedTargetWindow"    # Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;
    .param p6, "metrics"    # Lcom/pikminx/helper/GeometryValidation$Metrics;
    .param p7, "roiSanity"    # Lcom/pikminx/helper/GeometryValidation$RoiSanity;
    .param p8, "discrepancy"    # Lcom/pikminx/helper/GeometryValidation$Discrepancy;
    .param p9, "tokenCount"    # I
    .param p10, "elapsedMillis"    # J
    .param p12, "outcome"    # Ljava/lang/String;
    .param p13, "errorClass"    # Ljava/lang/String;
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
            0x0
        }
        names = {
            "androidSdk",
            "profile",
            "transform",
            "captureGeometry",
            "resolvedTargetWindow",
            "metrics",
            "roiSanity",
            "discrepancy",
            "tokenCount",
            "elapsedMillis",
            "outcome",
            "errorClass"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->androidSdk:I

    iput-object p2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->profile:Lcom/pikminx/helper/OcrScan$Profile;

    iput-object p3, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    iput-object p4, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    iput-object p5, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->resolvedTargetWindow:Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    iput-object p6, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->metrics:Lcom/pikminx/helper/GeometryValidation$Metrics;

    iput-object p7, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->roiSanity:Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    iput-object p8, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->discrepancy:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    iput p9, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->tokenCount:I

    iput-wide p10, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->elapsedMillis:J

    iput-object p12, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->outcome:Ljava/lang/String;

    iput-object p13, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->errorClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public androidSdk()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->androidSdk:I

    return v0
.end method

.method public captureGeometry()Lcom/pikminx/helper/CaptureGeometry;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    return-object v0
.end method

.method public discrepancy()Lcom/pikminx/helper/GeometryValidation$Discrepancy;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->discrepancy:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    return-object v0
.end method

.method public elapsedMillis()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->elapsedMillis:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 68
    invoke-direct {p0, p1}, Lcom/pikminx/helper/GeometryValidation$Snapshot;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public errorClass()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->errorClass:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$Snapshot;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public metrics()Lcom/pikminx/helper/GeometryValidation$Metrics;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->metrics:Lcom/pikminx/helper/GeometryValidation$Metrics;

    return-object v0
.end method

.method public outcome()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->outcome:Ljava/lang/String;

    return-object v0
.end method

.method public profile()Lcom/pikminx/helper/OcrScan$Profile;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->profile:Lcom/pikminx/helper/OcrScan$Profile;

    return-object v0
.end method

.method public resolvedTargetWindow()Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->resolvedTargetWindow:Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    return-object v0
.end method

.method public roiSanity()Lcom/pikminx/helper/GeometryValidation$RoiSanity;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->roiSanity:Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    return-object v0
.end method

.method toJson()Ljava/lang/String;
    .locals 9

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x600

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    .local v0, "json":Ljava/lang/StringBuilder;
    const-string v2, "schemaVersion"

    const/4 v8, 0x1

    invoke-static {v0, v2, v8}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 85
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    invoke-virtual {v2}, Lcom/pikminx/helper/CaptureGeometry;->captureSequence()J

    move-result-wide v2

    const-string v4, "captureSequence"

    invoke-static {v0, v4, v2, v3}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 86
    const-string v2, "androidSdk"

    iget v3, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->androidSdk:I

    invoke-static {v0, v2, v3}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 87
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    invoke-virtual {v2}, Lcom/pikminx/helper/CaptureGeometry;->mode()Lcom/pikminx/helper/CaptureGeometry$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pikminx/helper/CaptureGeometry$Mode;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "captureMode"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    invoke-virtual {v2}, Lcom/pikminx/helper/CaptureGeometry;->bitmapWidth()I

    move-result v2

    const-string v3, "bitmapWidth"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 89
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    invoke-virtual {v2}, Lcom/pikminx/helper/CaptureGeometry;->bitmapHeight()I

    move-result v2

    const-string v3, "bitmapHeight"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 90
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    .line 91
    invoke-virtual {v2}, Lcom/pikminx/helper/CaptureGeometry;->expectedSourceBoundsOnScreen()Lcom/pikminx/helper/CaptureGeometry$Bounds;

    move-result-object v2

    .line 90
    const-string v3, "expectedSourceBoundsOnScreen"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smrect(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/pikminx/helper/CaptureGeometry$Bounds;)V

    .line 92
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    .line 93
    invoke-virtual {v2}, Lcom/pikminx/helper/CaptureGeometry;->targetWindowBoundsOnScreen()Lcom/pikminx/helper/CaptureGeometry$Bounds;

    move-result-object v2

    .line 92
    const-string v3, "targetWindowBoundsOnScreen"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smrect(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/pikminx/helper/CaptureGeometry$Bounds;)V

    .line 94
    const-string v2, "resolvedTargetWindowInScreenshot"

    iget-object v3, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->resolvedTargetWindow:Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    invoke-static {v0, v2, v3}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smrect(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;)V

    .line 95
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->profile:Lcom/pikminx/helper/OcrScan$Profile;

    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Profile;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "profile"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Transform;->roiBasis()Lcom/pikminx/helper/OcrScan$RoiBasis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$RoiBasis;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "roiBasis"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "resolvedBasisRectInScreenshot"

    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    .line 98
    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Transform;->basisLeft()I

    move-result v4

    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Transform;->basisTop()I

    move-result v5

    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    .line 99
    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Transform;->basisRight()I

    move-result v6

    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Transform;->basisBottom()I

    move-result v7

    .line 97
    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smrect(Ljava/lang/StringBuilder;Ljava/lang/String;IIII)V

    .line 100
    const-string v3, "resolvedFinalRoiInScreenshot"

    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    .line 101
    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft()I

    move-result v4

    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Transform;->cropTop()I

    move-result v5

    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    .line 102
    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft()I

    move-result v2

    iget-object v6, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v6}, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    .line 103
    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Transform;->cropTop()I

    move-result v2

    iget-object v7, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v7}, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight()I

    move-result v7

    add-int/2addr v7, v2

    .line 100
    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smrect(Ljava/lang/StringBuilder;Ljava/lang/String;IIII)V

    .line 104
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    invoke-virtual {v2}, Lcom/pikminx/helper/CaptureGeometry;->scaleX()F

    move-result v2

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 105
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    invoke-virtual {v2}, Lcom/pikminx/helper/CaptureGeometry;->scaleY()F

    move-result v2

    const-string v3, "scaleY"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 106
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Transform;->fallbackToScreenshot()Z

    move-result v2

    const-string v3, "roiFallback"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 107
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v2}, Lcom/pikminx/helper/OcrScan$Transform;->fallbackReason()Ljava/lang/String;

    move-result-object v2

    const-string v3, "roiFallbackReason"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->metrics:Lcom/pikminx/helper/GeometryValidation$Metrics;

    invoke-virtual {v2}, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetWindowCoverageX()F

    move-result v2

    const-string v3, "targetWindowCoverageX"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 109
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->metrics:Lcom/pikminx/helper/GeometryValidation$Metrics;

    invoke-virtual {v2}, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetWindowCoverageY()F

    move-result v2

    const-string v3, "targetWindowCoverageY"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 110
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->metrics:Lcom/pikminx/helper/GeometryValidation$Metrics;

    invoke-virtual {v2}, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetTopRatio()F

    move-result v2

    const-string v3, "targetOffsetTopRatio"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 111
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->metrics:Lcom/pikminx/helper/GeometryValidation$Metrics;

    invoke-virtual {v2}, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetBottomRatio()F

    move-result v2

    const-string v3, "targetOffsetBottomRatio"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 112
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->metrics:Lcom/pikminx/helper/GeometryValidation$Metrics;

    invoke-virtual {v2}, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetLeftRatio()F

    move-result v2

    const-string v3, "targetOffsetLeftRatio"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 113
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->metrics:Lcom/pikminx/helper/GeometryValidation$Metrics;

    invoke-virtual {v2}, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetRightRatio()F

    move-result v2

    const-string v3, "targetOffsetRightRatio"

    invoke-static {v0, v3, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 114
    const-string v2, "roiSanity"

    invoke-static {v0, v2}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smname(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->roiSanity:Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    invoke-virtual {v1}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinBitmap()Z

    move-result v1

    const-string v2, "withinBitmap"

    invoke-static {v0, v2, v1}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 117
    iget-object v1, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->roiSanity:Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    invoke-virtual {v1}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinTargetWindow()Z

    move-result v1

    const-string v2, "withinTargetWindow"

    invoke-static {v0, v2, v1}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 118
    iget-object v1, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->roiSanity:Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    invoke-virtual {v1}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveWidth()Z

    move-result v1

    const-string v2, "positiveWidth"

    invoke-static {v0, v2, v1}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 119
    iget-object v1, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->roiSanity:Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    invoke-virtual {v1}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveHeight()Z

    move-result v1

    const-string v2, "positiveHeight"

    invoke-static {v0, v2, v1}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 120
    const-string v1, "warnings"

    invoke-static {v0, v1}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smname(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 121
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    iget-object v2, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->roiSanity:Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    invoke-virtual {v2}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->warnings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "warning":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v1, :cond_0

    .line 124
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    invoke-static {v0, v3}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smquoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 127
    .end local v3    # "warning":Ljava/lang/String;
    goto :goto_0

    .line 128
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->discrepancy:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    invoke-virtual {v1}, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->name()Ljava/lang/String;

    move-result-object v1

    const-string v3, "discrepancy"

    invoke-static {v0, v3, v1}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "ocrTokenCount"

    iget v3, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->tokenCount:I

    invoke-static {v0, v1, v3}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 131
    const-string v1, "elapsedMillis"

    iget-wide v3, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->elapsedMillis:J

    invoke-static {v0, v1, v3, v4}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 132
    const-string v1, "outcome"

    iget-object v3, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->outcome:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "errorClass"

    iget-object v3, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->errorClass:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/pikminx/helper/GeometryValidation;->-$$Nest$smfield(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 68
    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$Snapshot;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/GeometryValidation$Snapshot;

    const-string v2, "androidSdk;profile;transform;captureGeometry;resolvedTargetWindow;metrics;roiSanity;discrepancy;tokenCount;elapsedMillis;outcome;errorClass"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tokenCount()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->tokenCount:I

    return v0
.end method

.method public transform()Lcom/pikminx/helper/OcrScan$Transform;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/pikminx/helper/GeometryValidation$Snapshot;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    return-object v0
.end method
