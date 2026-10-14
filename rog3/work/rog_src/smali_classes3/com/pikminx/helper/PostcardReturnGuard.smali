.class final Lcom/pikminx/helper/PostcardReturnGuard;
.super Ljava/lang/Object;
.source "PostcardReturnGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/PostcardReturnGuard$Decision;
    }
.end annotation


# static fields
.field private static final MAX_MISSING_FRAMES:I = 0x8

.field private static final REQUIRED_VISIBLE_FRAMES:I = 0x2


# instance fields
.field private missingFrames:I

.field private visibleFrames:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method observe(ZZ)Lcom/pikminx/helper/PostcardReturnGuard$Decision;
    .locals 2
    .param p1, "returningFromReceipt"    # Z
    .param p2, "bubbleVisible"    # Z

    .line 20
    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/pikminx/helper/PostcardReturnGuard;->reset()V

    .line 22
    sget-object v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->WAIT:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 25
    iput v0, p0, Lcom/pikminx/helper/PostcardReturnGuard;->missingFrames:I

    .line 26
    iget v0, p0, Lcom/pikminx/helper/PostcardReturnGuard;->visibleFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pikminx/helper/PostcardReturnGuard;->visibleFrames:I

    .line 27
    iget v0, p0, Lcom/pikminx/helper/PostcardReturnGuard;->visibleFrames:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 28
    sget-object v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->OPEN_PREVIOUS_FLOWER:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->WAIT:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    .line 27
    :goto_0
    return-object v0

    .line 31
    :cond_2
    iput v0, p0, Lcom/pikminx/helper/PostcardReturnGuard;->visibleFrames:I

    .line 32
    iget v0, p0, Lcom/pikminx/helper/PostcardReturnGuard;->missingFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pikminx/helper/PostcardReturnGuard;->missingFrames:I

    .line 33
    iget v0, p0, Lcom/pikminx/helper/PostcardReturnGuard;->missingFrames:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 34
    sget-object v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->FAILED:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    goto :goto_1

    .line 35
    :cond_3
    sget-object v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->WAIT:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    .line 33
    :goto_1
    return-object v0
.end method

.method reset()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/PostcardReturnGuard;->visibleFrames:I

    .line 40
    iput v0, p0, Lcom/pikminx/helper/PostcardReturnGuard;->missingFrames:I

    .line 41
    return-void
.end method
