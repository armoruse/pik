.class final Lcom/pikminx/helper/RogExplorePanelPull;
.super Ljava/lang/Object;
.source "RogExplorePanelPull.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/RogExplorePanelPull$RecoveryTap;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static recoveryKey(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;)Ljava/lang/String;
    .locals 3

    .line 37
    invoke-virtual {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;->x()I

    move-result v0

    div-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;->y()I

    move-result p0

    div-int/lit8 p0, p0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NAV_TAB:EXPLORE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static recoveryTab(Ljava/util/List;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;"
        }
    .end annotation

    .line 10
    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    if-lez v0, :cond_f8

    if-lez v1, :cond_f8

    if-nez p0, :cond_d

    goto/16 :goto_f8

    .line 11
    :cond_d
    nop

    .line 12
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v2

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 13
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_28

    goto :goto_13

    .line 14
    :cond_28
    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s+"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v9

    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v10

    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v5

    add-int/2addr v10, v5

    div-int/lit8 v10, v10, 0x2

    .line 16
    const-string v5, "\u63a2\u96aa"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    const-string v5, "\u63a2\u9669"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_53
    int-to-float v5, v9

    int-to-float v6, v0

    const v11, 0x3ecccccd    # 0.4f

    mul-float/2addr v11, v6

    cmpg-float v11, v5, v11

    if-lez v11, :cond_13

    const v11, 0x3f51eb85    # 0.82f

    mul-float/2addr v6, v11

    cmpl-float v5, v5, v6

    if-gez v5, :cond_13

    int-to-float v5, v10

    int-to-float v6, v1

    const v11, 0x3da3d70a    # 0.08f

    mul-float/2addr v11, v6

    cmpg-float v11, v5, v11

    if-lez v11, :cond_13

    const v11, 0x3f666666    # 0.9f

    mul-float/2addr v11, v6

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_78

    .line 18
    goto :goto_13

    .line 19
    :cond_78
    nop

    .line 20
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_7f
    :goto_7f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 21
    if-eqz v14, :cond_7f

    invoke-virtual {v14}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_94

    goto :goto_7f

    .line 22
    :cond_94
    invoke-virtual {v14}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v15

    invoke-virtual {v14}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v16

    add-int v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    .line 23
    sub-int/2addr v15, v10

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3ccccccd    # 0.025f

    mul-float v16, v16, v6

    cmpl-float v15, v15, v16

    if-lez v15, :cond_b0

    goto :goto_7f

    .line 24
    :cond_b0
    invoke-virtual {v14}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 25
    invoke-virtual {v14}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v11

    const/16 v17, 0x1

    if-ge v11, v9, :cond_d3

    const-string v11, "\u76ae\u514b\u654f"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d0

    const-string v11, "\u82b1\u82d7"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d3

    :cond_d0
    move/from16 v11, v17

    goto :goto_d4

    :cond_d3
    const/4 v11, 0x0

    :goto_d4
    or-int/2addr v12, v11

    .line 26
    invoke-virtual {v14}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v11

    if-le v11, v9, :cond_e4

    const-string v11, "\u660e\u4fe1\u7247"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e4

    goto :goto_e6

    :cond_e4
    const/16 v17, 0x0

    :goto_e6
    or-int v13, v13, v17

    .line 27
    goto :goto_7f

    .line 28
    :cond_e9
    if-eqz v12, :cond_f5

    if-eqz v13, :cond_f5

    .line 29
    if-eqz v4, :cond_f0

    return-object v2

    .line 30
    :cond_f0
    new-instance v4, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    invoke-direct {v4, v9, v10}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    .line 32
    :cond_f5
    goto/16 :goto_13

    .line 33
    :cond_f7
    return-object v4

    .line 10
    :cond_f8
    :goto_f8
    return-object v2
.end method

.method static start(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 2

    .line 47
    int-to-float p2, p2

    const v0, 0x3da3d70a    # 0.08f

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 48
    invoke-virtual {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;->y()I

    move-result p0

    const v1, 0x3d0f5c29    # 0.035f

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p0, p2

    .line 47
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 49
    new-instance p2, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p2, p1, p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object p2
.end method
