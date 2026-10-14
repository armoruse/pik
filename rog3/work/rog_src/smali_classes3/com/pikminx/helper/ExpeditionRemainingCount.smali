.class final Lcom/pikminx/helper/ExpeditionRemainingCount;
.super Ljava/lang/Object;
.source "ExpeditionRemainingCount.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static afterConfirmedDispatch(I)I
    .locals 2
    .param p0, "currentRemaining"    # I

    .line 8
    const/16 v0, 0x63

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
