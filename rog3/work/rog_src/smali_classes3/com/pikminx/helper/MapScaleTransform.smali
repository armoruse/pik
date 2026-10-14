.class final Lcom/pikminx/helper/MapScaleTransform;
.super Ljava/lang/Object;
.source "MapScaleTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/MapScaleTransform$Size;
    }
.end annotation


# static fields
.field private static final MAX_ANALYSIS_WIDTH:I = 0x1b0


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analysisSize(II)Lcom/pikminx/helper/MapScaleTransform$Size;
    .locals 5
    .param p0, "sourceWidth"    # I
    .param p1, "sourceHeight"    # I

    .line 12
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x1b0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 13
    .local v1, "width":I
    int-to-float v2, p1

    int-to-float v3, v1

    .line 15
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 13
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 16
    .local v0, "height":I
    new-instance v2, Lcom/pikminx/helper/MapScaleTransform$Size;

    invoke-direct {v2, v1, v0}, Lcom/pikminx/helper/MapScaleTransform$Size;-><init>(II)V

    return-object v2
.end method

.method static toSource(Lcom/pikminx/helper/MapFlowerDetector$Point;IIII)Lcom/pikminx/helper/MapFlowerDetector$Point;
    .locals 7
    .param p0, "point"    # Lcom/pikminx/helper/MapFlowerDetector$Point;
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I
    .param p3, "analysisWidth"    # I
    .param p4, "analysisHeight"    # I

    .line 25
    int-to-float v0, p1

    const/4 v1, 0x1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 26
    .local v0, "scaleX":F
    int-to-float v2, p2

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 27
    .local v2, "scaleY":F
    new-instance v1, Lcom/pikminx/helper/MapFlowerDetector$Point;

    .line 28
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->x()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 29
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->y()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 30
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->area()I

    move-result v5

    .line 31
    invoke-virtual {p0}, Lcom/pikminx/helper/MapFlowerDetector$Point;->visualKind()Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/pikminx/helper/MapFlowerDetector$Point;-><init>(IIILcom/pikminx/helper/MapFlowerDetector$VisualKind;)V

    .line 27
    return-object v1
.end method
