.class final Lcom/pikminx/helper/OcrScan;
.super Ljava/lang/Object;
.source "OcrScan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/OcrScan$Frame;,
        Lcom/pikminx/helper/OcrScan$Transform;,
        Lcom/pikminx/helper/OcrScan$PixelReader;,
        Lcom/pikminx/helper/OcrScan$Profile;,
        Lcom/pikminx/helper/OcrScan$RoiBasis;,
        Lcom/pikminx/helper/OcrScan$ScriptMode;
    }
.end annotation


# static fields
.field private static final WHITE:I = -0x1


# direct methods
.method static bridge synthetic -$$Nest$smclamp(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/OcrScan;->clamp(III)I

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "minimum"    # I
    .param p2, "maximum"    # I

    .line 231
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
