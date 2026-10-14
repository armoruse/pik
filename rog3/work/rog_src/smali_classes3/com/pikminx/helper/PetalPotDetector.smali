.class final Lcom/pikminx/helper/PetalPotDetector;
.super Ljava/lang/Object;
.source "PetalPotDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/PetalPotDetector$Match;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static find(Ljava/util/List;Ljava/lang/String;IIIFFFFLjava/util/function/Function;)Lcom/pikminx/helper/PetalPotDetector$Match;
    .locals 18
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "minimumCount"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "minimumLabelY"    # F
    .param p6, "maximumLabelY"    # F
    .param p7, "maximumCountXDistance"    # F
    .param p8, "maximumCountYDistance"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/lang/String;",
            "IIIFFFF",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pikminx/helper/PetalPotDetector$Match;"
        }
    .end annotation

    .line 33
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .local p9, "nameKey":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v8, p9

    invoke-interface {v8, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 34
    .local v9, "targetKey":Ljava/lang/String;
    const/4 v10, 0x0

    if-eqz v9, :cond_1

    invoke-static {v9}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;

    move-object v1, v12

    move-object v2, v9

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;IIFFLjava/util/function/Function;)V

    .line 38
    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda4;

    move-object v11, v2

    move-object/from16 v12, p0

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p7

    move/from16 v17, p8

    invoke-direct/range {v11 .. v17}, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;IIIFF)V

    .line 41
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda5;-><init>()V

    .line 49
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda6;-><init>()V

    .line 50
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalPotDetector$Match;

    .line 37
    return-object v1

    .line 35
    :cond_1
    :goto_0
    return-object v10
.end method

