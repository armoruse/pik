.class final Lcom/pikminx/helper/PostcardAutomation;
.super Ljava/lang/Object;
.source "PostcardAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/PostcardAutomation$Step;
    }
.end annotation


# instance fields
.field private collectionLimit:I

.field private completedCount:I

.field private favoriteApplied:Z

.field private petalPotName:Ljava/lang/String;

.field private pikminCount:I

.field private receiveTapped:Z

.field private step:Lcom/pikminx/helper/PostcardAutomation$Step;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/PostcardAutomation;->petalPotName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/pikminx/helper/PostcardAutomation;->pikminCount:I

    .line 28
    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->FIND_FLOWER:Lcom/pikminx/helper/PostcardAutomation$Step;

    iput-object v0, p0, Lcom/pikminx/helper/PostcardAutomation;->step:Lcom/pikminx/helper/PostcardAutomation$Step;

    return-void
.end method


# virtual methods
.method collectionLimit()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/pikminx/helper/PostcardAutomation;->collectionLimit:I

    return v0
.end method

.method completedCount()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/pikminx/helper/PostcardAutomation;->completedCount:I

    return v0
.end method

.method confirmReceiptExit()Z
    .locals 3

    .line 94
    iget-boolean v0, p0, Lcom/pikminx/helper/PostcardAutomation;->receiveTapped:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    return v1

    .line 97
    :cond_0
    iput-boolean v1, p0, Lcom/pikminx/helper/PostcardAutomation;->receiveTapped:Z

    .line 98
    iget v0, p0, Lcom/pikminx/helper/PostcardAutomation;->completedCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/pikminx/helper/PostcardAutomation;->completedCount:I

    .line 99
    iput-boolean v1, p0, Lcom/pikminx/helper/PostcardAutomation;->favoriteApplied:Z

    .line 100
    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->FIND_FLOWER:Lcom/pikminx/helper/PostcardAutomation$Step;

    iput-object v0, p0, Lcom/pikminx/helper/PostcardAutomation;->step:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 101
    return v2
.end method

.method favoriteApplied()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/pikminx/helper/PostcardAutomation;->favoriteApplied:Z

    return v0
.end method

.method isComplete()Z
    .locals 2

    .line 51
    iget v0, p0, Lcom/pikminx/helper/PostcardAutomation;->completedCount:I

    iget v1, p0, Lcom/pikminx/helper/PostcardAutomation;->collectionLimit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method markFavoriteApplied()V
    .locals 1

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pikminx/helper/PostcardAutomation;->favoriteApplied:Z

    .line 76
    return-void
.end method

.method markReceiveTapped()V
    .locals 1

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pikminx/helper/PostcardAutomation;->receiveTapped:Z

    .line 84
    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->WAIT_RECEIPT_EXIT:Lcom/pikminx/helper/PostcardAutomation$Step;

    iput-object v0, p0, Lcom/pikminx/helper/PostcardAutomation;->step:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 85
    return-void
.end method

.method moveTo(Lcom/pikminx/helper/PostcardAutomation$Step;)V
    .locals 0
    .param p1, "next"    # Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 59
    iput-object p1, p0, Lcom/pikminx/helper/PostcardAutomation;->step:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 60
    return-void
.end method

.method petalPotName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/pikminx/helper/PostcardAutomation;->petalPotName:Ljava/lang/String;

    return-object v0
.end method

.method pikminCount()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/pikminx/helper/PostcardAutomation;->pikminCount:I

    return v0
.end method

.method receiveTapped()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/pikminx/helper/PostcardAutomation;->receiveTapped:Z

    return v0
.end method

.method retryReceive()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pikminx/helper/PostcardAutomation;->receiveTapped:Z

    .line 89
    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->RECEIVE:Lcom/pikminx/helper/PostcardAutomation$Step;

    iput-object v0, p0, Lcom/pikminx/helper/PostcardAutomation;->step:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 90
    return-void
.end method

.method start(ILjava/lang/String;I)V
    .locals 3
    .param p1, "requestedLimit"    # I
    .param p2, "requestedPetalPotName"    # Ljava/lang/String;
    .param p3, "requestedPikminCount"    # I

    .line 33
    const/16 v0, 0xf

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/pikminx/helper/PostcardAutomation;->collectionLimit:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/PostcardAutomation;->completedCount:I

    .line 35
    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/pikminx/helper/PostcardAutomation;->petalPotName:Ljava/lang/String;

    .line 36
    const/4 v2, 0x5

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/pikminx/helper/PostcardAutomation;->pikminCount:I

    .line 37
    sget-object v1, Lcom/pikminx/helper/PostcardAutomation$Step;->FIND_FLOWER:Lcom/pikminx/helper/PostcardAutomation$Step;

    iput-object v1, p0, Lcom/pikminx/helper/PostcardAutomation;->step:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 38
    iput-boolean v0, p0, Lcom/pikminx/helper/PostcardAutomation;->favoriteApplied:Z

    .line 39
    iput-boolean v0, p0, Lcom/pikminx/helper/PostcardAutomation;->receiveTapped:Z

    .line 40
    return-void
.end method

.method step()Lcom/pikminx/helper/PostcardAutomation$Step;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/pikminx/helper/PostcardAutomation;->step:Lcom/pikminx/helper/PostcardAutomation$Step;

    return-object v0
.end method
