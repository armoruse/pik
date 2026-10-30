.class final Lcom/pikminx/helper/ExpeditionScreenAnalyzer;
.super Ljava/lang/Object;
.source "ExpeditionScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;,
        Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;,
        Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;,
        Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;
    }
.end annotation


# static fields
.field private static final CARD_DURATION:Ljava/util/regex/Pattern;

.field private static final COUNTER:Ljava/util/regex/Pattern;

.field private static final DIGIT_TEXT:Ljava/util/regex/Pattern;

.field private static final HAN_TEXT:Ljava/util/regex/Pattern;

.field private static final LATIN_TEXT:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "(?<!\\d)(\\d{1,2})[/\uff0f|Il](\\d{1,2})(?!\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->COUNTER:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\\p{IsHan}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->HAN_TEXT:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "[A-Z]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->LATIN_TEXT:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->DIGIT_TEXT:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "^(?:\\d{1,3}(?:\u65e5|\u5929))?\\d{1,2}(?:\u5c0f\u6642|\u5c0f\u65f6)(?:\\d{1,2}(?:\u5206\u9418|\u5206\u949f|\u5206))?$|^\\d{1,3}(?:\u65e5|\u5929)$|^\\d{1,2}(?:\u5206\u9418|\u5206\u949f|\u5206)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->CARD_DURATION:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static belongsToActiveCard(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;II)Z
    .locals 18
    .param p1, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            "II)Z"
        }
    .end annotation

    .line 816
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 817
    .local v3, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 818
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v0

    const v8, 0x3e3851ec    # 0.18f

    mul-float/2addr v7, v8

    cmpg-float v6, v6, v7

    const/4 v7, 0x1

    if-gtz v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v4

    .line 820
    .local v6, "sameCardColumn":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v8

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 821
    .local v8, "statusGap":I
    const v9, 0x3dcccccd    # 0.1f

    if-ltz v8, :cond_1

    int-to-float v10, v8

    int-to-float v11, v1

    mul-float/2addr v11, v9

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    move v10, v7

    goto :goto_2

    :cond_1
    move v10, v4

    .line 822
    .local v10, "statusAbove":Z
    :goto_2
    if-eqz v6, :cond_3

    if-eqz v10, :cond_3

    sget-object v11, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->CARD_DURATION:Ljava/util/regex/Pattern;

    .line 823
    invoke-virtual {v11, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "\u5b8c\u6210"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    .line 824
    invoke-static {v5, v11}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 825
    :cond_2
    return v7

    .line 827
    :cond_3
    const-string v12, "\u5269\u9918\u6642\u9593"

    const-string v13, "\u5269\u4f59\u65f6\u95f4"

    const-string v14, "\u67e5\u770b\u76ae\u514b\u654f"

    const-string v15, "\u4e2d\u6b62"

    const-string v16, "\u7d42\u6b62"

    const-string v17, "\u4f7f\u7528\u7121\u4eba\u6a5f"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 828
    goto :goto_0

    .line 830
    :cond_4
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v0

    const v13, 0x3e75c28f    # 0.24f

    mul-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_5

    move v11, v7

    goto :goto_3

    :cond_5
    move v11, v4

    .line 831
    .local v11, "sameColumn":Z
    :goto_3
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v1

    mul-float/2addr v13, v9

    cmpg-float v9, v12, v13

    if-gtz v9, :cond_6

    move v4, v7

    .line 832
    .local v4, "sameRow":Z
    :cond_6
    if-eqz v11, :cond_7

    if-eqz v4, :cond_7

    .line 833
    return v7

    .line 835
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v4    # "sameRow":Z
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "sameCardColumn":Z
    .end local v8    # "statusGap":I
    .end local v10    # "statusAbove":Z
    .end local v11    # "sameColumn":Z
    :cond_7
    goto/16 :goto_0

    .line 836
    :cond_8
    return v4
.end method

.method private static brightNeutral(I)Z
    .locals 7
    .param p0, "color"    # I

    .line 890
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 891
    .local v0, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 892
    .local v1, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 893
    .local v2, "blue":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 894
    .local v3, "minimum":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 895
    .local v4, "maximum":I
    const/16 v5, 0x91

    if-lt v3, v5, :cond_0

    const/16 v5, 0xcd

    if-lt v4, v5, :cond_0

    sub-int v5, v4, v3

    const/16 v6, 0x5f

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method static classify(Ljava/util/List;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;"
        }
    .end annotation

    .line 61
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->joined(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "text":Ljava/lang/String;
    const-string v1, "\u81ea\u52d5"

    const-string v2, "\u81ea\u52a8"

    const-string v3, "GO"

    const-string v4, "\u7be9\u9078"

    const-string v5, "\u7b5b\u9009"

    const-string v6, "\u6392\u5e8f"

    const-string v7, "\u98fe\u54c1"

    const-string v8, "\u9970\u54c1"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->hasExactToken(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v1

    .line 63
    .local v1, "selectionControl":Z
    invoke-static {v0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->hasSelectionCounter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const-string v2, "\u81ea\u52d5"

    const-string v3, "\u81ea\u52a8"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {p0, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->hasExactToken(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "GO"

    const-string v4, "\u7be9\u9078"

    const-string v5, "\u7b5b\u9009"

    const-string v6, "\u6392\u5e8f"

    const-string v7, "\u98fe\u54c1"

    const-string v8, "\u9970\u54c1"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {p0, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->hasExactToken(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "\u53ef\u4ee5\u9078\u64c7"

    const-string v3, "\u53ef\u4ee5\u9009\u62e9"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v0, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    const-string v2, "\u76ae\u514b\u654f"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v0, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 68
    .local v2, "selection":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 69
    sget-object v3, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->PIKMIN_SELECTION:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-object v3

    .line 71
    :cond_4
    invoke-static {v0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->hasDetailPageMarker(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 72
    sget-object v3, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->DETAIL:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-object v3

    .line 74
    :cond_5
    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->looksLikeExploreList(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 75
    sget-object v3, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->EXPLORE_LIST:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-object v3

    .line 77
    :cond_6
    const-string v4, "\u6d3e\u9063\u5b8c\u6210"

    const-string v5, "\u63a2\u96aa\u958b\u59cb"

    const-string v6, "\u63a2\u9669\u5f00\u59cb"

    const-string v7, "\u63a1\u96aa\u958b\u59cb"

    const-string v8, "\u63a1\u9669\u5f00\u59cb"

    const-string v9, "\u5df2\u51fa\u767c"

    const-string v10, "\u5df2\u51fa\u53d1"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 78
    sget-object v3, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->RESULT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-object v3

    .line 80
    :cond_7
    const/4 v3, 0x0

    .line 81
    .local v3, "visibleItems":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 82
    .local v5, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->itemKind(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    move-result-object v6

    if-eqz v6, :cond_8

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x2

    if-lt v3, v6, :cond_8

    .line 83
    sget-object v4, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->EXPLORE_LIST:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-object v4

    .line 85
    .end local v5    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_8
    goto :goto_1

    .line 86
    :cond_9
    sget-object v4, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->UNKNOWN:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-object v4
.end method

.method static classify(Ljava/util/List;IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "ignoredPixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;"
        }
    .end annotation

    .line 143
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->findDetailAction(Ljava/util/List;IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    move-result-object v0

    .line 144
    .local v0, "detailAction":Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->joined(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "text":Ljava/lang/String;
    const-string v2, "\u53ef\u4ee5\u9078\u64c7"

    const-string v3, "\u53ef\u4ee5\u9009\u62e9"

    const-string v4, "\u82b1\u82d7\u548c\u6c34\u679c"

    const-string v5, "\u82b1\u82d7\u8207\u6c34\u679c"

    const-string v6, "\u82b1\u82d7\u4e0e\u6c34\u679c"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-static {v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->hasSelectionCounter(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    sget-object v2, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->DETAIL:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-object v2

    .line 151
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->classify(Ljava/util/List;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    move-result-object v1

    .line 152
    .local v1, "screen":Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;
    sget-object v2, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->UNKNOWN:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    if-ne v1, v2, :cond_2

    .line 153
    if-eqz v0, :cond_1

    .line 154
    sget-object v2, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->DETAIL:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-object v2

    .line 156
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->hasScrolledExploreListEvidence(Ljava/util/List;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    sget-object v2, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->EXPLORE_LIST:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-object v2

    .line 160
    :cond_2
    return-object v1
.end method

.method private static varargs containsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .line 881
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 882
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 883
    const/4 v0, 0x1

    return v0

    .line 881
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 886
    :cond_1
    return v1
.end method

.method private static containsGift(Ljava/lang/String;)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 876
    const-string v0, "\u79ae\u7269"

    const-string v1, "\u793c\u7269"

    const-string v2, "\u79ae\u54c1"

    const-string v3, "\u793c\u54c1"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u98fe\u54c1"

    const-string v1, "\u9970\u54c1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 877
    invoke-static {p0, v0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4e00\u89bd"

    const-string v1, "\u4e00\u89c8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 876
    :goto_1
    return v0
.end method

.method private static containsSeedling(Ljava/lang/String;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 872
    const-string v0, "\u82b1\u82d7"

    const-string v1, "\u82b1\u76c6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u82b1\u82d7\u548c\u6c34\u679c"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static containsThreeOfFourAlignedCharacters(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    .local v0, "start":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "matches":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 243
    add-int v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 242
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    .end local v2    # "index":I
    :cond_1
    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 248
    const/4 v2, 0x1

    return v2

    .line 240
    .end local v1    # "matches":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "start":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static darkTeal(I)Z
    .locals 5
    .param p0, "color"    # I

    .line 899
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 900
    .local v0, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 901
    .local v1, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 902
    .local v2, "blue":I
    const/16 v3, 0x91

    if-gt v0, v3, :cond_0

    const/16 v3, 0x19

    if-lt v1, v3, :cond_0

    const/16 v4, 0xd8

    if-ge v1, v4, :cond_0

    if-lt v2, v3, :cond_0

    if-ge v2, v4, :cond_0

    add-int/lit8 v3, v0, 0x3

    if-lt v1, v3, :cond_0

    add-int/lit8 v3, v0, -0x5

    if-lt v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static findDetailAction(Ljava/util/List;IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "ignoredPixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;"
        }
    .end annotation

    .line 169
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

    .line 170
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->matchesDetailActionText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    invoke-static {v1, p1, p2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->isDetailActionRegion(Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object v0

    .line 175
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 177
    .local v1, "first":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-static {v1, p1, p2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->isDetailActionRegion(Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    goto :goto_1

    .line 180
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 181
    .local v3, "second":Lcom/pikminx/helper/PetalMatcher$Token;
    if-eq v1, v3, :cond_3

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 182
    invoke-static {v3, p1, p2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->isDetailActionRegion(Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p2

    const v6, 0x3d23d70a    # 0.04f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 184
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v4

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, p1

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->matchesDetailActionText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 186
    goto :goto_2

    .line 188
    :cond_4
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    .line 189
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v2

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v4

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 190
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v4

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v5

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v2, v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    .line 188
    return-object v0

    .line 192
    .end local v1    # "first":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "second":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_5
    goto/16 :goto_1

    .line 193
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findExactExploreNavigationAnchor(Ljava/util/List;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;"
        }
    .end annotation

    .line 446
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 447
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "text":Ljava/lang/String;
    const-string v3, "\u63a2\u96aa"

    const-string v4, "\u63a2\u9669"

    const-string v5, "\u63a1\u96aa"

    const-string v6, "\u63a1\u9669"

    const-string v7, "\u63a2\u81c9"

    const-string v8, "\u63a2\u8138"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_1

    const-string v3, "\u524d\u5f80"

    const-string v4, "\u524d\u53bb"

    const-string v5, "\u6d3e\u76ae"

    const-string v6, "\u51fa\u53bb"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-static {v2, v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 451
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p2

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 452
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p2

    const v5, 0x3ed70a3d    # 0.42f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_0

    .line 454
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 455
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    const v5, 0x3f51eb85    # 0.82f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 456
    :cond_0
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object v0

    .line 458
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    goto/16 :goto_0

    .line 459
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static findExploreTabAnchor(Ljava/util/List;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;"
        }
    .end annotation

    .line 465
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 466
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "text":Ljava/lang/String;
    const-string v3, "\u63a2\u96aa"

    const-string v4, "\u63a2\u9669"

    const-string v5, "\u63a1\u96aa"

    const-string v6, "\u63a1\u9669"

    const-string v7, "\u63a2\u81c9"

    const-string v8, "\u63a2\u8138"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p2

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 469
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p2

    const v5, 0x3f266666    # 0.65f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_0

    .line 470
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 471
    :cond_0
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object v0

    .line 473
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 474
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static findPikminAutoButton(Ljava/util/List;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;"
        }
    .end annotation

    .line 500
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 501
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "text":Ljava/lang/String;
    const-string v3, "\u81ea\u52d5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\u81ea\u52a8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 503
    const-string v3, "AUTO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 504
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_1

    const-string v3, "\u81ea"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\u52d5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\u52a8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 505
    .local v3, "isAuto":Z
    :goto_2
    if-eqz v3, :cond_3

    .line 506
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p1

    const v6, 0x3d23d70a    # 0.04f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 507
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p1

    const v6, 0x3f0ccccd    # 0.55f

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 508
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p2

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 509
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p2

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 510
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object v0

    .line 512
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "isAuto":Z
    :cond_3
    goto/16 :goto_0

    .line 513
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method static findPikminCancelButton(Ljava/util/List;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;"
        }
    .end annotation

    .line 618
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

    .line 619
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "text":Ljava/lang/String;
    const-string v3, "\u3008"

    const-string v4, "\u300a"

    const-string v5, "\u53d6\u6d88"

    const-string v6, "CANCEL"

    const-string v7, "<"

    filled-new-array {v5, v6, v7, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 622
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p2

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 623
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object v0

    .line 625
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 626
    :cond_1
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    int-to-float v1, p1

    const v2, 0x3db851ec    # 0.09f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p2

    const v3, 0x3f65e354    # 0.898f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object v0
.end method

.method static findPikminGoButton(Ljava/util/List;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;"
        }
    .end annotation

    .line 538
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

    .line 539
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 541
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3f7ae148    # 0.98f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 542
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 543
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 544
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v2

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object v0

    .line 546
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_0
    goto :goto_0

    .line 547
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static findPikminSearchButton(Ljava/util/List;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;"
        }
    .end annotation

    .line 553
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 554
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "text":Ljava/lang/String;
    const-string v3, "\u81ea\u52d5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\u81ea\u52a8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    :cond_0
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    const v5, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 557
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    const v5, 0x3ed70a3d    # 0.42f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 558
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p2

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 559
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 560
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    int-to-float v3, p1

    const v4, 0x3db43958    # 0.088f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object v0

    .line 562
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 563
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static findResultClose(Landroid/graphics/Bitmap;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 24
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 667
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 668
    .local v1, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 669
    .local v2, "height":I
    const/4 v3, 0x0

    .line 670
    .local v3, "left":I
    int-to-float v4, v1

    const v5, 0x3e3851ec    # 0.18f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 671
    .local v4, "right":I
    int-to-float v5, v2

    const v6, 0x3f51eb85    # 0.82f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 672
    .local v5, "top":I
    add-int/lit8 v6, v2, -0x1

    int-to-float v7, v2

    const v8, 0x3f747ae1    # 0.955f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 673
    .local v6, "bottom":I
    div-int/lit16 v7, v1, 0x140

    const/4 v8, 0x2

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 674
    .local v7, "step":I
    const/4 v9, -0x1

    .line 675
    .local v9, "bestX":I
    const/4 v10, -0x1

    .line 676
    .local v10, "bestY":I
    const/4 v11, 0x0

    .line 677
    .local v11, "bestScore":F
    move v12, v5

    .local v12, "y":I
    :goto_0
    if-gt v12, v6, :cond_7

    .line 678
    move v13, v3

    .local v13, "x":I
    :goto_1
    if-ge v13, v4, :cond_6

    .line 679
    invoke-virtual {v0, v13, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    invoke-static {v14}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->brightNeutral(I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 680
    move/from16 v16, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move v4, v8

    move/from16 v21, v9

    goto/16 :goto_4

    .line 682
    :cond_0
    div-int/lit8 v14, v1, 0x2d

    const/16 v15, 0x8

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 683
    .local v14, "radius":I
    const/4 v15, 0x0

    .line 684
    .local v15, "darkDiagonal":I
    const/16 v16, 0x0

    .line 685
    .local v16, "samples":I
    neg-int v8, v14

    move/from16 v23, v16

    move/from16 v16, v3

    move/from16 v3, v23

    .local v3, "samples":I
    .local v8, "delta":I
    .local v16, "left":I
    :goto_2
    if-gt v8, v14, :cond_3

    .line 686
    move/from16 v18, v4

    .end local v4    # "right":I
    .local v18, "right":I
    add-int v4, v13, v8

    .line 687
    .local v4, "x1":I
    move/from16 v19, v5

    .end local v5    # "top":I
    .local v19, "top":I
    add-int v5, v12, v8

    .line 688
    .local v5, "y1":I
    move/from16 v20, v6

    .end local v6    # "bottom":I
    .local v20, "bottom":I
    add-int v6, v13, v8

    .line 689
    .local v6, "x2":I
    move/from16 v21, v9

    .end local v9    # "bestX":I
    .local v21, "bestX":I
    sub-int v9, v12, v8

    .line 690
    .local v9, "y2":I
    invoke-static {v4, v5, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->inside(IIII)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 691
    add-int/lit8 v3, v3, 0x1

    .line 692
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->darkTeal(I)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 693
    add-int/lit8 v15, v15, 0x1

    .line 696
    :cond_1
    invoke-static {v6, v9, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->inside(IIII)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 697
    add-int/lit8 v3, v3, 0x1

    .line 698
    invoke-virtual {v0, v6, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->darkTeal(I)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 699
    add-int/lit8 v15, v15, 0x1

    .line 685
    .end local v4    # "x1":I
    .end local v5    # "y1":I
    .end local v6    # "x2":I
    .end local v9    # "y2":I
    :cond_2
    const/4 v4, 0x2

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v8, v5

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v9, v21

    goto :goto_2

    .end local v18    # "right":I
    .end local v19    # "top":I
    .end local v20    # "bottom":I
    .end local v21    # "bestX":I
    .local v4, "right":I
    .local v5, "top":I
    .local v6, "bottom":I
    .local v9, "bestX":I
    :cond_3
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v9

    const/4 v4, 0x2

    .line 703
    .end local v4    # "right":I
    .end local v5    # "top":I
    .end local v6    # "bottom":I
    .end local v8    # "delta":I
    .end local v9    # "bestX":I
    .restart local v18    # "right":I
    .restart local v19    # "top":I
    .restart local v20    # "bottom":I
    .restart local v21    # "bestX":I
    if-nez v3, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    int-to-float v5, v15

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 704
    .local v5, "diagonalRatio":F
    :goto_3
    int-to-float v6, v13

    int-to-float v8, v1

    const v9, 0x3dae147b    # 0.085f

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v8, v1

    div-float/2addr v6, v8

    int-to-float v8, v12

    int-to-float v9, v2

    const v17, 0x3f68f5c3    # 0.91f

    mul-float v9, v9, v17

    sub-float/2addr v8, v9

    .line 705
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v2

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    .line 706
    .local v6, "anchorPenalty":F
    sub-float v8, v5, v6

    .line 707
    .local v8, "score":F
    const v9, 0x3e8f5c29    # 0.28f

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_5

    cmpl-float v9, v8, v11

    if-lez v9, :cond_5

    .line 708
    move v11, v8

    .line 709
    move v9, v13

    .line 710
    .end local v21    # "bestX":I
    .restart local v9    # "bestX":I
    move v10, v12

    goto :goto_5

    .line 678
    .end local v8    # "score":F
    .end local v14    # "radius":I
    .end local v15    # "darkDiagonal":I
    .end local v16    # "left":I
    .end local v18    # "right":I
    .end local v19    # "top":I
    .end local v20    # "bottom":I
    .local v3, "left":I
    .restart local v4    # "right":I
    .local v5, "top":I
    .local v6, "bottom":I
    :cond_5
    :goto_4
    move/from16 v9, v21

    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    .end local v6    # "bottom":I
    .restart local v16    # "left":I
    .restart local v18    # "right":I
    .restart local v19    # "top":I
    .restart local v20    # "bottom":I
    :goto_5
    add-int/2addr v13, v7

    move v8, v4

    move/from16 v3, v16

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    goto/16 :goto_1

    .end local v16    # "left":I
    .end local v18    # "right":I
    .end local v19    # "top":I
    .end local v20    # "bottom":I
    .restart local v3    # "left":I
    .restart local v4    # "right":I
    .restart local v5    # "top":I
    .restart local v6    # "bottom":I
    :cond_6
    move/from16 v16, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move v4, v8

    move/from16 v21, v9

    .line 677
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    .end local v6    # "bottom":I
    .end local v9    # "bestX":I
    .end local v13    # "x":I
    .restart local v16    # "left":I
    .restart local v18    # "right":I
    .restart local v19    # "top":I
    .restart local v20    # "bottom":I
    .restart local v21    # "bestX":I
    add-int/2addr v12, v7

    move/from16 v4, v18

    goto/16 :goto_0

    .end local v16    # "left":I
    .end local v18    # "right":I
    .end local v19    # "top":I
    .end local v20    # "bottom":I
    .end local v21    # "bestX":I
    .restart local v3    # "left":I
    .restart local v4    # "right":I
    .restart local v5    # "top":I
    .restart local v6    # "bottom":I
    .restart local v9    # "bestX":I
    :cond_7
    move/from16 v16, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    .line 714
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    .end local v6    # "bottom":I
    .end local v12    # "y":I
    .restart local v16    # "left":I
    .restart local v18    # "right":I
    .restart local v19    # "top":I
    .restart local v20    # "bottom":I
    if-gez v9, :cond_8

    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    invoke-static {v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->resultCloseAnchor(II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    move-result-object v3

    :goto_6
    return-object v3
.end method

.method static findTarget(Ljava/util/List;Lcom/pikminx/helper/ExpeditionTargetMode;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;
    .locals 1
    .param p1, "mode"    # Lcom/pikminx/helper/ExpeditionTargetMode;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Lcom/pikminx/helper/ExpeditionTargetMode;",
            "II)",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;"
        }
    .end annotation

    .line 288
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->findTarget(Ljava/util/List;Lcom/pikminx/helper/ExpeditionTargetMode;IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;

    move-result-object v0

    return-object v0
.end method

.method static findTarget(Ljava/util/List;Lcom/pikminx/helper/ExpeditionTargetMode;IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;
    .locals 6
    .param p1, "mode"    # Lcom/pikminx/helper/ExpeditionTargetMode;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Lcom/pikminx/helper/ExpeditionTargetMode;",
            "II",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;"
        }
    .end annotation

    .line 297
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->findTarget(Ljava/util/List;Lcom/pikminx/helper/ExpeditionTargetMode;IILjava/util/function/IntBinaryOperator;Ljava/util/Set;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;

    move-result-object v0

    return-object v0
.end method

.method static findTarget(Ljava/util/List;Lcom/pikminx/helper/ExpeditionTargetMode;IILjava/util/function/IntBinaryOperator;Ljava/util/Set;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;
    .locals 10
    .param p1, "mode"    # Lcom/pikminx/helper/ExpeditionTargetMode;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Lcom/pikminx/helper/ExpeditionTargetMode;",
            "II",
            "Ljava/util/function/IntBinaryOperator;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;"
        }
    .end annotation

    .line 307
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .local p5, "skippedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;>;"
    const/4 v1, -0x1

    .line 309
    .local v1, "itemSectionTop":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 310
    .local v3, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u82b1\u82d7\u548c\u6c34\u679c"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    .line 312
    goto :goto_1

    .line 314
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_0
    goto :goto_0

    .line 315
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 316
    .restart local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p3

    const v6, 0x3e75c28f    # 0.24f

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p3

    const v6, 0x3f5c28f6    # 0.86f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 317
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p2

    const v6, 0x3da3d70a    # 0.08f

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p2

    const v6, 0x3f6b851f    # 0.92f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    if-ltz v1, :cond_3

    .line 318
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    if-gt v4, v1, :cond_3

    .line 319
    goto :goto_2

    .line 321
    :cond_3
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->itemKind(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    move-result-object v5

    .line 323
    .local v5, "kind":Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;
    if-nez v5, :cond_4

    invoke-static {p0, v3, p2, p3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->isLikelyFruitCardName(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 324
    sget-object v5, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->FRUIT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    .line 326
    :cond_4
    if-eqz v5, :cond_2

    invoke-static {p0, v3, p2, p3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->belongsToActiveCard(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 327
    goto :goto_2

    .line 329
    :cond_5
    if-eqz p4, :cond_7

    sget-object v6, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->GIFT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    if-eq v5, v6, :cond_7

    .line 330
    nop

    .line 331
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v6

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v7

    .line 330
    invoke-static {p2, p3, v6, v7, p4}, Lcom/pikminx/helper/ReturnRewardDetector;->looksLikeGift(IIIILjava/util/function/IntBinaryOperator;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 332
    sget-object v5, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->GIFT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    goto :goto_3

    .line 333
    :cond_6
    sget-object v6, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->POT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    if-eq v5, v6, :cond_7

    .line 334
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v6

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v7

    .line 333
    invoke-static {p2, p3, v6, v7, p4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->looksLikePotStyle(IIIILjava/util/function/IntBinaryOperator;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 335
    sget-object v5, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->POT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    .line 338
    :cond_7
    :goto_3
    invoke-virtual {p1, v5}, Lcom/pikminx/helper/ExpeditionTargetMode;->accepts(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 339
    goto/16 :goto_2

    .line 341
    :cond_8
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v6

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v7

    int-to-float v8, p3

    const v9, 0x3ccccccd    # 0.025f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 342
    .local v6, "tapY":I
    new-instance v7, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v9

    invoke-direct {v7, v5, v8, v9, v6}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;-><init>(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;Ljava/lang/String;II)V

    .line 343
    .local v7, "candidate":Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;
    if-eqz p5, :cond_9

    invoke-virtual {v7, p2, p3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->confirmationKey(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 344
    invoke-interface {p5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 345
    goto/16 :goto_2

    .line 347
    :cond_9
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "kind":Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;
    .end local v6    # "tapY":I
    .end local v7    # "candidate":Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;
    goto/16 :goto_2

    .line 349
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$$ExternalSyntheticLambda0;-><init>()V

    .line 350
    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    new-instance v4, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$$ExternalSyntheticLambda1;-><init>()V

    .line 351
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    .line 350
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v2

    .line 352
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;

    .line 349
    return-object v2
.end method

.method static varargs findTextAction(Ljava/util/List;[Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 8
    .param p1, "labels"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;"
        }
    .end annotation

    .line 485
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 486
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "value":Ljava/lang/String;
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 488
    .local v5, "label":Ljava/lang/String;
    invoke-static {v5}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 489
    .local v6, "expected":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 487
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "expected":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 490
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v6    # "expected":Ljava/lang/String;
    :cond_1
    :goto_2
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object v0

    .line 493
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "value":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "expected":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 494
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static hasCardDurationBelow(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;II)Z
    .locals 9
    .param p1, "location"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            "II)Z"
        }
    .end annotation

    .line 796
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 797
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    if-ne v1, p1, :cond_0

    .line 798
    goto :goto_0

    .line 800
    :cond_0
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v3

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 801
    .local v3, "gap":I
    int-to-float v4, v3

    neg-int v5, p3

    int-to-float v5, v5

    const v6, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    const/4 v5, 0x1

    if-ltz v4, :cond_1

    int-to-float v4, v3

    int-to-float v6, p3

    const v7, 0x3da3d70a    # 0.08f

    mul-float/2addr v6, v7

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v2

    .line 802
    .local v4, "directlyBelow":Z
    :goto_1
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v6

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p2

    const v8, 0x3e3851ec    # 0.18f

    mul-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2

    move v2, v5

    .line 803
    .local v2, "sameColumn":Z
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    sget-object v6, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->CARD_DURATION:Ljava/util/regex/Pattern;

    .line 804
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 805
    return v5

    .line 807
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "sameColumn":Z
    .end local v3    # "gap":I
    .end local v4    # "directlyBelow":Z
    :cond_3
    goto :goto_0

    .line 808
    :cond_4
    return v2
.end method

.method private static hasDetailPageMarker(Ljava/lang/String;)Z
    .locals 15
    .param p0, "text"    # Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 91
    return v0

    .line 93
    :cond_0
    const-string v1, "\u53ef\u4ee5\u9078\u64c7"

    const-string v2, "\u53ef\u4ee5\u9009\u62e9"

    const-string v3, "\u82b1\u82d7\u548c\u6c34\u679c"

    const-string v4, "\u82b1\u82d7\u8207\u6c34\u679c"

    const-string v5, "\u82b1\u82d7\u4e0e\u6c34\u679c"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->hasSelectionCounter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 96
    :cond_1
    const-string v2, "\u6d3e\u76ae\u514b\u654f\u51fa\u53bb\u63a2\u96aa\u5427"

    const-string v3, "\u6d3e\u76ae\u514b\u654f\u51fa\u53bb\u63a2\u9669\u5427"

    const-string v4, "\u6d3e\u76ae\u514b\u654f\u51fa\u53bb\u63a2\u7d22\u5427"

    const-string v5, "\u6d3e\u76ae\u514b\u654f\u51fa\u53bb\u63a2\u81c9\u5427"

    const-string v6, "\u6d3e\u76ae\u514b\u654f\u51fa\u53bb\u63a1\u96aa\u5427"

    const-string v7, "\u6d3e\u76ae\u514b\u654f\u51fa\u53bb\u63a1\u9669\u5427"

    const-string v8, "\u6d3e\u76ae\u514b\u654f\u51fa\u53bb\u63a1\u81c9\u5427"

    const-string v9, "\u6d3e\u76ae\u514b\u654f\u51fa\u53bb\u63a1\u8138\u5427"

    const-string v10, "\u6d3e\u76ae\u4eac\u654f\u51fa\u53bb\u63a2\u96aa\u5427"

    const-string v11, "\u6d3e\u76ae\u4eac\u654f\u51fa\u53bb\u63a2\u9669\u5427"

    const-string v12, "\u6d3e\u76ae\u4eac\u654f\u51fa\u53bb\u63a1\u96aa\u5427"

    const-string v13, "\u6d3e\u76ae\u4eac\u654f\u51fa\u53bb\u63a1\u9669\u5427"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 100
    return v2

    .line 102
    :cond_2
    const-string v3, "\u524d\u5f80\u63a2\u96aa"

    const-string v4, "\u524d\u5f80\u63a2\u9669"

    const-string v5, "\u524d\u53bb\u63a2\u96aa"

    const-string v6, "\u524d\u53bb\u63a2\u9669"

    const-string v7, "\u524d\u67f1\u63a2\u96aa"

    const-string v8, "\u524d\u67f1\u63a1\u96aa"

    const-string v9, "\u524d\u4f4f\u63a2\u96aa"

    const-string v10, "\u524d\u4f4f\u63a1\u96aa"

    const-string v11, "\u524d\u67f1\u63a1\u81c9"

    const-string v12, "\u524d\u67f1\u63a1\u8138"

    const-string v13, "\u524d\u67f1\u63a2\u8138"

    const-string v14, "\u524d\u4f4f\u63a2\u8138"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    return v2

    .line 108
    :cond_3
    const-string v1, "\u767c\u73fe\u65e5"

    const-string v3, "\u53d1\u73b0\u65e5"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u8ddd\u96e2"

    const-string v3, "\u8ddd\u79bb"

    const-string v4, "\u5269\u9918\u6642\u9593"

    const-string v5, "\u5269\u4f59\u65f6\u95f4"

    const-string v6, "\u91cd\u91cf"

    filled-new-array {v4, v5, v6, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {p0, v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    return v2

    .line 112
    :cond_4
    const/16 v1, 0x63a1

    const/16 v3, 0x63a2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 113
    const v3, 0x8138

    const v4, 0x96aa

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 114
    const v3, 0x81c9

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 115
    const v3, 0x9669

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 116
    const/16 v3, 0x4eac

    const/16 v4, 0x514b

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 117
    const/16 v3, 0x53e4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 118
    const/16 v3, 0x5409

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 119
    const/16 v3, 0x652f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 120
    const/16 v3, 0x5144

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 121
    const/16 v3, 0x5145

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 122
    const/16 v3, 0x514d

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 123
    const/16 v3, 0x5154

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "normalized":Ljava/lang/String;
    const-string v3, "\u6d3e\u76ae\u514b\u654f\u51fa\u53bb\u63a2\u96aa\u5427"

    const-string v4, "\u6d3e\u76ae\u514b\u654f\u51fa\u53bb\u63a2\u7d22\u5427"

    const-string v5, "\u51fa\u53bb\u63a2\u96aa\u5427"

    const-string v6, "\u51fa\u53bb\u63a2\u7d22\u5427"

    const-string v7, "\u51fa\u53bb\u63a2\u96aa"

    const-string v8, "\u51fa\u53bb\u63a1\u96aa"

    const-string v9, "\u524d\u5f80\u63a2\u96aa"

    const-string v10, "\u524d\u53bb\u63a2\u96aa"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 128
    return v2

    .line 130
    :cond_5
    const-string v3, "\u6d3e\u76ae"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "\u51fa\u53bb\u63a2\u96aa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "\u51fa\u53bb\u63a1\u96aa"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const-string v3, "\u63a2\u96aa"

    const-string v4, "\u63a2\u7d22"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-static {v1, v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 132
    return v2

    .line 134
    :cond_7
    return v0

    .line 94
    .end local v1    # "normalized":Ljava/lang/String;
    :cond_8
    :goto_0
    return v0
.end method

.method private static varargs hasExactToken(Ljava/util/List;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 860
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 861
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 862
    .local v3, "text":Ljava/lang/String;
    array-length v4, p1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, p1, v2

    .line 863
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 864
    const/4 v0, 0x1

    return v0

    .line 862
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 867
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 868
    :cond_2
    return v2
.end method

.method static hasExploreNavigationAnchor(Ljava/util/List;II)Z
    .locals 1
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

    .line 421
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->findExactExploreNavigationAnchor(Ljava/util/List;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static hasFullSelection(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)Z"
        }
    .end annotation

    .line 567
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->joined(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "text":Ljava/lang/String;
    sget-object v1, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->COUNTER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 569
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 571
    .local v3, "selected":I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 572
    .local v4, "limit":I
    if-lt v4, v2, :cond_0

    const/16 v5, 0xc

    if-gt v4, v5, :cond_0

    if-ne v3, v4, :cond_0

    .line 573
    return v2

    .line 575
    .end local v3    # "selected":I
    .end local v4    # "limit":I
    :cond_0
    goto :goto_0

    .line 576
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static hasScrolledExploreListEvidence(Ljava/util/List;II)Z
    .locals 10
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

    .line 426
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->findExactExploreNavigationAnchor(Ljava/util/List;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    move-result-object v0

    .line 427
    .local v0, "anchor":Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 428
    return v1

    .line 430
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 431
    .local v3, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;->y()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p2

    const v7, 0x3cf5c28f    # 0.03f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 432
    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->isExploreCardDuration(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 436
    invoke-static {v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsSeedling(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "\u98fe\u54c1\u4e00\u89bd"

    const-string v6, "\u9970\u54c1\u4e00\u89c8"

    const-string v7, "\u5b8c\u6210"

    const-string v8, "\u9818\u53d6"

    const-string v9, "\u9886\u53d6"

    filled-new-array {v7, v8, v9, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 437
    invoke-static {v4, v5}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 440
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v4    # "text":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 438
    .restart local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .restart local v4    # "text":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 441
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v4    # "text":Ljava/lang/String;
    :cond_4
    return v1
.end method

.method private static hasSelectionCounter(Ljava/lang/String;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .line 847
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->COUNTER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 848
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 850
    .local v2, "selected":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 851
    .local v3, "limit":I
    if-lt v3, v1, :cond_0

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    if-ltz v2, :cond_0

    if-gt v2, v3, :cond_0

    .line 852
    return v1

    .line 854
    .end local v2    # "selected":I
    .end local v3    # "limit":I
    :cond_0
    goto :goto_0

    .line 855
    :cond_1
    const-string v1, ".*\u6700\u591a\\d{1,2}.{0,8}\u76ae\u514b\u654f.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static inside(IIII)Z
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 925
    if-ltz p0, :cond_0

    if-ge p0, p2, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDetailActionRegion(Lcom/pikminx/helper/PetalMatcher$Token;II)Z
    .locals 3
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 256
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    const v2, 0x3f0ccccd    # 0.55f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    const v2, 0x3f6147ae    # 0.88f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0
.end method

.method static isExploreCardDuration(Ljava/lang/String;)Z
    .locals 21
    .param p0, "text"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "normalized":Ljava/lang/String;
    const-string v2, "\u5e74"

    const-string v3, "\u767c\u73fe"

    const-string v4, "\u53d1\u73b0"

    const-string v5, "\u5269\u9918"

    const-string v6, "\u5269\u4f59"

    const-string v7, "\u91cd\u91cf"

    const-string v8, "\u8ddd\u96e2"

    const-string v9, "\u8ddd\u79bb"

    const-string v10, "\u9031"

    const-string v11, "\u5468"

    const-string v12, "\u661f\u671f"

    const-string v13, "\u79ae\u54c1"

    const-string v14, "\u79ae\u7269"

    const-string v15, "\u82b1\u82d7"

    const-string v16, "\u6c34\u679c"

    const-string v17, "\u76ae\u514b\u654f"

    const-string v18, "\u51fa\u53bb"

    const-string v19, "\u524d\u5f80"

    const-string v20, "\u524d\u53bb"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    return v0

    .line 57
    :cond_1
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->CARD_DURATION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0

    .line 50
    .end local v1    # "normalized":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method static isExploreListStart(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)Z"
        }
    .end annotation

    .line 479
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->joined(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "text":Ljava/lang/String;
    const-string v1, "\u8611\u83c7"

    const-string v2, "\u78e8\u83c7"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u4eca\u65e5\u9084\u5269\u4e0b"

    const-string v2, "\u4eca\u65e5\u8fd8\u5269\u4e0b"

    const-string v3, "\u4eca\u5929\u9084\u5269\u4e0b"

    const-string v4, "\u4eca\u5929\u8fd8\u5269\u4e0b"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-static {v0, v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 480
    :goto_0
    return v1
.end method

.method static isExplorePanelExpanded(Ljava/util/List;I)Z
    .locals 10
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;I)Z"
        }
    .end annotation

    .line 399
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const v0, 0x7fffffff

    invoke-static {p0, v0, p1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->findExploreTabAnchor(Ljava/util/List;II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    move-result-object v0

    .line 400
    .local v0, "exploreTab":Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;->y()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3f051eb8    # 0.52f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 401
    return v1

    .line 403
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 404
    .local v3, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p1

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    const-string v5, "\u98fe\u54c1\u4e00\u89bd"

    const-string v6, "\u9970\u54c1\u4e00\u89c8"

    const-string v7, "\u82b1\u82d7\u548c\u6c34\u679c"

    const-string v8, "\u82b1\u82d7\u8207\u6c34\u679c"

    const-string v9, "\u82b1\u82d7\u4e0e\u6c34\u679c"

    filled-new-array {v7, v8, v9, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 406
    invoke-static {v4, v5}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 407
    return v1

    .line 409
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v4    # "text":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 410
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method static isExplorePanelExpanded(Ljava/util/List;II)Z
    .locals 1
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

    .line 416
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0, p2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->isExplorePanelExpanded(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method private static isKnownFruitName(Ljava/lang/String;)Z
    .locals 28
    .param p0, "text"    # Ljava/lang/String;

    .line 745
    const-string v0, "\u860b\u679c"

    const-string v1, "\u82f9\u679c"

    const-string v2, "\u67f3\u6a59"

    const-string v3, "\u6ab8\u6aac"

    const-string v4, "\u67e0\u6aac"

    const-string v5, "\u6afb\u6843"

    const-string v6, "\u6a31\u6843"

    const-string v7, "\u6843\u5b50"

    const-string v8, "\u6c34\u871c\u6843"

    const-string v9, "\u8461\u8404"

    const-string v10, "\u751c\u74dc"

    const-string v11, "\u54c8\u5bc6\u74dc"

    const-string v12, "\u897f\u74dc"

    const-string v13, "\u8349\u8393"

    const-string v14, "\u85cd\u8393"

    const-string v15, "\u84dd\u8393"

    const-string v16, "\u674e\u5b50"

    const-string v17, "\u9999\u8549"

    const-string v18, "\u68a8\u5b50"

    const-string v19, "\u6d0b\u68a8"

    const-string v20, "\u6a58\u5b50"

    const-string v21, "\u5947\u7570\u679c"

    const-string v22, "\u5947\u5f02\u679c"

    const-string v23, "\u8292\u679c"

    const-string v24, "\u706b\u9f8d\u679c"

    const-string v25, "\u706b\u9f99\u679c"

    const-string v26, "\u767e\u9999\u679c"

    const-string v27, "\u6c34\u679c"

    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isLikelyFruitCardName(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;II)Z
    .locals 22
    .param p1, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            "II)Z"
        }
    .end annotation

    .line 758
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 759
    .local v3, "text":Ljava/lang/String;
    sget-object v4, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->DIGIT_TEXT:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_9

    .line 760
    invoke-static {v0, v3, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->isTinySingleCharacterNoise(Lcom/pikminx/helper/PetalMatcher$Token;Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_9

    .line 761
    invoke-static {v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsSeedling(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 762
    invoke-static {v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsGift(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v6, "\u8611\u83c7"

    const-string v7, "\u78e8\u83c7"

    const-string v8, "\u5b8c\u6210"

    const-string v9, "\u9818\u53d6"

    const-string v10, "\u9886\u53d6"

    const-string v11, "\u63a2\u96aa"

    const-string v12, "\u63a2\u9669"

    const-string v13, "\u98fe\u54c1\u4e00\u89bd"

    const-string v14, "\u9970\u54c1\u4e00\u89c8"

    const-string v15, "\u660e\u4fe1\u7247"

    const-string v16, "\u82b1\u82d7\u548c\u6c34\u679c"

    const-string v17, "\u5269\u9918\u6642\u9593"

    const-string v18, "\u5269\u4f59\u65f6\u95f4"

    const-string v19, "\u67e5\u770b\u76ae\u514b\u654f"

    const-string v20, "\u4e2d\u6b62"

    const-string v21, "\u7d42\u6b62"

    filled-new-array/range {v6 .. v21}, [Ljava/lang/String;

    move-result-object v4

    .line 763
    invoke-static {v3, v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 768
    :cond_0
    invoke-static {v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->isKnownFruitName(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 769
    return v6

    .line 771
    :cond_1
    sget-object v4, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->HAN_TEXT:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_2

    .line 772
    return v5

    .line 774
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 775
    .local v7, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    if-ne v7, v0, :cond_3

    .line 776
    goto :goto_0

    .line 778
    :cond_3
    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 779
    .local v8, "gap":I
    int-to-float v9, v8

    neg-int v10, v2

    int-to-float v10, v10

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    int-to-float v9, v8

    int-to-float v10, v2

    const v11, 0x3db851ec    # 0.09f

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    move v9, v6

    goto :goto_1

    :cond_4
    move v9, v5

    .line 780
    .local v9, "directlyBelow":Z
    :goto_1
    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v1

    const v12, 0x3e3851ec    # 0.18f

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_5

    move v10, v6

    goto :goto_2

    :cond_5
    move v10, v5

    .line 781
    .local v10, "sameColumn":Z
    :goto_2
    invoke-virtual {v7}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 782
    .local v11, "metadata":Ljava/lang/String;
    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_7

    sget-object v12, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->HAN_TEXT:Ljava/util/regex/Pattern;

    .line 783
    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-nez v12, :cond_6

    sget-object v12, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->LATIN_TEXT:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    const-string v13, "\u82b1\u82d7"

    const-string v14, "\u6c34\u679c"

    const-string v15, "\u63a2\u96aa"

    const-string v16, "\u63a2\u9669"

    const-string v17, "\u63a1\u96aa"

    const-string v18, "\u63a1\u9669"

    const-string v19, "\u5b8c\u6210"

    const-string v20, "\u9818\u53d6"

    const-string v21, "\u9886\u53d6"

    filled-new-array/range {v13 .. v21}, [Ljava/lang/String;

    move-result-object v12

    .line 784
    invoke-static {v11, v12}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 785
    return v6

    .line 787
    .end local v7    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v8    # "gap":I
    .end local v9    # "directlyBelow":Z
    .end local v10    # "sameColumn":Z
    .end local v11    # "metadata":Ljava/lang/String;
    :cond_7
    goto/16 :goto_0

    .line 788
    :cond_8
    return v5

    .line 766
    :cond_9
    :goto_3
    return v5
.end method

.method private static isSoilBrown(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 914
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 915
    .local v0, "red":I
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 916
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 917
    .local v2, "blue":I
    const/16 v3, 0x37

    if-lt v0, v3, :cond_0

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_0

    const/16 v3, 0x23

    if-lt v1, v3, :cond_0

    const/16 v3, 0x91

    if-gt v1, v3, :cond_0

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    const/16 v3, 0x78

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v1, 0xc

    if-lt v0, v3, :cond_0

    add-int/lit8 v3, v2, 0x8

    if-lt v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isSproutGreen(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 907
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 908
    .local v0, "red":I
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 909
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 910
    .local v2, "blue":I
    const/16 v3, 0x37

    if-lt v1, v3, :cond_0

    add-int/lit8 v3, v0, 0x8

    if-lt v1, v3, :cond_0

    add-int/lit8 v3, v2, 0x4

    if-lt v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isTinySingleCharacterNoise(Lcom/pikminx/helper/PetalMatcher$Token;Ljava/lang/String;II)Z
    .locals 5
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 841
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v3, p2

    const v4, 0x3cf5c28f    # 0.03f

    mul-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v3, p3

    const v4, 0x3c449ba6    # 0.012f

    mul-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    .line 841
    :goto_0
    return v1
.end method

.method static isTravelDurationOverTwoDays(Ljava/util/List;I)Z
    .locals 10
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;I)Z"
        }
    .end annotation

    .line 581
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 583
    .local v2, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    const v5, 0x3e851eb8    # 0.26f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 584
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_0
    goto :goto_0

    .line 587
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "topText":Ljava/lang/String;
    const-string v2, "(\\d+)(?:\u65e5|\u5929|D|DAYS|DAY)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 589
    .local v2, "mDays":Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .line 590
    .local v3, "days":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 591
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 593
    :cond_2
    const-string v4, "(\\d+)(?:\u5c0f\u6642|\u5c0f\u65f6|H|HRS|HR)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 594
    .local v4, "mHours":Ljava/util/regex/Matcher;
    const/4 v6, 0x0

    .line 595
    .local v6, "hours":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 596
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 598
    :cond_3
    const-string v7, "(\\d+)(?:\u5206\u9418|\u5206\u949f|\u5206|M|MIN|MINS)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 599
    .local v7, "mMins":Ljava/util/regex/Matcher;
    const/4 v8, 0x0

    .line 600
    .local v8, "mins":I
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 601
    invoke-virtual {v7, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 604
    :cond_4
    const/4 v9, 0x2

    if-le v3, v9, :cond_5

    .line 605
    return v5

    .line 607
    :cond_5
    if-ne v3, v9, :cond_7

    if-gtz v6, :cond_6

    if-lez v8, :cond_7

    .line 608
    :cond_6
    return v5

    .line 610
    :cond_7
    if-nez v3, :cond_8

    const/16 v9, 0x30

    if-le v6, v9, :cond_8

    .line 611
    return v5

    .line 613
    :cond_8
    const/4 v5, 0x0

    return v5
.end method

.method private static itemKind(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 735
    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsGift(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->GIFT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    return-object v0

    .line 738
    :cond_0
    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsSeedling(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->POT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    return-object v0

    .line 741
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static joined(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 722
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 724
    .local v2, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    goto :goto_0

    .line 726
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static looksLikeExploreList(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)Z"
        }
    .end annotation

    .line 263
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->joined(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "text":Ljava/lang/String;
    const-string v1, "\u98fe\u54c1\u4e00\u89bd"

    const-string v2, "\u9970\u54c1\u4e00\u89c8"

    const-string v3, "\u82b1\u82d7\u548c\u6c34\u679c"

    const-string v4, "\u82b1\u82d7\u8207\u6c34\u679c"

    const-string v5, "\u82b1\u82d7\u4e0e\u6c34\u679c"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 265
    return v2

    .line 267
    :cond_0
    const-string v3, "\u6d3e\u76ae\u514b\u654f"

    const-string v4, "\u6d3e\u76ae\u4eac\u654f"

    const-string v5, "\u51fa\u53bb\u63a2\u96aa"

    const-string v6, "\u51fa\u53bb\u63a1\u96aa"

    const-string v7, "\u767c\u73fe\u65e5"

    const-string v8, "\u53d1\u73b0\u65e5"

    const-string v9, "\u5269\u9918\u6642\u9593"

    const-string v10, "\u5269\u4f59\u65f6\u95f4"

    const-string v11, "\u524d\u5f80\u63a2\u96aa"

    const-string v12, "\u524d\u53bb\u63a2\u96aa"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 268
    return v3

    .line 270
    :cond_1
    const-string v4, "\u63a2\u96aa"

    const-string v5, "\u63a2\u9669"

    const-string v6, "\u63a1\u96aa"

    const-string v7, "\u63a1\u9669"

    const-string v8, "\u63a2\u81c9"

    const-string v9, "\u63a2\u8138"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 271
    return v3

    .line 273
    :cond_2
    const/4 v1, 0x0

    .line 274
    .local v1, "durationCount":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 275
    .local v5, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->isExploreCardDuration(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x2

    if-lt v1, v6, :cond_3

    .line 277
    return v2

    .line 279
    .end local v5    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_3
    goto :goto_0

    .line 280
    :cond_4
    return v3
.end method

.method static looksLikePotStyle(IIIILjava/util/function/IntBinaryOperator;)Z
    .locals 21
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "centerX"    # I
    .param p3, "labelTop"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 362
    move/from16 v0, p0

    int-to-float v1, v0

    const v2, 0x3dc28f5c    # 0.095f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 363
    .local v1, "halfWidth":I
    sub-int v2, p2, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 364
    .local v2, "left":I
    add-int/lit8 v4, v0, -0x1

    add-int v5, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 365
    .local v4, "right":I
    int-to-float v5, v0

    const v6, 0x3e428f5c    # 0.19f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v5, p3, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 366
    .local v5, "top":I
    add-int/lit8 v6, p1, -0x1

    int-to-float v7, v0

    const v8, 0x3c75c28f    # 0.015f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v7, p3, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 367
    .local v6, "bottom":I
    if-le v4, v2, :cond_6

    if-gt v6, v5, :cond_0

    move/from16 v18, v1

    move-object/from16 v1, p4

    goto/16 :goto_3

    .line 370
    :cond_0
    div-int/lit16 v7, v0, 0x21c

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 371
    .local v7, "step":I
    const/4 v9, 0x0

    .line 372
    .local v9, "green":I
    const/4 v10, 0x0

    .line 373
    .local v10, "soil":I
    const/4 v11, 0x0

    .line 374
    .local v11, "sampled":I
    move v12, v4

    .line 375
    .local v12, "soilMinX":I
    move v13, v2

    .line 376
    .local v13, "soilMaxX":I
    sub-int v14, v6, v5

    int-to-float v14, v14

    const v15, 0x3f266666    # 0.65f

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v14, v5

    .line 377
    .local v14, "greenBottom":I
    sub-int v15, v6, v5

    int-to-float v15, v15

    const v16, 0x3eb33333    # 0.35f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    add-int/2addr v15, v5

    .line 378
    .local v15, "soilTop":I
    sub-int v8, v6, v5

    int-to-float v8, v8

    const v17, 0x3f3851ec    # 0.72f

    mul-float v8, v8, v17

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v8, v5

    .line 379
    .local v8, "soilBottom":I
    move/from16 v17, v5

    move/from16 v3, v17

    .local v3, "y":I
    :goto_0
    if-gt v3, v6, :cond_4

    .line 380
    move/from16 v18, v2

    move/from16 v0, v18

    .local v0, "x":I
    :goto_1
    if-gt v0, v4, :cond_3

    .line 381
    move/from16 v18, v1

    move-object/from16 v1, p4

    .end local v1    # "halfWidth":I
    .local v18, "halfWidth":I
    invoke-interface {v1, v0, v3}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v19

    .line 382
    .local v19, "color":I
    add-int/lit8 v11, v11, 0x1

    .line 383
    if-gt v3, v14, :cond_1

    invoke-static/range {v19 .. v19}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->isSproutGreen(I)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 384
    add-int/lit8 v9, v9, 0x1

    .line 386
    :cond_1
    if-lt v3, v15, :cond_2

    if-gt v3, v8, :cond_2

    invoke-static/range {v19 .. v19}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->isSoilBrown(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 387
    add-int/lit8 v10, v10, 0x1

    .line 388
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 389
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 380
    .end local v19    # "color":I
    :cond_2
    add-int/2addr v0, v7

    move/from16 v1, v18

    goto :goto_1

    .end local v18    # "halfWidth":I
    .restart local v1    # "halfWidth":I
    :cond_3
    move/from16 v18, v1

    move-object/from16 v1, p4

    .line 379
    .end local v0    # "x":I
    .end local v1    # "halfWidth":I
    .restart local v18    # "halfWidth":I
    add-int/2addr v3, v7

    move/from16 v0, p0

    move/from16 v1, v18

    goto :goto_0

    .end local v18    # "halfWidth":I
    .restart local v1    # "halfWidth":I
    :cond_4
    move/from16 v18, v1

    move-object/from16 v1, p4

    .line 393
    .end local v1    # "halfWidth":I
    .end local v3    # "y":I
    .restart local v18    # "halfWidth":I
    mul-int/lit16 v0, v9, 0x3e8

    mul-int/lit8 v3, v11, 0x5

    if-lt v0, v3, :cond_5

    mul-int/lit16 v0, v10, 0x3e8

    mul-int/lit8 v3, v11, 0x8

    if-lt v0, v3, :cond_5

    sub-int v0, v13, v12

    int-to-float v0, v0

    sub-int v3, v4, v2

    int-to-float v3, v3

    const v19, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v19

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return v3

    .line 367
    .end local v7    # "step":I
    .end local v8    # "soilBottom":I
    .end local v9    # "green":I
    .end local v10    # "soil":I
    .end local v11    # "sampled":I
    .end local v12    # "soilMinX":I
    .end local v13    # "soilMaxX":I
    .end local v14    # "greenBottom":I
    .end local v15    # "soilTop":I
    .end local v18    # "halfWidth":I
    .restart local v1    # "halfWidth":I
    :cond_6
    move/from16 v18, v1

    move-object/from16 v1, p4

    .line 368
    .end local v1    # "halfWidth":I
    .restart local v18    # "halfWidth":I
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesDetailActionText(Ljava/lang/String;)Z
    .locals 22
    .param p0, "value"    # Ljava/lang/String;

    .line 197
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 198
    return v1

    .line 200
    :cond_0
    const-string v2, "\u524d\u5f80\u63a2\u96aa"

    const-string v3, "\u524d\u5f80\u63a2\u9669"

    const-string v4, "\u524d\u5f80\u63a2\u7d22"

    const-string v5, "\u524d\u5f80\u63a2\u81c9"

    const-string v6, "\u524d\u5f80\u63a2\u8138"

    const-string v7, "\u524d\u67f1\u63a1\u96aa"

    const-string v8, "\u524d\u67f1\u63a1\u9669"

    const-string v9, "\u524d\u67f1\u63a1\u81c9"

    const-string v10, "\u524d\u67f1\u63a1\u8138"

    const-string v11, "\u524d\u67f1\u63a2\u96aa"

    const-string v12, "\u524d\u67f1\u63a2\u9669"

    const-string v13, "\u524d\u4f4f\u63a1\u96aa"

    const-string v14, "\u524d\u4f4f\u63a1\u9669"

    const-string v15, "\u524d\u4f4f\u63a2\u96aa"

    const-string v16, "\u524d\u4f4f\u63a2\u9669"

    const-string v17, "\u524d\u5f80\u63a1\u96aa"

    const-string v18, "\u524d\u5f80\u63a1\u9669"

    const-string v19, "\u524d\u53bb\u63a2\u96aa"

    const-string v20, "\u524d\u53bb\u63a2\u9669"

    const-string v21, "\u524d\u53bb\u63a2\u7d22"

    filled-new-array/range {v2 .. v21}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 206
    return v3

    .line 208
    :cond_1
    const/16 v2, 0x67f1

    const/16 v4, 0x5f80

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 209
    const/16 v5, 0x4f4f

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 210
    const/16 v5, 0x6ce8

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 211
    const/16 v5, 0x4efb

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 212
    const/16 v4, 0x63a1

    const/16 v5, 0x63a2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 213
    const v4, 0x81c9

    const v5, 0x96aa

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 214
    const v4, 0x8138

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 215
    const v4, 0x9669

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 216
    const/16 v4, 0x7d22

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 217
    const v4, 0x9a57

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 218
    const v4, 0x9a13

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "normalized":Ljava/lang/String;
    const-string v4, "\u524d\u53bb\u63a2\u96aa"

    const-string v5, "\u524d\u5f80\u63a2\u96aa"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 220
    return v3

    .line 222
    :cond_2
    invoke-static {v2, v5}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsThreeOfFourAlignedCharacters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    return v3

    .line 225
    :cond_3
    const-string v6, "\u63a2\u96aa"

    const-string v7, "\u63a2\u9669"

    const-string v8, "\u63a1\u96aa"

    const-string v9, "\u63a1\u9669"

    const-string v10, "\u63a2\u81c9"

    const-string v11, "\u63a2\u8138"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 226
    invoke-static {v0, v5}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsThreeOfFourAlignedCharacters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 227
    const-string v4, "\u524d\u5f80\u63a2\u9669"

    invoke-static {v0, v4}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsThreeOfFourAlignedCharacters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 228
    invoke-static {v2, v5}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->containsThreeOfFourAlignedCharacters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v1, v3

    .line 226
    :cond_5
    return v1

    .line 230
    :cond_6
    const-string v4, "\u524d"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 231
    :cond_7
    const-string v4, "\u96aa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "\u63a2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 232
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-gt v4, v5, :cond_9

    .line 233
    return v3

    .line 235
    :cond_9
    return v1
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 730
    const-string v0, ""

    if-nez p0, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    nop

    .line 730
    const-string v1, "[\\s\uff1a:\uff01!]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 730
    :goto_0
    return-object v0
.end method

.method static pikminAutoDiagnostic(Ljava/util/List;II)Ljava/lang/String;
    .locals 6
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

    .line 518
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 519
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "text":Ljava/lang/String;
    const-string v3, "\u81ea\u52d5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\u81ea\u52a8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 521
    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, p1

    const v4, 0x3d23d70a    # 0.04f

    mul-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    const-string v0, "x_too_far_left"

    goto :goto_1

    .line 524
    :cond_1
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, p1

    const v4, 0x3f0ccccd    # 0.55f

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    const-string v0, "x_too_far_right"

    goto :goto_1

    .line 525
    :cond_2
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, p2

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    const-string v0, "y_too_high"

    goto :goto_1

    .line 526
    :cond_3
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, p2

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    const-string v0, "y_too_low"

    goto :goto_1

    .line 527
    :cond_4
    const-string v0, "accepted"

    :goto_1
    nop

    .line 528
    .local v0, "reason":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" bounds=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 529
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 530
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 528
    return-object v3

    .line 532
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "text":Ljava/lang/String;
    :cond_5
    const-string v0, "reason=no_exact_auto_token"

    return-object v0
.end method

.method static resultCloseAnchor(II)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 718
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;

    int-to-float v1, p0

    const v2, 0x3dc8b439

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    const v3, 0x3f7020c5    # 0.938f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Point;-><init>(II)V

    return-object v0
.end method

.method static selectedPikminCount(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)I"
        }
    .end annotation

    .line 651
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->COUNTER:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->joined(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 652
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 654
    .local v2, "selected":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 655
    .local v3, "limit":I
    if-lt v3, v1, :cond_0

    const/16 v1, 0xc

    if-gt v3, v1, :cond_0

    if-ltz v2, :cond_0

    if-gt v2, v3, :cond_0

    .line 656
    return v2

    .line 658
    .end local v2    # "selected":I
    .end local v3    # "limit":I
    :cond_0
    goto :goto_0

    .line 659
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method static selectionLimit(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)I"
        }
    .end annotation

    .line 631
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->joined(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "text":Ljava/lang/String;
    sget-object v1, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->COUNTER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 633
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 634
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 635
    .local v2, "limit":I
    if-lt v2, v4, :cond_0

    if-gt v2, v3, :cond_0

    .line 636
    return v2

    .line 638
    .end local v2    # "limit":I
    :cond_0
    goto :goto_0

    .line 639
    :cond_1
    const-string v2, "\u6700\u591a(\\d{1,2})"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 640
    .local v2, "maxMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 641
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 642
    .local v5, "limit":I
    if-lt v5, v4, :cond_2

    if-gt v5, v3, :cond_2

    .line 643
    return v5

    .line 646
    .end local v5    # "limit":I
    :cond_2
    const/4 v3, -0x1

    return v3
.end method
