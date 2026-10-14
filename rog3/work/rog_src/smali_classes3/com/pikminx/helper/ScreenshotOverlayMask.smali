.class final Lcom/pikminx/helper/ScreenshotOverlayMask;
.super Ljava/lang/Object;
.source "ScreenshotOverlayMask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;,
        Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clip(Lcom/pikminx/helper/ScreenshotOverlayMask$Region;III)Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    .locals 5
    .param p0, "region"    # Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "padding"    # I

    .line 70
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 71
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->left()I

    move-result v1

    sub-int/2addr v1, p3

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 74
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->top()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 75
    .local v2, "top":I
    invoke-virtual {p0}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->right()I

    move-result v3

    add-int/2addr v3, p3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 76
    .local v3, "right":I
    invoke-virtual {p0}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->bottom()I

    move-result v4

    add-int/2addr v4, p3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 77
    .local v4, "bottom":I
    if-ge v1, v3, :cond_1

    if-ge v2, v4, :cond_1

    new-instance v0, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;-><init>(IIII)V

    :cond_1
    return-object v0
.end method

.method static erase(IILcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;Ljava/util/List;I)V
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixels"    # Lcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;
    .param p4, "padding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/ScreenshotOverlayMask$Region;",
            ">;I)V"
        }
    .end annotation

    .line 47
    .local p3, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/ScreenshotOverlayMask$Region;>;"
    if-lez p0, :cond_4

    if-lez p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 51
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 55
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "merged":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/ScreenshotOverlayMask$Region;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;

    .line 57
    .local v2, "region":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    const/4 v3, 0x0

    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, p0, p1, v3}, Lcom/pikminx/helper/ScreenshotOverlayMask;->clip(Lcom/pikminx/helper/ScreenshotOverlayMask$Region;III)Lcom/pikminx/helper/ScreenshotOverlayMask$Region;

    move-result-object v3

    .line 58
    .local v3, "clipped":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    if-nez v3, :cond_1

    .line 59
    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v0, v3}, Lcom/pikminx/helper/ScreenshotOverlayMask;->mergeInto(Ljava/util/List;Lcom/pikminx/helper/ScreenshotOverlayMask$Region;)V

    .line 62
    .end local v2    # "region":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    .end local v3    # "clipped":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;

    .line 65
    .restart local v2    # "region":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    invoke-static {p0, p2, v2}, Lcom/pikminx/helper/ScreenshotOverlayMask;->eraseRegion(ILcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;Lcom/pikminx/helper/ScreenshotOverlayMask$Region;)V

    .line 66
    .end local v2    # "region":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    goto :goto_1

    .line 67
    :cond_3
    return-void

    .line 52
    .end local v0    # "merged":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/ScreenshotOverlayMask$Region;>;"
    :cond_4
    :goto_2
    return-void
.end method

.method static erase(II[ILjava/util/List;I)V
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixels"    # [I
    .param p4, "padding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/ScreenshotOverlayMask$Region;",
            ">;I)V"
        }
    .end annotation

    .line 25
    .local p3, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/ScreenshotOverlayMask$Region;>;"
    if-eqz p2, :cond_1

    if-lez p0, :cond_1

    if-lez p1, :cond_1

    array-length v0, p2

    mul-int v1, p0, p1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lcom/pikminx/helper/ScreenshotOverlayMask$1;

    invoke-direct {v0, p2, p0}, Lcom/pikminx/helper/ScreenshotOverlayMask$1;-><init>([II)V

    invoke-static {p0, p1, v0, p3, p4}, Lcom/pikminx/helper/ScreenshotOverlayMask;->erase(IILcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;Ljava/util/List;I)V

    .line 39
    return-void

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private static eraseRegion(ILcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;Lcom/pikminx/helper/ScreenshotOverlayMask$Region;)V
    .locals 5
    .param p0, "width"    # I
    .param p1, "pixels"    # Lcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;
    .param p2, "region"    # Lcom/pikminx/helper/ScreenshotOverlayMask$Region;

    .line 107
    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->left()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->left()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->right()I

    move-result v0

    if-ge v0, p0, :cond_1

    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->right()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    nop

    .line 110
    .local v0, "sourceX":I
    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->top()I

    move-result v1

    .local v1, "y":I
    :goto_1
    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->bottom()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 111
    if-ltz v0, :cond_2

    invoke-interface {p1, v0, v1}, Lcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;->get(II)I

    move-result v2

    goto :goto_2

    :cond_2
    const v2, -0x42778b

    .line 112
    .local v2, "replacement":I
    :goto_2
    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->left()I

    move-result v3

    invoke-virtual {p2}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->right()I

    move-result v4

    invoke-interface {p1, v1, v3, v4, v2}, Lcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;->fillRow(IIII)V

    .line 110
    .end local v2    # "replacement":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    .end local v1    # "y":I
    :cond_3
    return-void
.end method

.method private static mergeInto(Ljava/util/List;Lcom/pikminx/helper/ScreenshotOverlayMask$Region;)V
    .locals 8
    .param p1, "candidate"    # Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/ScreenshotOverlayMask$Region;",
            ">;",
            "Lcom/pikminx/helper/ScreenshotOverlayMask$Region;",
            ")V"
        }
    .end annotation

    .line 82
    .local p0, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/ScreenshotOverlayMask$Region;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 83
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;

    .line 84
    .local v1, "existing":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    invoke-static {v1, p1}, Lcom/pikminx/helper/ScreenshotOverlayMask;->touches(Lcom/pikminx/helper/ScreenshotOverlayMask$Region;Lcom/pikminx/helper/ScreenshotOverlayMask$Region;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    nop

    .line 82
    .end local v1    # "existing":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .restart local v1    # "existing":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    new-instance v2, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;

    .line 89
    invoke-virtual {v1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->left()I

    move-result v3

    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->left()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 90
    invoke-virtual {v1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->top()I

    move-result v4

    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->top()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 91
    invoke-virtual {v1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->right()I

    move-result v5

    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->right()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 92
    invoke-virtual {v1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->bottom()I

    move-result v6

    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->bottom()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;-><init>(IIII)V

    .line 93
    .local v2, "joined":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    invoke-static {p0, v2}, Lcom/pikminx/helper/ScreenshotOverlayMask;->mergeInto(Ljava/util/List;Lcom/pikminx/helper/ScreenshotOverlayMask$Region;)V

    .line 94
    return-void

    .line 96
    .end local v0    # "index":I
    .end local v1    # "existing":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    .end local v2    # "joined":Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method private static touches(Lcom/pikminx/helper/ScreenshotOverlayMask$Region;Lcom/pikminx/helper/ScreenshotOverlayMask$Region;)Z
    .locals 2
    .param p0, "first"    # Lcom/pikminx/helper/ScreenshotOverlayMask$Region;
    .param p1, "second"    # Lcom/pikminx/helper/ScreenshotOverlayMask$Region;

    .line 100
    invoke-virtual {p0}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->left()I

    move-result v0

    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->right()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->left()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->right()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->top()I

    move-result v0

    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->bottom()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->top()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/ScreenshotOverlayMask$Region;->bottom()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0
.end method
