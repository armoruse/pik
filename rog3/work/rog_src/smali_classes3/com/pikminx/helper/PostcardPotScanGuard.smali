.class final Lcom/pikminx/helper/PostcardPotScanGuard;
.super Ljava/lang/Object;
.source "PostcardPotScanGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/PostcardPotScanGuard$Decision;
    }
.end annotation


# static fields
.field private static final REQUIRED_UNCHANGED_SCREENS:I = 0x2

.field private static final SAME_SCREEN_MIN_JACCARD:D = 0.6


# instance fields
.field private complete:Z

.field private lastNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unchangedScreens:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->lastNames:Ljava/util/Set;

    return-void
.end method

.method private static isSameScreen(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 55
    .local p0, "first":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "second":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 59
    .local v0, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 60
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    .local v2, "union":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    int-to-double v3, v3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    const-wide v5, 0x3fe3333333333333L    # 0.6

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 56
    .end local v0    # "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "union":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method observe(Ljava/lang/String;)Lcom/pikminx/helper/PostcardPotScanGuard$Decision;
    .locals 1
    .param p1, "signature"    # Ljava/lang/String;

    .line 22
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    .line 22
    :goto_1
    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PostcardPotScanGuard;->observe(Ljava/util/Collection;)Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    move-result-object v0

    return-object v0
.end method

.method observe(Ljava/util/Collection;)Lcom/pikminx/helper/PostcardPotScanGuard$Decision;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pikminx/helper/PostcardPotScanGuard$Decision;"
        }
    .end annotation

    .line 35
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->complete:Z

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;->COMPLETE:Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    return-object v0

    .line 38
    :cond_0
    if-nez p1, :cond_1

    .line 39
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    nop

    .line 41
    .local v0, "currentNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->lastNames:Ljava/util/Set;

    invoke-static {v1, v0}, Lcom/pikminx/helper/PostcardPotScanGuard;->isSameScreen(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    iget v1, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->unchangedScreens:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->unchangedScreens:I

    .line 43
    iget v1, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->unchangedScreens:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3

    .line 44
    iput-boolean v2, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->complete:Z

    .line 45
    sget-object v1, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;->COMPLETE:Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    return-object v1

    .line 48
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->unchangedScreens:I

    .line 50
    :cond_3
    invoke-static {v0}, Lcom/pikminx/helper/PostcardPotCatalog$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->lastNames:Ljava/util/Set;

    .line 51
    sget-object v1, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;->CONTINUE:Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    return-object v1
.end method

.method reset()V
    .locals 1

    .line 66
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->lastNames:Ljava/util/Set;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->unchangedScreens:I

    .line 68
    iput-boolean v0, p0, Lcom/pikminx/helper/PostcardPotScanGuard;->complete:Z

    .line 69
    return-void
.end method
