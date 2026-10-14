.class final Lcom/pikminx/helper/FeedTargetSequence;
.super Ljava/lang/Object;
.source "FeedTargetSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;
    }
.end annotation


# instance fields
.field private index:I

.field private final missingConfirmationLimit:I

.field private missingConfirmations:I

.field private final targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 2
    .param p2, "missingConfirmationLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 26
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 30
    invoke-static {p1}, Lcom/pikminx/helper/FeedTargetSequence;->sanitize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->targets:Ljava/util/List;

    .line 31
    iput p2, p0, Lcom/pikminx/helper/FeedTargetSequence;->missingConfirmationLimit:I

    .line 32
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missingConfirmationLimit must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sanitize(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 79
    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 81
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "strTrim":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strTrim":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 89
    :cond_2
    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method advance()Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/pikminx/helper/FeedTargetSequence;->current()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->EXHAUSTED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->missingConfirmations:I

    .line 72
    iget v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->index:I

    .line 73
    invoke-virtual {p0}, Lcom/pikminx/helper/FeedTargetSequence;->current()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->EXHAUSTED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->ADVANCED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    :goto_0
    return-object v0
.end method

.method confirmVisible()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->missingConfirmations:I

    .line 20
    return-void
.end method

.method current()Ljava/lang/String;
    .locals 2

    .line 39
    iget v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->index:I

    iget-object v1, p0, Lcom/pikminx/helper/FeedTargetSequence;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->targets:Ljava/util/List;

    iget v1, p0, Lcom/pikminx/helper/FeedTargetSequence;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method missingConfirmations()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->missingConfirmations:I

    return v0
.end method

.method observeMissing()Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/pikminx/helper/FeedTargetSequence;->current()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->EXHAUSTED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    return-object v0

    .line 57
    :cond_0
    iget v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->missingConfirmations:I

    add-int/lit8 v0, v0, 0x1

    .line 58
    .local v0, "i":I
    iput v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->missingConfirmations:I

    .line 59
    iget v1, p0, Lcom/pikminx/helper/FeedTargetSequence;->missingConfirmationLimit:I

    if-ge v0, v1, :cond_1

    .line 60
    sget-object v1, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->RETRY_CURRENT:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    return-object v1

    .line 62
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/pikminx/helper/FeedTargetSequence;->missingConfirmations:I

    .line 63
    iget v1, p0, Lcom/pikminx/helper/FeedTargetSequence;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pikminx/helper/FeedTargetSequence;->index:I

    .line 64
    invoke-virtual {p0}, Lcom/pikminx/helper/FeedTargetSequence;->current()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->EXHAUSTED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->ADVANCED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    :goto_0
    return-object v1
.end method

.method position()I
    .locals 2

    .line 46
    iget v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->index:I

    iget-object v1, p0, Lcom/pikminx/helper/FeedTargetSequence;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method size()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/pikminx/helper/FeedTargetSequence;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
