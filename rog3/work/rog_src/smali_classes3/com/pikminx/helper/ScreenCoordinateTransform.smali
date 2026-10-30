.class final Lcom/pikminx/helper/ScreenCoordinateTransform;
.super Ljava/lang/Object;
.source "ScreenCoordinateTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/ScreenCoordinateTransform$Point;,
        Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "minimum"    # I
    .param p2, "maximum"    # I

    .line 81
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static feedSearchPointToScreen(IILcom/pikminx/helper/CaptureGeometry;)Lcom/pikminx/helper/ScreenCoordinateTransform$Point;
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "geometry"    # Lcom/pikminx/helper/CaptureGeometry;

    .line 31
    invoke-static {p2}, Lcom/pikminx/helper/ScreenCoordinateTransform;->feedSearchUsesDisplayBitmap(Lcom/pikminx/helper/CaptureGeometry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/pikminx/helper/ScreenCoordinateTransform$Point;

    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry;->bitmapWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lcom/pikminx/helper/ScreenCoordinateTransform;->clamp(III)I

    move-result v1

    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry;->bitmapHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/pikminx/helper/ScreenCoordinateTransform;->clamp(III)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ScreenCoordinateTransform$Point;-><init>(II)V

    return-object v0

    .line 34
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/ScreenCoordinateTransform;->toScreen(IILcom/pikminx/helper/CaptureGeometry;)Lcom/pikminx/helper/ScreenCoordinateTransform$Point;

    move-result-object v0

    return-object v0
.end method

.method static feedSearchUsesDisplayBitmap(Lcom/pikminx/helper/CaptureGeometry;)Z
    .locals 3
    .param p0, "geometry"    # Lcom/pikminx/helper/CaptureGeometry;

    .line 38
    invoke-virtual {p0}, Lcom/pikminx/helper/CaptureGeometry;->targetWindowBoundsOnScreen()Lcom/pikminx/helper/CaptureGeometry$Bounds;

    move-result-object v0

    .line 39
    .local v0, "target":Lcom/pikminx/helper/CaptureGeometry$Bounds;
    invoke-virtual {p0}, Lcom/pikminx/helper/CaptureGeometry;->mode()Lcom/pikminx/helper/CaptureGeometry$Mode;

    move-result-object v1

    sget-object v2, Lcom/pikminx/helper/CaptureGeometry$Mode;->DISPLAY:Lcom/pikminx/helper/CaptureGeometry$Mode;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/pikminx/helper/CaptureGeometry;->bitmapWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/pikminx/helper/CaptureGeometry;->bitmapHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    return v1
.end method

.method static targetWindowInScreenshot(Lcom/pikminx/helper/CaptureGeometry;)Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;
    .locals 8
    .param p0, "geometry"    # Lcom/pikminx/helper/CaptureGeometry;

    .line 45
    invoke-virtual {p0}, Lcom/pikminx/helper/CaptureGeometry;->targetWindowBoundsOnScreen()Lcom/pikminx/helper/CaptureGeometry$Bounds;

    move-result-object v0

    .line 46
    .local v0, "target":Lcom/pikminx/helper/CaptureGeometry$Bounds;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return-object v1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/pikminx/helper/CaptureGeometry;->expectedSourceBoundsOnScreen()Lcom/pikminx/helper/CaptureGeometry$Bounds;

    move-result-object v2

    .line 50
    .local v2, "source":Lcom/pikminx/helper/CaptureGeometry$Bounds;
    invoke-virtual {v0, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->intersection(Lcom/pikminx/helper/CaptureGeometry$Bounds;)Lcom/pikminx/helper/CaptureGeometry$Bounds;

    move-result-object v3

    .line 51
    .local v3, "effective":Lcom/pikminx/helper/CaptureGeometry$Bounds;
    if-nez v3, :cond_1

    .line 52
    return-object v1

    .line 54
    :cond_1
    invoke-virtual {v3}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->left()I

    move-result v4

    invoke-static {v4, v2, p0}, Lcom/pikminx/helper/ScreenCoordinateTransform;->toScreenshotX(ILcom/pikminx/helper/CaptureGeometry$Bounds;Lcom/pikminx/helper/CaptureGeometry;)I

    move-result v4

    .line 55
    .local v4, "left":I
    invoke-virtual {v3}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->top()I

    move-result v5

    invoke-static {v5, v2, p0}, Lcom/pikminx/helper/ScreenCoordinateTransform;->toScreenshotY(ILcom/pikminx/helper/CaptureGeometry$Bounds;Lcom/pikminx/helper/CaptureGeometry;)I

    move-result v5

    .line 56
    .local v5, "top":I
    invoke-virtual {v3}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->right()I

    move-result v6

    invoke-static {v6, v2, p0}, Lcom/pikminx/helper/ScreenCoordinateTransform;->toScreenshotX(ILcom/pikminx/helper/CaptureGeometry$Bounds;Lcom/pikminx/helper/CaptureGeometry;)I

    move-result v6

    .line 57
    .local v6, "right":I
    invoke-virtual {v3}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->bottom()I

    move-result v7

    invoke-static {v7, v2, p0}, Lcom/pikminx/helper/ScreenCoordinateTransform;->toScreenshotY(ILcom/pikminx/helper/CaptureGeometry$Bounds;Lcom/pikminx/helper/CaptureGeometry;)I

    move-result v7

    .line 58
    .local v7, "bottom":I
    if-le v6, v4, :cond_3

    if-gt v7, v5, :cond_2

    goto :goto_0

    .line 61
    :cond_2
    new-instance v1, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;-><init>(IIII)V

    return-object v1

    .line 59
    :cond_3
    :goto_0
    return-object v1
.end method

.method static toScreen(IILcom/pikminx/helper/CaptureGeometry;)Lcom/pikminx/helper/ScreenCoordinateTransform$Point;
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "geometry"    # Lcom/pikminx/helper/CaptureGeometry;

    .line 18
    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry;->expectedSourceBoundsOnScreen()Lcom/pikminx/helper/CaptureGeometry$Bounds;

    move-result-object v0

    .line 19
    .local v0, "bounds":Lcom/pikminx/helper/CaptureGeometry$Bounds;
    new-instance v1, Lcom/pikminx/helper/ScreenCoordinateTransform$Point;

    .line 21
    invoke-virtual {v0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->left()I

    move-result v2

    int-to-float v3, p0

    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry;->scaleX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 22
    invoke-virtual {v0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->left()I

    move-result v3

    .line 23
    invoke-virtual {v0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->right()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 20
    invoke-static {v2, v3, v4}, Lcom/pikminx/helper/ScreenCoordinateTransform;->clamp(III)I

    move-result v2

    .line 25
    invoke-virtual {v0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->top()I

    move-result v3

    int-to-float v4, p1

    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry;->scaleY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    .line 26
    invoke-virtual {v0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->top()I

    move-result v4

    .line 27
    invoke-virtual {v0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->bottom()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 24
    invoke-static {v3, v4, v5}, Lcom/pikminx/helper/ScreenCoordinateTransform;->clamp(III)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/pikminx/helper/ScreenCoordinateTransform$Point;-><init>(II)V

    .line 19
    return-object v1
.end method

.method private static toScreenshotX(ILcom/pikminx/helper/CaptureGeometry$Bounds;Lcom/pikminx/helper/CaptureGeometry;)I
    .locals 3
    .param p0, "screenX"    # I
    .param p1, "source"    # Lcom/pikminx/helper/CaptureGeometry$Bounds;
    .param p2, "geometry"    # Lcom/pikminx/helper/CaptureGeometry;

    .line 66
    nop

    .line 67
    invoke-virtual {p1}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->left()I

    move-result v0

    sub-int v0, p0, v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry;->scaleX()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 69
    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry;->bitmapWidth()I

    move-result v1

    .line 66
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/pikminx/helper/ScreenCoordinateTransform;->clamp(III)I

    move-result v0

    return v0
.end method

.method private static toScreenshotY(ILcom/pikminx/helper/CaptureGeometry$Bounds;Lcom/pikminx/helper/CaptureGeometry;)I
    .locals 3
    .param p0, "screenY"    # I
    .param p1, "source"    # Lcom/pikminx/helper/CaptureGeometry$Bounds;
    .param p2, "geometry"    # Lcom/pikminx/helper/CaptureGeometry;

    .line 74
    nop

    .line 75
    invoke-virtual {p1}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->top()I

    move-result v0

    sub-int v0, p0, v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry;->scaleY()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 77
    invoke-virtual {p2}, Lcom/pikminx/helper/CaptureGeometry;->bitmapHeight()I

    move-result v1

    .line 74
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/pikminx/helper/ScreenCoordinateTransform;->clamp(III)I

    move-result v0

    return v0
.end method
