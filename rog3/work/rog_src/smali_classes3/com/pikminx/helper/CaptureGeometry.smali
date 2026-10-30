.class final Lcom/pikminx/helper/CaptureGeometry;
.super Ljava/lang/Object;
.source "CaptureGeometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/CaptureGeometry$Mode;,
        Lcom/pikminx/helper/CaptureGeometry$Bounds;
    }
.end annotation


# instance fields
.field private final bitmapHeight:I

.field private final bitmapWidth:I

.field private final captureSequence:J

.field private final capturedAtUptimeMillis:J

.field private final displayId:I

.field private final expectedSourceBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

.field private final mode:Lcom/pikminx/helper/CaptureGeometry$Mode;

.field private final targetWindowBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;


# direct methods
.method constructor <init>(Lcom/pikminx/helper/CaptureGeometry$Mode;IILcom/pikminx/helper/CaptureGeometry$Bounds;Lcom/pikminx/helper/CaptureGeometry$Bounds;IJJ)V
    .locals 2
    .param p1, "mode"    # Lcom/pikminx/helper/CaptureGeometry$Mode;
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I
    .param p4, "expectedSourceBoundsOnScreen"    # Lcom/pikminx/helper/CaptureGeometry$Bounds;
    .param p5, "targetWindowBoundsOnScreen"    # Lcom/pikminx/helper/CaptureGeometry$Bounds;
    .param p6, "displayId"    # I
    .param p7, "captureSequence"    # J
    .param p9, "capturedAtUptimeMillis"    # J

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    .line 51
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    if-ltz p6, :cond_2

    const-wide/16 v0, 0x1

    cmp-long v0, p7, v0

    if-ltz v0, :cond_2

    .line 54
    sget-object v0, Lcom/pikminx/helper/CaptureGeometry$Mode;->WINDOW:Lcom/pikminx/helper/CaptureGeometry$Mode;

    if-ne p1, v0, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window capture requires window bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/pikminx/helper/CaptureGeometry;->mode:Lcom/pikminx/helper/CaptureGeometry$Mode;

    .line 58
    iput p2, p0, Lcom/pikminx/helper/CaptureGeometry;->bitmapWidth:I

    .line 59
    iput p3, p0, Lcom/pikminx/helper/CaptureGeometry;->bitmapHeight:I

    .line 60
    iput-object p4, p0, Lcom/pikminx/helper/CaptureGeometry;->expectedSourceBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

    .line 61
    iput-object p5, p0, Lcom/pikminx/helper/CaptureGeometry;->targetWindowBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

    .line 62
    iput p6, p0, Lcom/pikminx/helper/CaptureGeometry;->displayId:I

    .line 63
    iput-wide p7, p0, Lcom/pikminx/helper/CaptureGeometry;->captureSequence:J

    .line 64
    iput-wide p9, p0, Lcom/pikminx/helper/CaptureGeometry;->capturedAtUptimeMillis:J

    .line 65
    return-void

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid capture geometry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Capture mode and expected bounds are required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method bitmapHeight()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/pikminx/helper/CaptureGeometry;->bitmapHeight:I

    return v0
.end method

.method bitmapWidth()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/pikminx/helper/CaptureGeometry;->bitmapWidth:I

    return v0
.end method

.method captureSequence()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/pikminx/helper/CaptureGeometry;->captureSequence:J

    return-wide v0
.end method

.method capturedAtUptimeMillis()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/pikminx/helper/CaptureGeometry;->capturedAtUptimeMillis:J

    return-wide v0
.end method

.method displayId()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/pikminx/helper/CaptureGeometry;->displayId:I

    return v0
.end method

.method expectedSourceBoundsOnScreen()Lcom/pikminx/helper/CaptureGeometry$Bounds;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/pikminx/helper/CaptureGeometry;->expectedSourceBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

    return-object v0
.end method

.method mode()Lcom/pikminx/helper/CaptureGeometry$Mode;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/pikminx/helper/CaptureGeometry;->mode:Lcom/pikminx/helper/CaptureGeometry$Mode;

    return-object v0
.end method

.method scaleX()F
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/pikminx/helper/CaptureGeometry;->expectedSourceBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

    invoke-virtual {v0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/pikminx/helper/CaptureGeometry;->bitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method scaleY()F
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/pikminx/helper/CaptureGeometry;->expectedSourceBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

    invoke-virtual {v0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/pikminx/helper/CaptureGeometry;->bitmapHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method targetWindowBoundsOnScreen()Lcom/pikminx/helper/CaptureGeometry$Bounds;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/pikminx/helper/CaptureGeometry;->targetWindowBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

    return-object v0
.end method
