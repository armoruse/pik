.class final Lcom/pikminx/helper/PostcardTiming;
.super Ljava/lang/Object;
.source "PostcardTiming.java"


# static fields
.field private static final RECEIPT_RETURN_FACTOR:F = 1.5f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static receiptReturnDelayMillis(J)J
    .locals 4
    .param p0, "normalDelayMillis"    # J

    .line 10
    long-to-float v0, p0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method
