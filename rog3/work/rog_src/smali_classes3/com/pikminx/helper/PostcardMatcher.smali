.class final Lcom/pikminx/helper/PostcardMatcher;
.super Ljava/lang/Object;
.source "PostcardMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/PostcardMatcher$Page;,
        Lcom/pikminx/helper/PostcardMatcher$Target;,
        Lcom/pikminx/helper/PostcardMatcher$PetalPot;,
        Lcom/pikminx/helper/PostcardMatcher$WritingSystem;
    }
.end annotation


# static fields
.field private static final SELECTED_COUNT:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$A0jctdvFT2_DGiOMOK9HART79hg(Lcom/pikminx/helper/PetalMatcher$Token;)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 0

    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->target(Lcom/pikminx/helper/PetalMatcher$Token;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FHDhLPT69Ew873Hlpidn1NHGgKM(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Gbe0vCE_ZSvvHaR8xEqOX1V7kHk(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->looksLikeResultLabel(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "(\\d)\\s*/\\s*5"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher;->SELECTED_COUNT:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static detectPage(Ljava/util/List;II)Lcom/pikminx/helper/PostcardMatcher$Page;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/PostcardMatcher$Page;"
        }
    .end annotation

    .line 30
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const-string v0, "\u6301\u6709\u7684\u660e\u4fe1\u7247"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->hasText(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u63a5\u6536"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->hasText(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->POSTCARD_RECEIVED:Lcom/pikminx/helper/PostcardMatcher$Page;

    return-object v0

    .line 33
    :cond_0
    const-string v0, "\u9078\u64c7\u76ae\u514b\u654f\u51fa\u53bb\u53d6\u56de\u660e\u4fe1\u7247"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->hasText(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 34
    const-string v0, "\u53d6\u56de\u660e\u4fe1\u7247"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->hasText(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->findGo(Ljava/util/List;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    if-nez v0, :cond_9

    .line 35
    :cond_1
    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->hasSelectedPikminCounter(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p2}, Lcom/pikminx/helper/PostcardMatcher;->findSortControl(Ljava/util/List;I)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    if-nez v0, :cond_9

    .line 36
    :cond_2
    invoke-static {p0, p2}, Lcom/pikminx/helper/PostcardMatcher;->isSortMenuVisible(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 39
    :cond_3
    const-string v0, "\u9078\u64c7\u8981\u4f7f\u7528\u7684\u82b1\u74e3"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->hasText(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "\u4e0b\u4e00\u6b65"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->hasText(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 42
    :cond_4
    const-string v0, "\u63a5\u53d7\u4e26\u7e7c\u7e8c"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->hasText(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u6ce8\u610f"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->hasText(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->WARNING:Lcom/pikminx/helper/PostcardMatcher$Page;

    return-object v0

    .line 45
    :cond_5
    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->findUsePetals(Ljava/util/List;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 46
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->FLOWER_DETAIL:Lcom/pikminx/helper/PostcardMatcher$Page;

    return-object v0

    .line 50
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/PostcardMatcher;->hasConfirmedMapFlowerBubble(Ljava/util/List;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->MAP:Lcom/pikminx/helper/PostcardMatcher$Page;

    return-object v0

    .line 53
    :cond_7
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->UNKNOWN:Lcom/pikminx/helper/PostcardMatcher$Page;

    return-object v0

    .line 40
    :cond_8
    :goto_0
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->PETAL_SELECTION:Lcom/pikminx/helper/PostcardMatcher$Page;

    return-object v0

    .line 37
    :cond_9
    :goto_1
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->PIKMIN_SELECTION:Lcom/pikminx/helper/PostcardMatcher$Page;

    return-object v0
.end method

.method private static varargs exactTokens(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;"
        }
    .end annotation

    .line 823
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 825
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 829
    .local v3, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 830
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_1
    goto :goto_1

    .line 833
    :cond_2
    return-object v1
.end method

.method static findAcceptContinue(Ljava/util/List;)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 61
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const-string v0, "\u63a5\u53d7\u4e26\u7e7c\u7e8c"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->findText(Ljava/util/List;Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    return-object v0
.end method

.method static findAvailablePetalPot(Ljava/util/List;Ljava/lang/String;III)Lcom/pikminx/helper/PostcardMatcher$PetalPot;
    .locals 12
    .param p1, "targetPotName"    # Ljava/lang/String;
    .param p2, "requiredCount"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/lang/String;",
            "III)",
            "Lcom/pikminx/helper/PostcardMatcher$PetalPot;"
        }
    .end annotation

    .line 526
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p1}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 527
    .local v10, "canonical":Ljava/lang/String;
    const/4 v11, 0x0

    if-nez v10, :cond_0

    .line 528
    return-object v11

    .line 530
    :cond_0
    const v5, 0x3f07ae14    # 0.53f

    const v6, 0x3f75c28f    # 0.96f

    const v7, 0x3e23d70a    # 0.16f

    const v8, 0x3e4ccccd    # 0.2f

    new-instance v9, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda10;

    invoke-direct {v9}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda10;-><init>()V

    move-object v0, p0

    move-object v1, v10

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v9}, Lcom/pikminx/helper/PetalPotDetector;->find(Ljava/util/List;Ljava/lang/String;IIIFFFFLjava/util/function/Function;)Lcom/pikminx/helper/PetalPotDetector$Match;

    move-result-object v0

    .line 544
    .local v0, "match":Lcom/pikminx/helper/PetalPotDetector$Match;
    if-nez v0, :cond_1

    .line 545
    move/from16 v4, p4

    goto :goto_0

    .line 546
    :cond_1
    new-instance v11, Lcom/pikminx/helper/PostcardMatcher$PetalPot;

    .line 548
    invoke-virtual {v0}, Lcom/pikminx/helper/PetalPotDetector$Match;->count()I

    move-result v1

    .line 549
    invoke-virtual {v0}, Lcom/pikminx/helper/PetalPotDetector$Match;->x()I

    move-result v2

    .line 550
    invoke-virtual {v0}, Lcom/pikminx/helper/PetalPotDetector$Match;->labelTop()I

    move-result v3

    move/from16 v4, p4

    int-to-float v5, v4

    const v6, 0x3d99999a    # 0.075f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v11, v10, v1, v2, v3}, Lcom/pikminx/helper/PostcardMatcher$PetalPot;-><init>(Ljava/lang/String;III)V

    .line 544
    :goto_0
    return-object v11
.end method

.method static findDetailFlowerName(Ljava/util/List;II)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 367
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/PostcardMatcher;->findUsePetals(Ljava/util/List;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v2

    .line 368
    .local v2, "usePetals":Lcom/pikminx/helper/PostcardMatcher$Target;
    int-to-float v3, v1

    const v4, 0x3ed70a3d    # 0.42f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 369
    .local v3, "minY":I
    const v4, 0x3f47ae14    # 0.78f

    if-nez v2, :cond_0

    .line 370
    int-to-float v5, v1

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {v2}, Lcom/pikminx/helper/PostcardMatcher$Target;->y()I

    move-result v5

    int-to-float v6, v1

    const v7, 0x3cf5c28f    # 0.03f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v6, v1

    mul-float/2addr v6, v4

    .line 372
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 371
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_0
    nop

    .line 373
    .local v5, "maxY":I
    if-gt v5, v3, :cond_1

    .line 374
    int-to-float v6, v1

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 376
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v4, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 378
    .local v7, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-static {v7, v0, v3, v5}, Lcom/pikminx/helper/PostcardMatcher;->isDetailTitleCandidate(Lcom/pikminx/helper/PetalMatcher$Token;III)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 379
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v7    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_2
    goto :goto_1

    .line 382
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 383
    .local v7, "first":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 384
    .local v9, "second":Lcom/pikminx/helper/PetalMatcher$Token;
    if-eq v7, v9, :cond_4

    .line 385
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v10

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 386
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v10

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-double v10, v10

    int-to-double v12, v1

    const-wide v14, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v12, v14

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_4

    .line 387
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v10

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    int-to-double v12, v0

    const-wide v14, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v12, v14

    cmpl-double v10, v10, v12

    if-lez v10, :cond_5

    .line 388
    goto :goto_3

    .line 390
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 391
    .local v10, "merged":Ljava/lang/String;
    invoke-static {v10}, Lcom/pikminx/helper/PostcardMatcher;->isDetailTitleText(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 392
    goto :goto_3

    .line 394
    :cond_6
    new-instance v6, Lcom/pikminx/helper/PostcardMatcher$Target;

    .line 396
    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v8

    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 397
    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v11

    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/2addr v8, v11

    div-int/lit8 v8, v8, 0x2

    .line 398
    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v11

    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    invoke-direct {v6, v10, v8, v11}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    .line 394
    return-object v6

    .line 400
    .end local v7    # "first":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v9    # "second":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v10    # "merged":Ljava/lang/String;
    :cond_7
    goto/16 :goto_2

    .line 401
    :cond_8
    add-int v6, v3, v5

    div-int/lit8 v6, v6, 0x2

    .line 402
    .local v6, "anchorY":I
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda8;

    invoke-direct {v8, v0, v6}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda8;-><init>(II)V

    .line 403
    invoke-static {v8}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v7

    .line 406
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 407
    .local v7, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    new-instance v8, Lcom/pikminx/helper/PostcardMatcher$Target;

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v10

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    :goto_4
    return-object v8
.end method

.method static findDetailPostcardName(Ljava/util/List;II)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 329
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    int-to-float v0, p2

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 330
    .local v0, "minY":I
    int-to-float v1, p2

    const v2, 0x3e851eb8    # 0.26f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 331
    .local v1, "maxY":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 333
    .local v4, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-static {v4, p1, v0, v1}, Lcom/pikminx/helper/PostcardMatcher;->isDetailPostcardNameCandidate(Lcom/pikminx/helper/PetalMatcher$Token;III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 334
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v4    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_0
    goto :goto_0

    .line 337
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 338
    .local v4, "first":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 339
    .local v6, "second":Lcom/pikminx/helper/PetalMatcher$Token;
    if-eq v6, v4, :cond_2

    .line 340
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v7

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 341
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v7

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-double v7, v7

    int-to-double v9, p2

    const-wide v11, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v9, v11

    cmpl-double v7, v7, v9

    if-gtz v7, :cond_2

    .line 342
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v7

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    int-to-double v9, p1

    const-wide v11, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v9, v11

    cmpl-double v7, v7, v9

    if-lez v7, :cond_3

    .line 343
    goto :goto_2

    .line 345
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, "merged":Ljava/lang/String;
    invoke-static {v7}, Lcom/pikminx/helper/PostcardMatcher;->isDetailPostcardNameText(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 347
    goto :goto_2

    .line 349
    :cond_4
    new-instance v3, Lcom/pikminx/helper/PostcardMatcher$Target;

    .line 351
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v5

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 352
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v8

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v5, v8

    div-int/lit8 v5, v5, 0x2

    .line 353
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v8

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v3, v7, v5, v8}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    .line 349
    return-object v3

    .line 355
    .end local v4    # "first":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v6    # "second":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v7    # "merged":Ljava/lang/String;
    :cond_5
    goto/16 :goto_1

    .line 356
    :cond_6
    add-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    .line 357
    .local v3, "anchorY":I
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, v3}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda0;-><init>(II)V

    .line 358
    invoke-static {v5}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v4

    .line 361
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 362
    .local v4, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    new-instance v5, Lcom/pikminx/helper/PostcardMatcher$Target;

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v7

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    :goto_3
    return-object v5
.end method

.method static findDiscard(Ljava/util/List;)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 80
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const-string v0, "\u6368\u68c4"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->findExactText(Ljava/util/List;Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    .line 81
    .local v0, "traditional":Lcom/pikminx/helper/PostcardMatcher$Target;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "\u820d\u68c4"

    invoke-static {p0, v1}, Lcom/pikminx/helper/PostcardMatcher;->findExactText(Ljava/util/List;Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method static findDiscard(Ljava/util/List;II)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 85
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->findDiscard(Ljava/util/List;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    .line 86
    .local v0, "discard":Lcom/pikminx/helper/PostcardMatcher$Target;
    if-eqz v0, :cond_0

    .line 87
    return-object v0

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->findReceive(Ljava/util/List;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v1

    .line 90
    .local v1, "receive":Lcom/pikminx/helper/PostcardMatcher$Target;
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/PostcardMatcher;->detectPage(Ljava/util/List;II)Lcom/pikminx/helper/PostcardMatcher$Page;

    move-result-object v2

    sget-object v3, Lcom/pikminx/helper/PostcardMatcher$Page;->POSTCARD_RECEIVED:Lcom/pikminx/helper/PostcardMatcher$Page;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardMatcher$Target;->x()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    .line 93
    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardMatcher$Target;->x()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3f6b851f    # 0.92f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gez v2, :cond_2

    .line 94
    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardMatcher$Target;->y()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    const v4, 0x3f0ccccd    # 0.55f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    .line 95
    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardMatcher$Target;->y()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    new-instance v2, Lcom/pikminx/helper/PostcardMatcher$Target;

    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardMatcher$Target;->x()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardMatcher$Target;->y()I

    move-result v4

    const-string v5, "\u6368\u68c4"

    invoke-direct {v2, v5, v3, v4}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    return-object v2

    .line 96
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static findExactText(Ljava/util/List;Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 782
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p1}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;)V

    .line 784
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 785
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda24;

    invoke-direct {v2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda24;-><init>()V

    .line 786
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 787
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PostcardMatcher$Target;

    .line 783
    return-object v1
.end method

.method static findFavoriteMenuItem(Ljava/util/List;I)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 2
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;I)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 432
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda22;-><init>()V

    .line 433
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda23;

    invoke-direct {v1, p1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda23;-><init>(I)V

    .line 434
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda1;-><init>()V

    .line 435
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda24;-><init>()V

    .line 436
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 437
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PostcardMatcher$Target;

    .line 432
    return-object v0
.end method

.method static findFirstPikmin(Ljava/util/List;II)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 466
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/PostcardMatcher;->findPikminCandidates(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 467
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PostcardMatcher$Target;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PostcardMatcher$Target;

    :goto_0
    return-object v1
.end method

.method static findGo(Ljava/util/List;)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 69
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const-string v0, "g0"

    const-string v1, "60"

    const-string v2, "go"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->exactTokens(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda24;-><init>()V

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PostcardMatcher$Target;

    .line 69
    return-object v0
.end method

.method static findMapFlowerName(Ljava/util/List;II)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 103
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\u82b1\u6735"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 105
    .local v2, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const-string v3, "\u82b1\u74e3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    int-to-double v5, v3

    int-to-double v7, p1

    const-wide v9, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v7, v9

    cmpl-double v3, v5, v7

    if-lez v3, :cond_0

    .line 109
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    int-to-double v5, v3

    int-to-double v7, p1

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v7, v9

    cmpg-double v3, v5, v7

    if-gez v3, :cond_0

    .line 110
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    int-to-double v5, v3

    int-to-double v7, p2

    const-wide v9, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v7, v9

    cmpl-double v3, v5, v7

    if-lez v3, :cond_0

    .line 111
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    int-to-double v5, v3

    int-to-double v7, p2

    const-wide v9, 0x3fea3d70a3d70a3dL    # 0.82

    mul-double/2addr v7, v9

    cmpg-double v3, v5, v7

    if-gez v3, :cond_0

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 115
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda28;

    invoke-direct {v2, p1, p2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda28;-><init>(II)V

    .line 116
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    .line 119
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 120
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    if-nez v1, :cond_2

    .line 121
    return-object v2

    .line 123
    :cond_2
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 124
    .local v2, "flowerEnd":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 125
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_1
    nop

    .line 127
    .local v3, "flowerName":Ljava/lang/String;
    new-instance v4, Lcom/pikminx/helper/PostcardMatcher$Target;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v5

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v6

    invoke-direct {v4, v3, v5, v6}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    return-object v4
.end method

.method static findMapPostcardName(Ljava/util/List;II)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 132
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/PostcardMatcher;->findSplitMapPostcardName(Ljava/util/List;II)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    .line 133
    .local v0, "splitBubble":Lcom/pikminx/helper/PostcardMatcher$Target;
    if-eqz v0, :cond_0

    .line 134
    return-object v0

    .line 136
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 137
    .local v2, "merged":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-static {v2, p1, p2}, Lcom/pikminx/helper/PostcardMatcher;->findMergedMapPostcardName(Lcom/pikminx/helper/PetalMatcher$Token;II)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v3

    .line 138
    .local v3, "mergedLocation":Lcom/pikminx/helper/PostcardMatcher$Target;
    if-eqz v3, :cond_1

    .line 139
    return-object v3

    .line 141
    .end local v2    # "merged":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "mergedLocation":Lcom/pikminx/helper/PostcardMatcher$Target;
    :cond_1
    goto :goto_0

    .line 143
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\u82b1\u6735"

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 145
    .local v3, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    const-string v4, "\u82b1\u74e3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 148
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    int-to-double v6, v4

    int-to-double v8, p1

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    cmpl-double v4, v6, v8

    if-lez v4, :cond_3

    .line 149
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    int-to-double v6, v4

    int-to-double v8, p1

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v8, v10

    cmpg-double v4, v6, v8

    if-gez v4, :cond_3

    .line 150
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    int-to-double v6, v4

    int-to-double v8, p2

    const-wide v10, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v8, v10

    cmpl-double v4, v6, v8

    if-lez v4, :cond_3

    .line 151
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    int-to-double v6, v4

    int-to-double v8, p2

    const-wide v10, 0x3fea3d70a3d70a3dL    # 0.82

    mul-double/2addr v8, v10

    cmpg-double v4, v6, v8

    if-gez v4, :cond_3

    .line 152
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v5    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 155
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, p2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda1;-><init>(II)V

    .line 156
    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v2

    .line 159
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 160
    .local v2, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    if-nez v2, :cond_5

    .line 161
    return-object v3

    .line 163
    :cond_5
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "text":Ljava/lang/String;
    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "parts":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_6

    .line 166
    array-length v7, v6

    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    const-string v8, " "

    invoke-static {v8, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "trailing":Ljava/lang/String;
    invoke-static {v7}, Lcom/pikminx/helper/PostcardMatcher;->isDetailPostcardNameText(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 169
    new-instance v3, Lcom/pikminx/helper/PostcardMatcher$Target;

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v8

    invoke-direct {v3, v7, v4, v8}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    return-object v3

    .line 172
    .end local v7    # "trailing":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 173
    .local v7, "flowerEnd":I
    if-ltz v7, :cond_7

    .line 174
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "trailing":Ljava/lang/String;
    invoke-static {v4}, Lcom/pikminx/helper/PostcardMatcher;->isDetailPostcardNameText(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 176
    new-instance v3, Lcom/pikminx/helper/PostcardMatcher$Target;

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v8

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v9

    invoke-direct {v3, v4, v8, v9}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    return-object v3

    .line 179
    .end local v4    # "trailing":Ljava/lang/String;
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v8, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda2;

    invoke-direct {v8, v2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda2;-><init>(Lcom/pikminx/helper/PetalMatcher$Token;)V

    .line 180
    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v8, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda3;-><init>()V

    .line 181
    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v8, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda4;

    invoke-direct {v8, v2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda4;-><init>(Lcom/pikminx/helper/PetalMatcher$Token;)V

    .line 182
    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v8, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda5;

    invoke-direct {v8, v2, p2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda5;-><init>(Lcom/pikminx/helper/PetalMatcher$Token;I)V

    .line 183
    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v8, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda6;

    invoke-direct {v8, v2, p1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda6;-><init>(Lcom/pikminx/helper/PetalMatcher$Token;I)V

    .line 184
    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v8, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda7;

    invoke-direct {v8}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda7;-><init>()V

    .line 185
    invoke-static {v8}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v4

    .line 186
    invoke-virtual {v4, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 187
    .local v4, "nextLine":Lcom/pikminx/helper/PetalMatcher$Token;
    if-nez v4, :cond_8

    .line 188
    goto :goto_2

    .line 189
    :cond_8
    new-instance v3, Lcom/pikminx/helper/PostcardMatcher$Target;

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v9

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v10

    invoke-direct {v3, v8, v9, v10}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    .line 187
    :goto_2
    return-object v3
.end method

.method private static findMergedMapPostcardName(Lcom/pikminx/helper/PetalMatcher$Token;II)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 7
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 206
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/PostcardMatcher;->isMapSpeciesCandidate(Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 207
    return-object v1

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "text":Ljava/lang/String;
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 212
    return-object v1

    .line 214
    :cond_1
    const/4 v3, 0x1

    .local v3, "start":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 215
    array-length v4, v2

    .line 216
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    .line 215
    const-string v5, " "

    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "location":Ljava/lang/String;
    invoke-static {v4}, Lcom/pikminx/helper/PostcardMatcher;->isDetailPostcardNameText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$Target;

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v5

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v6

    invoke-direct {v1, v4, v5, v6}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    return-object v1

    .line 214
    .end local v4    # "location":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .end local v3    # "start":I
    :cond_3
    return-object v1
.end method

.method static findNext(Ljava/util/List;)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 65
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const-string v0, "\u4e0b\u4e00\u6b65"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->findExactText(Ljava/util/List;Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    return-object v0
.end method

.method static findPikminCandidates(Ljava/util/List;II)Ljava/util/List;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PostcardMatcher$Target;",
            ">;"
        }
    .end annotation

    .line 473
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda9;-><init>(I)V

    .line 474
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda11;

    invoke-direct {v1, p2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda11;-><init>(I)V

    .line 475
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda12;-><init>(I)V

    .line 476
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda13;-><init>()V

    .line 477
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda14;-><init>()V

    .line 478
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda15;-><init>()V

    .line 480
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda2;-><init>()V

    .line 481
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 479
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda16;

    invoke-direct {v1, p2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda16;-><init>(I)V

    .line 482
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 486
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 473
    return-object v0
.end method

.method static findPikminSelectionSlots(II)Ljava/util/List;
    .locals 16
    .param p0, "width"    # I
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PostcardMatcher$Target;",
            ">;"
        }
    .end annotation

    .line 502
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 503
    .local v0, "columnFractions":[F
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    .line 504
    .local v1, "rowFractions":[F
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PostcardMatcher$Target;>;"
    array-length v4, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    aget v7, v1, v6

    .line 506
    .local v7, "row":F
    array-length v8, v0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget v10, v0, v9

    .line 507
    .local v10, "column":F
    new-instance v11, Lcom/pikminx/helper/PostcardMatcher$Target;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pikmin-slot-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 508
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move/from16 v13, p0

    int-to-float v14, v13

    mul-float/2addr v14, v10

    .line 509
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move/from16 v15, p1

    int-to-float v5, v15

    mul-float/2addr v5, v7

    .line 510
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v11, v12, v14, v5}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    .line 507
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 512
    invoke-static {v2}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 506
    .end local v10    # "column":F
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move/from16 v13, p0

    move/from16 v15, p1

    .line 505
    .end local v7    # "row":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 516
    :cond_2
    move/from16 v13, p0

    move/from16 v15, p1

    invoke-static {v2}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :array_0
    .array-data 4
        0x3e051eb8    # 0.13f
        0x3ea3d70a    # 0.32f
        0x3f028f5c    # 0.51f
        0x3f333333    # 0.7f
        0x3f63d70a    # 0.89f
    .end array-data

    :array_1
    .array-data 4
        0x3f03d70a    # 0.515f
        0x3f28f5c3    # 0.66f
        0x3f4e147b    # 0.805f
    .end array-data
.end method

.method static findReceive(Ljava/util/List;)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 76
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const-string v0, "\u63a5\u6536"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->findExactText(Ljava/util/List;Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    return-object v0
.end method

.method static findSingleVisiblePetalPot(Ljava/util/List;Ljava/lang/String;III)Lcom/pikminx/helper/PostcardMatcher$PetalPot;
    .locals 11
    .param p1, "searchedPotName"    # Ljava/lang/String;
    .param p2, "requiredCount"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/lang/String;",
            "III)",
            "Lcom/pikminx/helper/PostcardMatcher$PetalPot;"
        }
    .end annotation

    .line 563
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p1}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "canonical":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 565
    return-object v1

    .line 567
    :cond_0
    const v6, 0x3f07ae14    # 0.53f

    const v7, 0x3f75c28f    # 0.96f

    const v8, 0x3e23d70a    # 0.16f

    const v9, 0x3e4ccccd    # 0.2f

    new-instance v10, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda18;

    invoke-direct {v10}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda18;-><init>()V

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v2 .. v10}, Lcom/pikminx/helper/PetalPotDetector;->findSingleVisible(Ljava/util/List;IIIFFFFLjava/util/function/Predicate;)Lcom/pikminx/helper/PetalPotDetector$Match;

    move-result-object v2

    .line 577
    .local v2, "match":Lcom/pikminx/helper/PetalPotDetector$Match;
    if-nez v2, :cond_1

    .line 578
    goto :goto_0

    .line 579
    :cond_1
    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$PetalPot;

    .line 581
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalPotDetector$Match;->count()I

    move-result v3

    .line 582
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalPotDetector$Match;->x()I

    move-result v4

    .line 583
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalPotDetector$Match;->labelTop()I

    move-result v5

    int-to-float v6, p4

    const v7, 0x3d99999a    # 0.075f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/pikminx/helper/PostcardMatcher$PetalPot;-><init>(Ljava/lang/String;III)V

    .line 577
    :goto_0
    return-object v1
.end method

.method static findSortControl(Ljava/util/List;I)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 2
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;I)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 418
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda26;-><init>()V

    .line 419
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda27;-><init>(I)V

    .line 425
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda1;-><init>()V

    .line 426
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda24;-><init>()V

    .line 427
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 428
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PostcardMatcher$Target;

    .line 418
    return-object v0
.end method

.method private static findSplitMapPostcardName(Ljava/util/List;II)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 230
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PostcardMatcher$Target;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 232
    .local v2, "species":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-static {v2, p1, p2}, Lcom/pikminx/helper/PostcardMatcher;->isMapSpeciesCandidate(Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    goto :goto_0

    .line 235
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 236
    .local v4, "location":Lcom/pikminx/helper/PetalMatcher$Token;
    if-eq v4, v2, :cond_1

    .line 237
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pikminx/helper/PostcardMatcher;->isDetailPostcardNameText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v7

    int-to-double v7, v7

    int-to-double v9, p2

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_1

    .line 239
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v5

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-double v5, v5

    int-to-double v7, p2

    const-wide v9, 0x3faeb851eb851eb8L    # 0.06

    mul-double/2addr v7, v9

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_1

    .line 240
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v5

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    int-to-double v7, p1

    const-wide v9, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v7, v9

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    .line 241
    goto :goto_1

    .line 243
    :cond_2
    new-instance v5, Lcom/pikminx/helper/PostcardMatcher$Target;

    .line 244
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v7

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    .line 246
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v8

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    .line 243
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v4    # "location":Lcom/pikminx/helper/PetalMatcher$Token;
    goto/16 :goto_1

    .line 248
    .end local v2    # "species":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_3
    goto/16 :goto_0

    .line 249
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda19;

    invoke-direct {v2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda19;-><init>()V

    .line 251
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda21;

    invoke-direct {v3, p1, p2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda21;-><init>(II)V

    .line 253
    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    .line 250
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    .line 255
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PostcardMatcher$Target;

    .line 249
    return-object v1
.end method

.method private static findText(Ljava/util/List;Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 791
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p1}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 793
    .local v2, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 794
    invoke-static {v2}, Lcom/pikminx/helper/PostcardMatcher;->target(Lcom/pikminx/helper/PetalMatcher$Token;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v1

    return-object v1

    .line 796
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_0
    goto :goto_0

    .line 797
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 798
    .local v2, "first":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 799
    .local v4, "second":Lcom/pikminx/helper/PetalMatcher$Token;
    nop

    .line 800
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v5

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v6

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v7

    sub-int/2addr v6, v7

    .line 799
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    .line 801
    .local v5, "horizontalTolerance":I
    nop

    .line 802
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v6

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v7

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v8

    sub-int/2addr v7, v8

    .line 801
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    .line 803
    .local v6, "verticalTolerance":I
    if-eq v2, v4, :cond_2

    .line 804
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v7

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 805
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v7

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v5, :cond_2

    .line 806
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v7

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v7, v6, :cond_3

    .line 807
    goto :goto_2

    .line 809
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 810
    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$Target;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 812
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v7

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 813
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v8

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    .line 814
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v8

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v1, v3, v7, v8}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    .line 810
    return-object v1

    .line 816
    .end local v4    # "second":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v5    # "horizontalTolerance":I
    .end local v6    # "verticalTolerance":I
    :cond_4
    goto/16 :goto_2

    .line 817
    .end local v2    # "first":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_5
    goto/16 :goto_1

    .line 818
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method static findTopRowPikminSlots(II)Ljava/util/List;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PostcardMatcher$Target;",
            ">;"
        }
    .end annotation

    .line 497
    invoke-static {p0, p1}, Lcom/pikminx/helper/PostcardMatcher;->findPikminSelectionSlots(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static findUsePetals(Ljava/util/List;)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)",
            "Lcom/pikminx/helper/PostcardMatcher$Target;"
        }
    .end annotation

    .line 57
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const-string v0, "\u4f7f\u7528\u82b1\u74e3\u5c31\u80fd\u7372\u5f97\u660e\u4fe1\u7247"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->findText(Ljava/util/List;Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    return-object v0
.end method

.method static hasConfirmedMapFlowerBubble(Ljava/util/List;II)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)Z"
        }
    .end annotation

    .line 195
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/PostcardMatcher;->findSplitMapPostcardName(Ljava/util/List;II)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1, p2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda25;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private static hasSelectedPikminCounter(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)Z"
        }
    .end annotation

    .line 455
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 456
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v2, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "text":Ljava/lang/String;
    sget-object v3, Lcom/pikminx/helper/PostcardMatcher;->SELECTED_COUNT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    const/4 v0, 0x1

    return v0

    .line 460
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 461
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static hasText(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 778
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0, p1}, Lcom/pikminx/helper/PostcardMatcher;->findText(Ljava/util/List;Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDetailPostcardNameCandidate(Lcom/pikminx/helper/PetalMatcher$Token;III)Z
    .locals 6
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "width"    # I
    .param p2, "minY"    # I
    .param p3, "maxY"    # I

    .line 693
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p1

    const-wide v4, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p1

    const-wide v4, 0x3fea3d70a3d70a3dL    # 0.82

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    if-gt v0, p3, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->isDetailPostcardNameText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 693
    :goto_0
    return v0
.end method

.method private static isDetailPostcardNameText(Ljava/lang/String;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 701
    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "key":Ljava/lang/String;
    const-string v1, ".*\\p{L}.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 704
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_0

    .line 705
    const-string v1, "\u82b1\u6735"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    const-string v1, "\u82b1\u74e3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    const-string v1, "\u660e\u4fe1\u7247"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    const-string v1, "\u76ee\u524d\u5730"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 709
    const-string v1, "\u6ce8\u610f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    const-string v1, "\u63a5\u53d7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    const-string v1, "\u4e0b\u4e00\u6b65"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    const-string v1, "\u518d\u904e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 713
    const-string v1, "\u6703\u8b8a\u56de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    const-string v1, "\u968e\u6bb5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    const-string v1, "\u524d\u5f80\u9019\u88e1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    const-string v1, "tottori"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 702
    :goto_0
    return v1
.end method

.method private static isDetailTitleCandidate(Lcom/pikminx/helper/PetalMatcher$Token;III)Z
    .locals 6
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "width"    # I
    .param p2, "minY"    # I
    .param p3, "maxY"    # I

    .line 666
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    if-gt v0, p3, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->isDetailTitleText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 666
    :goto_0
    return v0
.end method

.method private static isDetailTitleText(Ljava/lang/String;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 674
    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "key":Ljava/lang/String;
    const-string v1, ".*\\p{IsHan}.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    const-string v1, ".*\\d.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 678
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 679
    const-string v1, "?\u524d\u5730"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    const-string v1, "?\u6881\ue663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    const-string v1, "?\ue393\u7e11?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    const-string v1, "\u761c\u51bd?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    const-string v1, "?\u4e99?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    const-string v1, "\u929d\uf55c?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    const-string v1, "\u518d\u904e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    const-string v1, "\u6703\u8b8a\u56de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 687
    const-string v1, "\u968e\u6bb5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    const-string v1, "\u524d\u5f80\u9019\u88e1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 675
    :goto_0
    return v1
.end method

.method private static isMapSpeciesCandidate(Lcom/pikminx/helper/PetalMatcher$Token;II)Z
    .locals 10
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 312
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "key":Ljava/lang/String;
    const-string v1, "\u767d\u8272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 314
    const-string v1, "\u9ec3\u8272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    const-string v1, "\u7d05\u8272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    const-string v1, "\u85cd\u8272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    const-string v1, "\u7d2b\u8272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    const-string v1, "\u7070\u8272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 319
    .local v1, "colorPrefix":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".*\\p{IsHan}.*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    int-to-double v4, v4

    int-to-double v6, p1

    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    int-to-double v4, v4

    int-to-double v6, p1

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    int-to-double v4, v4

    int-to-double v6, p2

    const-wide v8, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    int-to-double v4, v4

    int-to-double v6, p2

    const-wide v8, 0x3fea3d70a3d70a3dL    # 0.82

    mul-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    nop

    .line 319
    :goto_2
    return v2
.end method

.method private static isPetalLabel(Lcom/pikminx/helper/PetalMatcher$Token;II)Z
    .locals 7
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 653
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*\\p{IsHan}.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, p1

    const-wide v5, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, p1

    const-wide v5, 0x3fef0a3d70a3d70aL    # 0.97

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, p2

    const-wide v5, 0x3fe0f5c28f5c28f6L    # 0.53

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, p2

    const-wide v5, 0x3feeb851eb851eb8L    # 0.96

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 659
    const-string v1, "\u9078\u64c7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    const-string v1, "\u4e0b\u4e00\u6b65"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    const-string v1, "\u82b1\u74e3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 654
    :goto_0
    return v1
.end method

.method private static isPikminUiText(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 765
    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "key":Ljava/lang/String;
    const-string v1, "\u9078\u64c7\u76ae\u514b\u654f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 767
    const-string v1, "\u6392\u5e8f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 768
    const-string v1, "\u81ea\u52d5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 769
    const-string v1, "\u559c\u611b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 770
    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 771
    const-string v1, "\u767c\u73fe\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 772
    const-string v1, "\u7a2e\u985e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 773
    const-string v1, "\u53cb\u597d\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 774
    const-string v1, "\u98fe\u54c1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 766
    :goto_1
    return v1
.end method

.method static isSortMenuVisible(Ljava/util/List;I)Z
    .locals 1
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;I)Z"
        }
    .end annotation

    .line 411
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0, p1}, Lcom/pikminx/helper/PostcardMatcher;->findFavoriteMenuItem(Ljava/util/List;I)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    const-string v0, "\u6392\u5e8f"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->hasText(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    const-string v0, "\u53cb\u597d\u5ea6"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->hasText(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const-string v0, "\u98fe\u54c1"

    invoke-static {p0, v0}, Lcom/pikminx/helper/PostcardMatcher;->hasText(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 411
    :goto_0
    return v0
.end method

.method static synthetic lambda$findAvailablePetalPot$23(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 541
    invoke-static {p0}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method static synthetic lambda$findDetailFlowerName$11(IILcom/pikminx/helper/PetalMatcher$Token;)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "anchorY"    # I
    .param p2, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 404
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    div-int/lit8 v1, p0, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 405
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 404
    return v0
.end method

.method static synthetic lambda$findDetailPostcardName$10(IILcom/pikminx/helper/PetalMatcher$Token;)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "anchorY"    # I
    .param p2, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 359
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    div-int/lit8 v1, p0, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 360
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    return v0
.end method

.method static synthetic lambda$findExactText$25(Ljava/lang/String;Lcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 784
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findFavoriteMenuItem$14(Lcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 2
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 433
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u559c\u611b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findFavoriteMenuItem$15(ILcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 6
    .param p0, "height"    # I
    .param p1, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 434
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findMapFlowerName$0(IILcom/pikminx/helper/PetalMatcher$Token;)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 117
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    div-int/lit8 v1, p0, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 118
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    return v0
.end method

.method static synthetic lambda$findMapPostcardName$1(IILcom/pikminx/helper/PetalMatcher$Token;)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 157
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    div-int/lit8 v1, p0, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 158
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    return v0
.end method

.method static synthetic lambda$findMapPostcardName$2(Lcom/pikminx/helper/PetalMatcher$Token;Lcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 1
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 180
    if-eq p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findMapPostcardName$3(Lcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 1
    .param p0, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 181
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->isDetailPostcardNameText(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findMapPostcardName$4(Lcom/pikminx/helper/PetalMatcher$Token;Lcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 2
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 182
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findMapPostcardName$5(Lcom/pikminx/helper/PetalMatcher$Token;ILcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 6
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "height"    # I
    .param p2, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 183
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    int-to-double v2, p1

    const-wide v4, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findMapPostcardName$6(Lcom/pikminx/helper/PetalMatcher$Token;ILcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 6
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "width"    # I
    .param p2, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 184
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p1

    const-wide v4, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findPikminCandidates$16(ILcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 6
    .param p0, "height"    # I
    .param p1, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 474
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p0

    const-wide v4, 0x3fdd70a3d70a3d71L    # 0.46

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findPikminCandidates$17(ILcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 6
    .param p0, "height"    # I
    .param p1, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 475
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p0

    const-wide v4, 0x3fec28f5c28f5c29L    # 0.88

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findPikminCandidates$18(ILcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 6
    .param p0, "width"    # I
    .param p1, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 476
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p0

    const-wide v4, 0x3fed70a3d70a3d71L    # 0.92

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findPikminCandidates$19(Lcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 2
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 477
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\p{IsHan}.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findPikminCandidates$20(Lcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 1
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 478
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->isPikminUiText(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$findPikminCandidates$21(Lcom/pikminx/helper/PetalMatcher$Token;)I
    .locals 1
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 480
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    div-int/lit8 v0, v0, 0x28

    return v0
.end method

.method static synthetic lambda$findPikminCandidates$22(ILcom/pikminx/helper/PetalMatcher$Token;)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 6
    .param p0, "height"    # I
    .param p1, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 482
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$Target;

    .line 483
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v2

    .line 485
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v3

    int-to-float v4, p0

    const v5, 0x3d851eb8    # 0.065f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    .line 482
    return-object v0
.end method

.method static synthetic lambda$findSortControl$12(Lcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 2
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 419
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u559c\u611b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u81ea\u52d5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u767c\u73fe\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7a2e\u985e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u53cb\u597d\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u98fe\u54c1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 419
    :goto_1
    return v0
.end method

.method static synthetic lambda$findSortControl$13(ILcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 6
    .param p0, "height"    # I
    .param p1, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 425
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p0

    const-wide v4, 0x3fe5c28f5c28f5c3L    # 0.68

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findSplitMapPostcardName$8(Lcom/pikminx/helper/PostcardMatcher$Target;)I
    .locals 1
    .param p0, "candidate"    # Lcom/pikminx/helper/PostcardMatcher$Target;

    .line 252
    invoke-virtual {p0}, Lcom/pikminx/helper/PostcardMatcher$Target;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->mapLocationTextQuality(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$findSplitMapPostcardName$9(IILcom/pikminx/helper/PostcardMatcher$Target;)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "candidate"    # Lcom/pikminx/helper/PostcardMatcher$Target;

    .line 253
    invoke-static {p2, p0, p1}, Lcom/pikminx/helper/PostcardMatcher;->mapCenterDistance(Lcom/pikminx/helper/PostcardMatcher$Target;II)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method static synthetic lambda$hasConfirmedMapFlowerBubble$7(IILcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 199
    invoke-static {p2, p0, p1}, Lcom/pikminx/helper/PostcardMatcher;->findMergedMapPostcardName(Lcom/pikminx/helper/PetalMatcher$Token;II)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object v0

    .line 200
    .local v0, "location":Lcom/pikminx/helper/PostcardMatcher$Target;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$petalListSignature$24(IILcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 603
    invoke-static {p2, p0, p1}, Lcom/pikminx/helper/PostcardMatcher;->isPetalLabel(Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v0

    return v0
.end method

.method private static looksLikeResultLabel(Ljava/lang/String;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 587
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda29;

    invoke-direct {v2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda29;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 588
    :cond_2
    :goto_0
    return v0
.end method

.method private static mapCenterDistance(Lcom/pikminx/helper/PostcardMatcher$Target;II)I
    .locals 3
    .param p0, "candidate"    # Lcom/pikminx/helper/PostcardMatcher$Target;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 306
    invoke-virtual {p0}, Lcom/pikminx/helper/PostcardMatcher$Target;->x()I

    move-result v0

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 307
    invoke-virtual {p0}, Lcom/pikminx/helper/PostcardMatcher$Target;->y()I

    move-result v1

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    return v0
.end method

.method private static mapLocationTextQuality(Ljava/lang/String;)I
    .locals 14
    .param p0, "value"    # Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "letters":I
    const/4 v1, 0x0

    .line 265
    .local v1, "symbols":I
    const/4 v2, 0x0

    .line 266
    .local v2, "han":Z
    const/4 v3, 0x0

    .line 267
    .local v3, "kana":Z
    const/4 v4, 0x0

    .line 268
    .local v4, "latin":Z
    const/4 v5, 0x0

    .line 269
    .local v5, "hangul":Z
    const/4 v6, 0x0

    .line 270
    .local v6, "devanagari":Z
    const/4 v7, 0x0

    .line 271
    .local v7, "otherLetter":Z
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v8, v9, :cond_9

    .line 272
    invoke-virtual {p0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 273
    .local v9, "codePoint":I
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v8, v12

    .line 274
    invoke-static {v9}, Ljava/lang/Character;->isLetter(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 275
    add-int/lit8 v0, v0, 0x1

    .line 276
    invoke-static {v9}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v12

    .line 277
    .local v12, "script":Ljava/lang/Character$UnicodeScript;
    sget-object v13, Ljava/lang/Character$UnicodeScript;->HAN:Ljava/lang/Character$UnicodeScript;

    if-ne v12, v13, :cond_0

    move v13, v11

    goto :goto_1

    :cond_0
    move v13, v10

    :goto_1
    or-int/2addr v2, v13

    .line 278
    sget-object v13, Ljava/lang/Character$UnicodeScript;->HIRAGANA:Ljava/lang/Character$UnicodeScript;

    if-eq v12, v13, :cond_2

    sget-object v13, Ljava/lang/Character$UnicodeScript;->KATAKANA:Ljava/lang/Character$UnicodeScript;

    if-ne v12, v13, :cond_1

    goto :goto_2

    :cond_1
    move v13, v10

    goto :goto_3

    :cond_2
    :goto_2
    move v13, v11

    :goto_3
    or-int/2addr v3, v13

    .line 280
    sget-object v13, Ljava/lang/Character$UnicodeScript;->LATIN:Ljava/lang/Character$UnicodeScript;

    if-ne v12, v13, :cond_3

    move v13, v11

    goto :goto_4

    :cond_3
    move v13, v10

    :goto_4
    or-int/2addr v4, v13

    .line 281
    sget-object v13, Ljava/lang/Character$UnicodeScript;->HANGUL:Ljava/lang/Character$UnicodeScript;

    if-ne v12, v13, :cond_4

    move v13, v11

    goto :goto_5

    :cond_4
    move v13, v10

    :goto_5
    or-int/2addr v5, v13

    .line 282
    sget-object v13, Ljava/lang/Character$UnicodeScript;->DEVANAGARI:Ljava/lang/Character$UnicodeScript;

    if-ne v12, v13, :cond_5

    move v13, v11

    goto :goto_6

    :cond_5
    move v13, v10

    :goto_6
    or-int/2addr v6, v13

    .line 283
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    move v10, v11

    :cond_6
    or-int/2addr v7, v10

    .line 284
    .end local v12    # "script":Ljava/lang/Character$UnicodeScript;
    :cond_7
    goto :goto_7

    :cond_8
    invoke-static {v9}, Ljava/lang/Character;->isDigit(I)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 285
    add-int/lit8 v1, v1, 0x1

    .line 287
    .end local v9    # "codePoint":I
    :goto_7
    goto :goto_0

    .line 288
    .end local v8    # "index":I
    :cond_9
    mul-int/lit8 v8, v0, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v12, 0x12

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v8, v9

    mul-int/lit8 v9, v1, 0x4

    sub-int/2addr v8, v9

    .line 289
    .local v8, "score":I
    if-nez v2, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    move v10, v11

    :cond_b
    move v9, v10

    .line 290
    .local v9, "japanese":Z
    if-eqz v9, :cond_c

    .line 291
    add-int/lit8 v8, v8, 0x64

    goto :goto_9

    .line 292
    :cond_c
    if-nez v5, :cond_e

    if-nez v6, :cond_e

    if-eqz v7, :cond_d

    goto :goto_8

    .line 294
    :cond_d
    if-eqz v4, :cond_f

    .line 295
    add-int/lit8 v8, v8, 0x4b

    goto :goto_9

    .line 293
    :cond_e
    :goto_8
    add-int/lit8 v8, v8, 0x5a

    .line 299
    :cond_f
    :goto_9
    if-eqz v4, :cond_11

    if-nez v9, :cond_10

    if-nez v5, :cond_10

    if-nez v6, :cond_10

    if-eqz v7, :cond_11

    .line 300
    :cond_10
    add-int/lit8 v8, v8, -0x2d

    .line 302
    :cond_11
    return v8
.end method

.method private static matchingTargetLabels(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .param p1, "targetPotName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;"
        }
    .end annotation

    .line 630
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p1}, Lcom/pikminx/helper/PostcardMatcher;->normalizePetalPotName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "targetKey":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    return-object v1

    .line 635
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 636
    .local v3, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-static {v3, p2, p3}, Lcom/pikminx/helper/PostcardMatcher;->isPetalLabel(Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 637
    goto :goto_0

    .line 639
    :cond_1
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/PostcardMatcher;->normalizePetalPotName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 640
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_2
    goto :goto_0

    .line 643
    :cond_3
    return-object v1
.end method

.method private static nearestCountAbove(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;II)Lcom/pikminx/helper/PetalMatcher$Token;
    .locals 15
    .param p1, "label"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            "II)",
            "Lcom/pikminx/helper/PetalMatcher$Token;"
        }
    .end annotation

    .line 724
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x0

    .line 725
    .local v0, "best":Lcom/pikminx/helper/PetalMatcher$Token;
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 726
    .local v1, "bestDistance":D
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 727
    .local v4, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pikminx/helper/PostcardMatcher;->parseCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_0

    .line 728
    move/from16 v9, p2

    move/from16 v10, p3

    goto :goto_0

    .line 730
    :cond_0
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 731
    .local v5, "dx":I
    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v6

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v7

    sub-int/2addr v6, v7

    .line 732
    .local v6, "dy":I
    int-to-double v7, v5

    move/from16 v9, p2

    int-to-double v10, v9

    const-wide v12, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v10, v12

    cmpl-double v7, v7, v10

    if-gtz v7, :cond_3

    if-ltz v6, :cond_3

    int-to-double v7, v6

    move/from16 v10, p3

    int-to-double v11, v10

    const-wide v13, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v11, v13

    cmpl-double v7, v7, v11

    if-lez v7, :cond_1

    .line 733
    goto :goto_0

    .line 735
    :cond_1
    mul-int v7, v5, v5

    mul-int v8, v6, v6

    add-int/2addr v7, v8

    int-to-double v7, v7

    .line 736
    .local v7, "distance":D
    cmpg-double v11, v7, v1

    if-gez v11, :cond_2

    .line 737
    move-object v0, v4

    .line 738
    move-wide v1, v7

    .line 740
    .end local v4    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "distance":D
    :cond_2
    goto :goto_0

    .line 732
    .restart local v4    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .restart local v5    # "dx":I
    .restart local v6    # "dy":I
    :cond_3
    move/from16 v10, p3

    goto :goto_0

    .line 741
    .end local v4    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    :cond_4
    move/from16 v9, p2

    move/from16 v10, p3

    return-object v0
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 841
    invoke-static {p0}, Lcom/pikminx/helper/TextNormalizer;->normalizeForMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static normalizeLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 846
    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    const-string v1, "[<>\u2039\u203a\u00ab\u00bb\u2190\u2192\u2191\u2193\u2197\u2198\u2199\u2196\u25b6\u25b7\u25b8\u276f]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    return-object v0
.end method

.method private static normalizePetalPotName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 648
    invoke-static {p0}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "canonical":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/pikminx/helper/PostcardMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static parseCount(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 745
    sget-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 746
    const-string v1, "\\s*\\+\\s*"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "normalized":Ljava/lang/String;
    const-string v1, "\\+?[0-9OoIl|][0-9OoIl|,.\'\\s]{0,7}\\+?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 749
    return-object v2

    .line 752
    :cond_0
    nop

    .line 753
    const/16 v1, 0x30

    const/16 v3, 0x4f

    :try_start_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 754
    const/16 v4, 0x6f

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 755
    const/16 v3, 0x31

    const/16 v4, 0x49

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 756
    const/16 v4, 0x6c

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 757
    const/16 v4, 0x7c

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[,.\'\\s+]"

    const-string v4, ""

    .line 758
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 752
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 759
    :catch_0
    move-exception v1

    .line 760
    .local v1, "ignored":Ljava/lang/NumberFormatException;
    return-object v2
.end method

.method static petalListSignature(Ljava/util/List;II)Ljava/lang/String;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 602
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p2}, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda17;-><init>(II)V

    .line 603
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 604
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 605
    .local v0, "listLabels":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {v0}, Lcom/pikminx/helper/PetalMatcher;->screenSignature(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static selectedPikminCount(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)I"
        }
    .end annotation

    .line 441
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 442
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v2, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "text":Ljava/lang/String;
    sget-object v3, Lcom/pikminx/helper/PostcardMatcher;->SELECTED_COUNT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 444
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 447
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    goto :goto_0

    .line 448
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static target(Lcom/pikminx/helper/PetalMatcher$Token;)Lcom/pikminx/helper/PostcardMatcher$Target;
    .locals 4
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 837
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$Target;

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v2

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/pikminx/helper/PostcardMatcher$Target;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method static usesDifferentWritingSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .line 855
    invoke-static {p0}, Lcom/pikminx/helper/PostcardMatcher;->writingSystem(Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    move-result-object v0

    invoke-static {p1}, Lcom/pikminx/helper/PostcardMatcher;->writingSystem(Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static visiblePetalPotNames(Ljava/util/List;II)Ljava/util/List;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 611
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 613
    .local v2, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-static {v2, p1, p2}, Lcom/pikminx/helper/PostcardMatcher;->isPetalLabel(Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 614
    goto :goto_0

    .line 616
    :cond_0
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 618
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 621
    :cond_2
    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static writingSystem(Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$WritingSystem;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .line 859
    const/4 v0, 0x0

    .line 860
    .local v0, "han":Z
    const/4 v1, 0x0

    .line 861
    .local v1, "kana":Z
    const/4 v2, 0x0

    .line 862
    .local v2, "latin":Z
    const/4 v3, 0x0

    .line 863
    .local v3, "otherLetter":Z
    if-eqz p0, :cond_5

    .line 864
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 865
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 866
    .local v5, "codePoint":I
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 867
    invoke-static {v5}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v6

    sget-object v7, Ljava/lang/Character$UnicodeScript;->HAN:Ljava/lang/Character$UnicodeScript;

    if-ne v6, v7, :cond_0

    .line 868
    const/4 v0, 0x1

    goto :goto_2

    .line 869
    :cond_0
    invoke-static {v5}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v6

    sget-object v7, Ljava/lang/Character$UnicodeScript;->HIRAGANA:Ljava/lang/Character$UnicodeScript;

    if-eq v6, v7, :cond_3

    .line 870
    invoke-static {v5}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v6

    sget-object v7, Ljava/lang/Character$UnicodeScript;->KATAKANA:Ljava/lang/Character$UnicodeScript;

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 872
    :cond_1
    invoke-static {v5}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v6

    sget-object v7, Ljava/lang/Character$UnicodeScript;->LATIN:Ljava/lang/Character$UnicodeScript;

    if-ne v6, v7, :cond_2

    .line 873
    const/4 v2, 0x1

    goto :goto_2

    .line 874
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 875
    const/4 v3, 0x1

    goto :goto_2

    .line 871
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 877
    .end local v5    # "codePoint":I
    :cond_4
    :goto_2
    goto :goto_0

    .line 879
    .end local v4    # "index":I
    :cond_5
    if-eqz v1, :cond_6

    .line 880
    sget-object v4, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->KANA:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    return-object v4

    .line 882
    :cond_6
    if-eqz v0, :cond_7

    .line 883
    sget-object v4, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->HAN:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    return-object v4

    .line 885
    :cond_7
    if-eqz v2, :cond_8

    .line 886
    sget-object v4, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->LATIN:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    return-object v4

    .line 888
    :cond_8
    if-eqz v3, :cond_9

    sget-object v4, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->OTHER:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    goto :goto_3

    :cond_9
    sget-object v4, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->NONE:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    :goto_3
    return-object v4
.end method
