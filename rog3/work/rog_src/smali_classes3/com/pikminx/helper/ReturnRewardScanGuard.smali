.class final Lcom/pikminx/helper/ReturnRewardScanGuard;
.super Ljava/lang/Object;
.source "ReturnRewardScanGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;
    }
.end annotation


# static fields
.field private static final REQUIRED_CLEAR_SCREENS:I = 0x2

.field private static final REQUIRED_EMPTY_SCREENS:I = 0x6

.field private static final REQUIRED_TARGET_SCREENS:I = 0x2


# instance fields
.field private awaitingTargetClear:Z

.field private emptyScreens:I

.field private pending:Lcom/pikminx/helper/ReturnRewardDetector$Target;

.field private targetClearScreens:I

.field private targetScreens:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method observe(Lcom/pikminx/helper/PostcardMatcher$Page;Lcom/pikminx/helper/ReturnRewardDetector$Target;II)Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;
    .locals 6
    .param p1, "page"    # Lcom/pikminx/helper/PostcardMatcher$Page;
    .param p2, "target"    # Lcom/pikminx/helper/ReturnRewardDetector$Target;
    .param p3, "screenWidth"    # I
    .param p4, "screenHeight"    # I

    .line 26
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pikminx/helper/ReturnRewardScanGuard;->observe(Lcom/pikminx/helper/PostcardMatcher$Page;Lcom/pikminx/helper/ReturnRewardDetector$Target;IIZ)Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    move-result-object v0

    return-object v0
.end method

.method observe(Lcom/pikminx/helper/PostcardMatcher$Page;Lcom/pikminx/helper/ReturnRewardDetector$Target;IIZ)Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;
    .locals 5
    .param p1, "page"    # Lcom/pikminx/helper/PostcardMatcher$Page;
    .param p2, "target"    # Lcom/pikminx/helper/ReturnRewardDetector$Target;
    .param p3, "screenWidth"    # I
    .param p4, "screenHeight"    # I
    .param p5, "allowPersistentTarget"    # Z

    .line 35
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->POSTCARD_RECEIVED:Lcom/pikminx/helper/PostcardMatcher$Page;

    if-ne p1, v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/pikminx/helper/ReturnRewardScanGuard;->reset()V

    .line 37
    sget-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->POSTCARD:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_5

    .line 40
    iput-object v1, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->pending:Lcom/pikminx/helper/ReturnRewardDetector$Target;

    .line 41
    iput v3, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetScreens:I

    .line 42
    iget-boolean v1, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->awaitingTargetClear:Z

    if-eqz v1, :cond_2

    .line 43
    iget v1, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetClearScreens:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetClearScreens:I

    if-lt v1, v0, :cond_1

    .line 44
    iput v3, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetClearScreens:I

    .line 45
    iput v3, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->emptyScreens:I

    .line 46
    iput-boolean v3, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->awaitingTargetClear:Z

    .line 48
    :cond_1
    sget-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->WAIT:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    return-object v0

    .line 50
    :cond_2
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->MAP:Lcom/pikminx/helper/PostcardMatcher$Page;

    if-eq p1, v0, :cond_3

    .line 51
    iput v3, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->emptyScreens:I

    .line 52
    sget-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->WAIT:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    return-object v0

    .line 54
    :cond_3
    iget v0, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->emptyScreens:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->emptyScreens:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_4

    .line 55
    sget-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->COMPLETE:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->WAIT:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    .line 54
    :goto_0
    return-object v0

    .line 57
    :cond_5
    iput v3, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->emptyScreens:I

    .line 58
    iget-boolean v4, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->awaitingTargetClear:Z

    if-eqz v4, :cond_7

    .line 59
    iput v3, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetClearScreens:I

    .line 60
    if-nez p5, :cond_6

    .line 61
    sget-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->WAIT:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    return-object v0

    .line 63
    :cond_6
    iput-boolean v3, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->awaitingTargetClear:Z

    .line 64
    iput-object v1, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->pending:Lcom/pikminx/helper/ReturnRewardDetector$Target;

    .line 65
    iput v3, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetScreens:I

    .line 67
    :cond_7
    iget-object v4, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->pending:Lcom/pikminx/helper/ReturnRewardDetector$Target;

    invoke-virtual {p2, v4, p3, p4}, Lcom/pikminx/helper/ReturnRewardDetector$Target;->samePosition(Lcom/pikminx/helper/ReturnRewardDetector$Target;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 68
    iget v4, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetScreens:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetScreens:I

    goto :goto_1

    .line 70
    :cond_8
    iput-object p2, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->pending:Lcom/pikminx/helper/ReturnRewardDetector$Target;

    .line 71
    iput v2, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetScreens:I

    .line 73
    :goto_1
    iget v4, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetScreens:I

    if-ge v4, v0, :cond_9

    .line 74
    sget-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->WAIT:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    return-object v0

    .line 76
    :cond_9
    iput-object v1, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->pending:Lcom/pikminx/helper/ReturnRewardDetector$Target;

    .line 77
    iput v3, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetScreens:I

    .line 78
    iput v3, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetClearScreens:I

    .line 79
    iput-boolean v2, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->awaitingTargetClear:Z

    .line 80
    sget-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->TARGET_CONFIRMED:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    return-object v0
.end method

.method reset()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->pending:Lcom/pikminx/helper/ReturnRewardDetector$Target;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetScreens:I

    .line 86
    iput v0, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->targetClearScreens:I

    .line 87
    iput v0, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->emptyScreens:I

    .line 88
    iput-boolean v0, p0, Lcom/pikminx/helper/ReturnRewardScanGuard;->awaitingTargetClear:Z

    .line 89
    return-void
.end method