.method static findSingleVisible(Ljava/util/List;IIIFFFFLjava/util/function/Predicate;)Lcom/pikminx/helper/PetalPotDetector$Match;
    .locals 9
    .param p1, "minimumCount"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minimumLabelY"    # F
    .param p5, "maximumLabelY"    # F
    .param p6, "maximumCountXDistance"    # F
    .param p7, "maximumCountYDistance"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;IIIFFFF",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pikminx/helper/PetalPotDetector$Match;"
        }
    .end annotation

    .line 68
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .local p8, "labelCandidate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v7, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;

    move-object v1, v7

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;-><init>(IIFFLjava/util/function/Predicate;)V

    .line 69
    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v8, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;IIIFF)V

    .line 71
    invoke-interface {v0, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda2;-><init>()V

    .line 79
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 80
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 81
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalPotDetector$Match;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalPotDetector$Match;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static isExactLabel(Lcom/pikminx/helper/PetalMatcher$Token;Ljava/lang/String;IIFFLjava/util/function/Function;)Z
    .locals 4
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "targetKey"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minimumLabelY"    # F
    .param p5, "maximumLabelY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            "Ljava/lang/String;",
            "IIFF",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 93
    .local p6, "nameKey":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "tokenKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    const v3, 0x3cf5c28f    # 0.03f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    const v3, 0x3f7851ec    # 0.97f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p3

    mul-float/2addr v2, p4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p3

    mul-float/2addr v2, p5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 94
    :goto_0
    return v1
.end method

.method private static isVisibleLabel(Lcom/pikminx/helper/PetalMatcher$Token;IIFFLjava/util/function/Predicate;)Z
    .locals 3
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minimumLabelY"    # F
    .param p4, "maximumLabelY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            "IIFF",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 109
    .local p5, "labelCandidate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    const v2, 0x3cf5c28f    # 0.03f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    const v2, 0x3f7851ec    # 0.97f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float/2addr v1, p3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float/2addr v1, p4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0
.end method

.method static synthetic lambda$find$0(Ljava/lang/String;IIFFLjava/util/function/Function;Lcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 7
    .param p0, "targetKey"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minimumLabelY"    # F
    .param p4, "maximumLabelY"    # F
    .param p5, "nameKey"    # Ljava/util/function/Function;
    .param p6, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 38
    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/PetalPotDetector;->isExactLabel(Lcom/pikminx/helper/PetalMatcher$Token;Ljava/lang/String;IIFFLjava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$find$1(Ljava/util/List;IIIFFLcom/pikminx/helper/PetalMatcher$Token;)Lcom/pikminx/helper/PetalPotDetector$Match;
    .locals 7
    .param p0, "tokens"    # Ljava/util/List;
    .param p1, "minimumCount"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "maximumCountXDistance"    # F
    .param p5, "maximumCountYDistance"    # F
    .param p6, "label"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 41
    move-object v0, p0

    move-object v1, p6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/PetalPotDetector;->matchCount(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;IIIFF)Lcom/pikminx/helper/PetalPotDetector$Match;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$find$2(Lcom/pikminx/helper/PetalPotDetector$Match;)Z
    .locals 1
    .param p0, "match"    # Lcom/pikminx/helper/PetalPotDetector$Match;

    .line 49
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findSingleVisible$3(IIFFLjava/util/function/Predicate;Lcom/pikminx/helper/PetalMatcher$Token;)Z
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "minimumLabelY"    # F
    .param p3, "maximumLabelY"    # F
    .param p4, "labelCandidate"    # Ljava/util/function/Predicate;
    .param p5, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 69
    move-object v0, p5

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/pikminx/helper/PetalPotDetector;->isVisibleLabel(Lcom/pikminx/helper/PetalMatcher$Token;IIFFLjava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findSingleVisible$4(Ljava/util/List;IIIFFLcom/pikminx/helper/PetalMatcher$Token;)Lcom/pikminx/helper/PetalPotDetector$Match;
    .locals 7
    .param p0, "tokens"    # Ljava/util/List;
    .param p1, "minimumCount"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "maximumCountXDistance"    # F
    .param p5, "maximumCountYDistance"    # F
    .param p6, "label"    # Lcom/pikminx/helper/PetalMatcher$Token;

    .line 71
    move-object v0, p0

    move-object v1, p6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/PetalPotDetector;->matchCount(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;IIIFF)Lcom/pikminx/helper/PetalPotDetector$Match;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$findSingleVisible$5(Lcom/pikminx/helper/PetalPotDetector$Match;)Z
    .locals 1
    .param p0, "match"    # Lcom/pikminx/helper/PetalPotDetector$Match;

    .line 79
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static matchCount(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;IIIFF)Lcom/pikminx/helper/PetalPotDetector$Match;
    .locals 14
    .param p1, "label"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p2, "minimumCount"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "maximumCountXDistance"    # F
    .param p6, "maximumCountYDistance"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            "IIIFF)",
            "Lcom/pikminx/helper/PetalPotDetector$Match;"
        }
    .end annotation

    .line 125
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x0

    .line 126
    .local v0, "best":Lcom/pikminx/helper/PetalMatcher$Token;
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 127
    .local v1, "bestDistance":D
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 128
    .local v4, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pikminx/helper/PetalPotDetector;->parseCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 129
    .local v5, "count":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move/from16 v7, p2

    if-ge v6, v7, :cond_0

    .line 130
    move/from16 v10, p3

    move/from16 v11, p4

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v6

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 133
    .local v6, "dx":I
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v8

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v9

    sub-int/2addr v8, v9

    .line 134
    .local v8, "dy":I
    int-to-float v9, v6

    move/from16 v10, p3

    int-to-float v11, v10

    mul-float v11, v11, p5

    cmpl-float v9, v9, v11

    if-gtz v9, :cond_3

    if-ltz v8, :cond_3

    int-to-float v9, v8

    move/from16 v11, p4

    int-to-float v12, v11

    mul-float v12, v12, p6

    cmpl-float v9, v9, v12

    if-lez v9, :cond_1

    .line 137
    goto :goto_0

    .line 139
    :cond_1
    mul-int v9, v6, v6

    mul-int v12, v8, v8

    add-int/2addr v9, v12

    int-to-double v12, v9

    .line 140
    .local v12, "distance":D
    cmpg-double v9, v12, v1

    if-gez v9, :cond_2

    .line 141
    move-object v0, v4

    .line 142
    move-wide v1, v12

    .line 144
    .end local v4    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v5    # "count":Ljava/lang/Integer;
    .end local v6    # "dx":I
    .end local v8    # "dy":I
    .end local v12    # "distance":D
    :cond_2
    goto :goto_0

    .line 134
    .restart local v4    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .restart local v5    # "count":Ljava/lang/Integer;
    .restart local v6    # "dx":I
    .restart local v8    # "dy":I
    :cond_3
    move/from16 v11, p4

    goto :goto_0

    .line 129
    .end local v6    # "dx":I
    .end local v8    # "dy":I
    :cond_4
    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    goto :goto_0

    .line 145
    .end local v4    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v5    # "count":Ljava/lang/Integer;
    :cond_5
    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v3, 0x0

    if-nez v0, :cond_6

    move-object v4, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/PetalPotDetector;->parseCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 146
    .local v4, "count":Ljava/lang/Integer;
    :goto_1
    if-nez v4, :cond_7

    .line 147
    goto :goto_2

    .line 148
    :cond_7
    new-instance v3, Lcom/pikminx/helper/PetalPotDetector$Match;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v6

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v8

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v9

    invoke-direct {v3, v5, v6, v8, v9}, Lcom/pikminx/helper/PetalPotDetector$Match;-><init>(IIII)V

    .line 146
    :goto_2
    return-object v3
.end method

.method private static parseCount(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 153
    sget-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v1, "\\s*\\+\\s*"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "normalized":Ljava/lang/String;
    const-string v1, "\\+?[0-9OoIl|][0-9OoIl|,.\'\\s]{0,7}\\+?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 157
    return-object v2

    .line 160
    :cond_0
    nop

    .line 161
    const/16 v1, 0x30

    const/16 v3, 0x4f

    :try_start_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 162
    const/16 v4, 0x6f

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 163
    const/16 v3, 0x31

    const/16 v4, 0x49

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 164
    const/16 v4, 0x6c

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 165
    const/16 v4, 0x7c

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[,.\'\\s+]"

    const-string v4, ""

    .line 166
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "ignored":Ljava/lang/NumberFormatException;
    return-object v2
.end method
