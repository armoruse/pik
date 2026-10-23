.class final Lcom/pikminx/helper/RogExplorePanelPull;
.super Ljava/lang/Object;
.source "RogExplorePanelPull.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static start(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 2

    .line 7
    int-to-float p2, p2

    const v0, 0x3da3d70a    # 0.08f

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;->y()I

    move-result p0

    const v1, 0x3d0f5c29    # 0.035f

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p0, p2

    .line 7
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 9
    new-instance p2, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p2, p1, p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object p2
.end method
