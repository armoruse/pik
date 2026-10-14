.class final Lcom/pikminx/helper/SwitchGuard;
.super Ljava/lang/Object;
.source "SwitchGuard.java"


# static fields
.field private static final COOLDOWN_MILLIS:J = 0x7530L

.field static final REQUIRED_CONFIRMATIONS:I = 0x2


# instance fields
.field private confirmations:I

.field private lastSwitchAt:J

.field private pendingFlower:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pikminx/helper/SwitchGuard;->lastSwitchAt:J

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/SwitchGuard;->pendingFlower:Ljava/lang/String;

    return-void
.end method

.method static isBelowThreshold(II)Z
    .locals 1
    .param p0, "remaining"    # I
    .param p1, "threshold"    # I

    .line 29
    if-ge p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method cancelSwitch()V
    .locals 1

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/SwitchGuard;->pendingFlower:Ljava/lang/String;

    .line 61
    return-void
.end method

.method confirmSwitch(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "highlightedFlower"    # Ljava/lang/String;
    .param p2, "nowMillis"    # J

    .line 50
    iget-object v0, p0, Lcom/pikminx/helper/SwitchGuard;->pendingFlower:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pikminx/helper/SwitchGuard;->pendingFlower:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/SwitchGuard;->pendingFlower:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p2, p3}, Lcom/pikminx/helper/SwitchGuard;->markSwitched(J)V

    .line 55
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method confirmations()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/pikminx/helper/SwitchGuard;->confirmations:I

    return v0
.end method

.method cooldownRemainingMillis(J)J
    .locals 6
    .param p1, "nowMillis"    # J

    .line 77
    iget-wide v0, p0, Lcom/pikminx/helper/SwitchGuard;->lastSwitchAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 78
    return-wide v2

    .line 80
    :cond_0
    iget-wide v0, p0, Lcom/pikminx/helper/SwitchGuard;->lastSwitchAt:J

    sub-long v0, p1, v0

    const-wide/16 v4, 0x7530

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method markSwitched(J)V
    .locals 1
    .param p1, "nowMillis"    # J

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/SwitchGuard;->confirmations:I

    .line 35
    iput-wide p1, p0, Lcom/pikminx/helper/SwitchGuard;->lastSwitchAt:J

    .line 36
    return-void
.end method

.method pendingFlower()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/pikminx/helper/SwitchGuard;->pendingFlower:Ljava/lang/String;

    return-object v0
.end method

.method requestSwitch(Ljava/lang/String;)V
    .locals 0
    .param p1, "flower"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/pikminx/helper/SwitchGuard;->pendingFlower:Ljava/lang/String;

    .line 41
    return-void
.end method

.method reset()V
    .locals 2

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/SwitchGuard;->confirmations:I

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pikminx/helper/SwitchGuard;->lastSwitchAt:J

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/SwitchGuard;->pendingFlower:Ljava/lang/String;

    .line 68
    return-void
.end method

.method shouldSwitch(Ljava/lang/Integer;IJ)Z
    .locals 4
    .param p1, "remaining"    # Ljava/lang/Integer;
    .param p2, "threshold"    # I
    .param p3, "nowMillis"    # J

    .line 13
    invoke-virtual {p0, p3, p4}, Lcom/pikminx/helper/SwitchGuard;->cooldownRemainingMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_2

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p2}, Lcom/pikminx/helper/SwitchGuard;->isBelowThreshold(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, Lcom/pikminx/helper/SwitchGuard;->confirmations:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/pikminx/helper/SwitchGuard;->confirmations:I

    .line 20
    iget v0, p0, Lcom/pikminx/helper/SwitchGuard;->confirmations:I

    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 21
    return v1

    .line 23
    :cond_1
    iput v1, p0, Lcom/pikminx/helper/SwitchGuard;->confirmations:I

    .line 24
    return v2

    .line 16
    :cond_2
    :goto_0
    iput v1, p0, Lcom/pikminx/helper/SwitchGuard;->confirmations:I

    .line 17
    return v1
.end method
