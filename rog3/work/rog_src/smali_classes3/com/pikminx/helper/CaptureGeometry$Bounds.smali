.class final Lcom/pikminx/helper/CaptureGeometry$Bounds;
.super Lcom/android/tools/r8/RecordTag;
.source "CaptureGeometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/CaptureGeometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bounds"
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
    invoke-direct {p0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/CaptureGeometry$Bounds;

    invoke-direct {p1}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->left:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->bottom:I

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

    .line 14
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    .line 15
    if-le p3, p1, :cond_0

    if-le p4, p2, :cond_0

    .line 14
    iput p1, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->left:I

    iput p2, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->top:I

    iput p3, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->right:I

    iput p4, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->bottom:I

    .line 18
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bounds must have positive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bottom()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->bottom:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 13
    invoke-direct {p0, p1}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method height()I
    .locals 2

    .line 21
    iget v0, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->bottom:I

    iget v1, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method intersection(Lcom/pikminx/helper/CaptureGeometry$Bounds;)Lcom/pikminx/helper/CaptureGeometry$Bounds;
    .locals 5
    .param p1, "other"    # Lcom/pikminx/helper/CaptureGeometry$Bounds;

    .line 24
    iget v0, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->left:I

    iget v1, p1, Lcom/pikminx/helper/CaptureGeometry$Bounds;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 25
    .local v0, "intersectionLeft":I
    iget v1, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->top:I

    iget v2, p1, Lcom/pikminx/helper/CaptureGeometry$Bounds;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 26
    .local v1, "intersectionTop":I
    iget v2, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->right:I

    iget v3, p1, Lcom/pikminx/helper/CaptureGeometry$Bounds;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 27
    .local v2, "intersectionRight":I
    iget v3, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->bottom:I

    iget v4, p1, Lcom/pikminx/helper/CaptureGeometry$Bounds;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 28
    .local v3, "intersectionBottom":I
    if-le v2, v0, :cond_1

    if-gt v3, v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v4, Lcom/pikminx/helper/CaptureGeometry$Bounds;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/pikminx/helper/CaptureGeometry$Bounds;-><init>(IIII)V

    return-object v4

    .line 29
    :cond_1
    :goto_0
    const/4 v4, 0x0

    return-object v4
.end method

.method public left()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->left:I

    return v0
.end method

.method public right()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->right:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/pikminx/helper/CaptureGeometry$Bounds;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/CaptureGeometry$Bounds;

    const-string v2, "left;top;right;bottom"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public top()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->top:I

    return v0
.end method

.method width()I
    .locals 2

    .line 20
    iget v0, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->right:I

    iget v1, p0, Lcom/pikminx/helper/CaptureGeometry$Bounds;->left:I

    sub-int/2addr v0, v1

    return v0
.end method
