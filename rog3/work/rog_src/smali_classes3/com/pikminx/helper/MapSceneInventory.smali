.class final Lcom/pikminx/helper/MapSceneInventory;
.super Ljava/lang/Object;
.source "MapSceneInventory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;,
        Lcom/pikminx/helper/MapSceneInventory$Kind;,
        Lcom/pikminx/helper/MapSceneInventory$Count;
    }
.end annotation


# instance fields
.field private final markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pikminx/helper/MapSceneInventory;->markers:Ljava/util/List;

    return-void
.end method

.method static count(Ljava/util/List;)Lcom/pikminx/helper/MapSceneInventory$Count;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;",
            ">;)",
            "Lcom/pikminx/helper/MapSceneInventory$Count;"
        }
    .end annotation

    .line 27
    .local p0, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;>;"
    const/4 v0, 0x0

    .line 28
    .local v0, "flowers":I
    const/4 v1, 0x0

    .line 29
    .local v1, "mushrooms":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;

    .line 30
    .local v3, "marker":Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->kind()Lcom/pikminx/helper/MapSceneInventory$Kind;

    move-result-object v4

    sget-object v5, Lcom/pikminx/helper/MapSceneInventory$Kind;->BIG_FLOWER:Lcom/pikminx/helper/MapSceneInventory$Kind;

    if-ne v4, v5, :cond_0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v3}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->kind()Lcom/pikminx/helper/MapSceneInventory$Kind;

    move-result-object v4

    sget-object v5, Lcom/pikminx/helper/MapSceneInventory$Kind;->MUSHROOM:Lcom/pikminx/helper/MapSceneInventory$Kind;

    if-ne v4, v5, :cond_1

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 35
    .end local v3    # "marker":Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;
    :cond_1
    :goto_1
    goto :goto_0

    .line 36
    :cond_2
    new-instance v2, Lcom/pikminx/helper/MapSceneInventory$Count;

    invoke-direct {v2, v0, v1}, Lcom/pikminx/helper/MapSceneInventory$Count;-><init>(II)V

    return-object v2
.end method

.method static isSafeFlowerCandidate(Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;II)Z
    .locals 3
    .param p0, "marker"    # Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 40
    invoke-virtual {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->kind()Lcom/pikminx/helper/MapSceneInventory$Kind;

    move-result-object v0

    sget-object v1, Lcom/pikminx/helper/MapSceneInventory$Kind;->BIG_FLOWER:Lcom/pikminx/helper/MapSceneInventory$Kind;

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->x()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->x()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->y()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    const v2, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->y()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    const v2, 0x3f47ae14    # 0.78f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0
.end method

.method static synthetic lambda$mark$0(IIILcom/pikminx/helper/MapSceneInventory$ObjectMarker;)Z
    .locals 1
    .param p0, "x"    # I
    .param p1, "mergeDistance"    # I
    .param p2, "y"    # I
    .param p3, "marker"    # Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;

    .line 48
    invoke-virtual {p3}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->x()I

    move-result v0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 49
    invoke-virtual {p3}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->y()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0
.end method

.method static synthetic lambda$rejectedCount$1(Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;)Z
    .locals 2
    .param p0, "marker"    # Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;

    .line 59
    invoke-virtual {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->kind()Lcom/pikminx/helper/MapSceneInventory$Kind;

    move-result-object v0

    sget-object v1, Lcom/pikminx/helper/MapSceneInventory$Kind;->MUSHROOM:Lcom/pikminx/helper/MapSceneInventory$Kind;

    if-eq v0, v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->kind()Lcom/pikminx/helper/MapSceneInventory$Kind;

    move-result-object v0

    sget-object v1, Lcom/pikminx/helper/MapSceneInventory$Kind;->PLAYER:Lcom/pikminx/helper/MapSceneInventory$Kind;

    if-eq v0, v1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->kind()Lcom/pikminx/helper/MapSceneInventory$Kind;

    move-result-object v0

    sget-object v1, Lcom/pikminx/helper/MapSceneInventory$Kind;->OVERLAY:Lcom/pikminx/helper/MapSceneInventory$Kind;

    if-eq v0, v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->kind()Lcom/pikminx/helper/MapSceneInventory$Kind;

    move-result-object v0

    sget-object v1, Lcom/pikminx/helper/MapSceneInventory$Kind;->UNKNOWN:Lcom/pikminx/helper/MapSceneInventory$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 59
    :goto_1
    return v0
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/pikminx/helper/MapSceneInventory;->markers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    return-void
.end method

.method count()Lcom/pikminx/helper/MapSceneInventory$Count;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/pikminx/helper/MapSceneInventory;->markers:Ljava/util/List;

    invoke-static {v0}, Lcom/pikminx/helper/MapSceneInventory;->count(Ljava/util/List;)Lcom/pikminx/helper/MapSceneInventory$Count;

    move-result-object v0

    return-object v0
.end method

.method mark(Lcom/pikminx/helper/MapSceneInventory$Kind;III)V
    .locals 2
    .param p1, "kind"    # Lcom/pikminx/helper/MapSceneInventory$Kind;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "mergeDistance"    # I

    .line 48
    iget-object v0, p0, Lcom/pikminx/helper/MapSceneInventory;->markers:Ljava/util/List;

    new-instance v1, Lcom/pikminx/helper/MapSceneInventory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p4, p3}, Lcom/pikminx/helper/MapSceneInventory$$ExternalSyntheticLambda0;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 50
    iget-object v0, p0, Lcom/pikminx/helper/MapSceneInventory;->markers:Ljava/util/List;

    new-instance v1, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;

    invoke-direct {v1, p1, p2, p3}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;-><init>(Lcom/pikminx/helper/MapSceneInventory$Kind;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method rejectedCount()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/pikminx/helper/MapSceneInventory;->markers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/MapSceneInventory$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/pikminx/helper/MapSceneInventory$$ExternalSyntheticLambda1;-><init>()V

    .line 59
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v0, v0

    .line 58
    return v0
.end method
