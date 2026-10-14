.class final Lcom/pikminx/helper/SearchKeyboardGuard;
.super Ljava/lang/Object;
.source "SearchKeyboardGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/SearchKeyboardGuard$Action;
    }
.end annotation


# static fields
.field private static final REQUIRED_ABSENT_FRAMES:I = 0x2


# instance fields
.field private absentFrames:I

.field private backSent:Z

.field private final maximumVisibleFrames:I

.field private unconfirmedFrames:I

.field private visibleFramesAfterBack:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maximumVisibleFrames"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->maximumVisibleFrames:I

    .line 21
    return-void
.end method


# virtual methods
.method observe(ZZ)Lcom/pikminx/helper/SearchKeyboardGuard$Action;
    .locals 3
    .param p1, "inputMethodVisible"    # Z
    .param p2, "searchConfirmed"    # Z

    .line 24
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 25
    iput v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->unconfirmedFrames:I

    .line 26
    iput v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->visibleFramesAfterBack:I

    .line 27
    iget v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->absentFrames:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->absentFrames:I

    .line 28
    iget v0, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->absentFrames:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->COMPLETE:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->WAIT:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    :goto_0
    return-object v0

    .line 30
    :cond_1
    iput v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->absentFrames:I

    .line 31
    if-nez p2, :cond_3

    .line 32
    iget v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->unconfirmedFrames:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->unconfirmedFrames:I

    .line 33
    iget v0, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->unconfirmedFrames:I

    iget v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->maximumVisibleFrames:I

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->FAIL_UNCONFIRMED_SEARCH:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->WAIT:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    :goto_1
    return-object v0

    .line 35
    :cond_3
    iput v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->unconfirmedFrames:I

    .line 36
    iget-boolean v2, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->backSent:Z

    if-nez v2, :cond_4

    .line 37
    iput-boolean v0, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->backSent:Z

    .line 38
    iput v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->visibleFramesAfterBack:I

    .line 39
    sget-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->SEND_BACK:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    return-object v0

    .line 41
    :cond_4
    iget v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->visibleFramesAfterBack:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->visibleFramesAfterBack:I

    .line 42
    iget v0, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->visibleFramesAfterBack:I

    iget v1, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->maximumVisibleFrames:I

    if-lt v0, v1, :cond_5

    sget-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->FAIL_STUCK_KEYBOARD:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->WAIT:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    :goto_2
    return-object v0
.end method

.method reset()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->backSent:Z

    .line 47
    iput v0, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->absentFrames:I

    .line 48
    iput v0, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->unconfirmedFrames:I

    .line 49
    iput v0, p0, Lcom/pikminx/helper/SearchKeyboardGuard;->visibleFramesAfterBack:I

    .line 50
    return-void
.end method
