.class final Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;
.super Lcom/android/tools/r8/RecordTag;
.source "ScreenCoordinateTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/ScreenCoordinateTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScreenshotRect"
.end annotation


# instance fields
.field private final bottom:I

.field private final left:I

.field private final right:I

.field private final top:I


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
    invoke-direct {p0}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    invoke-direct {p1}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    .line 8
    if-le p3, p1, :cond_0

    if-le p4, p2, :cond_0

    .line 7
    iput p1, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left:I

    iput p2, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top:I

    iput p3, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->right:I

    iput p4, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->bottom:I

    .line 11
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Screenshot rect must have positive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bottom()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->bottom:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 6
    invoke-direct {p0, p1}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method height()I
    .locals 2

    .line 14
    iget v0, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->bottom:I

    iget v1, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public left()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left:I

    return v0
.end method

.method public right()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->right:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 6
    invoke-direct {p0}, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;

    const-string v2, "left;top;right;bottom"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public top()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->top:I

    return v0
.end method

.method width()I
    .locals 2

    .line 13
    iget v0, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->right:I

    iget v1, p0, Lcom/pikminx/helper/ScreenCoordinateTransform$ScreenshotRect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method
