.class final Lcom/pikminx/helper/PlantingScreenAnalyzer;
.super Ljava/lang/Object;
.source "PlantingScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;,
        Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;,
        Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;,
        Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;,
        Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;
    }
.end annotation


# static fields
.field private static final ASSISTANT_OVERLAY_ANCHORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAP_ANCHORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 37
    const-string v0, "\u6b65\u6578"

    const-string v1, "\u5546\u5e97"

    const-string v2, "\u597d\u53cb"

    const-string v3, "\u901a\u77e5"

    const-string v4, "\u98fe\u54c1"

    const-string v5, "boost"

    const-string v6, "shop"

    invoke-static/range {v0 .. v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer;->MAP_ANCHORS:Ljava/util/List;

    .line 39
    const-string v1, "\u81ea\u52d5\u6488\u82b1"

    const-string v2, "\u81ea\u52d5\u7a2e\u82b1"

    const-string v3, "\u8fa8\u8b58\u4e2d"

    const-string v4, "\u6e96\u5099\u641c\u5c0b\u82b1\u76c6"

    const-string v5, "\u9ede\u61f8\u6d6e\u5716\u793a"

    const-string v6, "\u6b63\u5728\u78ba\u8a8d\u5730\u5716\u7a2e\u82b1\u5165\u53e3"

    const-string v7, "\u5df2\u9032\u5165\u7a2e\u82b1\u756b\u9762"

    invoke-static/range {v1 .. v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer;->ASSISTANT_OVERLAY_ANCHORS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(Ljava/util/List;Ljava/util/List;IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;
    .locals 19
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;"
        }
    .end annotation

    .line 56
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .local p1, "knownFlowers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/PlantingScreenAnalyzer;->withoutAssistantOverlay(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "gameTokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    sget-object v1, Lcom/pikminx/helper/PlantingScreenAnalyzer;->MAP_ANCHORS:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/pikminx/helper/PlantingScreenAnalyzer;->containsAny(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    .line 58
    .local v1, "mapAnchored":Z
    nop

    .line 59
    invoke-static/range {p2 .. p4}, Lcom/pikminx/helper/CardHighlight;->findMapPlantingEntryAboveWhistle(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$MapEntryMatch;

    move-result-object v2

    .line 60
    .local v2, "whistleMatch":Lcom/pikminx/helper/CardHighlight$MapEntryMatch;
    invoke-virtual {v2}, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->point()Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/PlantingScreenAnalyzer;->point(Lcom/pikminx/helper/CardHighlight$Point;)Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    move-result-object v3

    .line 61
    .local v3, "mapEntry":Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    new-instance v15, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;

    .line 62
    if-nez v3, :cond_0

    sget-object v4, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;->NONE:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;->WHISTLE_RELATIVE:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    .line 63
    :goto_0
    invoke-virtual {v2}, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->anchor()Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v5

    invoke-static {v5}, Lcom/pikminx/helper/PlantingScreenAnalyzer;->point(Lcom/pikminx/helper/CardHighlight$Point;)Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    move-result-object v5

    .line 64
    invoke-virtual {v2}, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->searchBounds()Lcom/pikminx/helper/CardHighlight$Bounds;

    move-result-object v6

    .line 65
    invoke-virtual {v2}, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->score()I

    move-result v7

    invoke-direct {v15, v4, v5, v6, v7}, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;-><init>(Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;Lcom/pikminx/helper/CardHighlight$Bounds;I)V

    .line 67
    .local v15, "entryEvidence":Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;
    nop

    .line 68
    invoke-static/range {p2 .. p4}, Lcom/pikminx/helper/CardHighlight;->findPlantingMenuControls(IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;

    move-result-object v16

    .line 69
    .local v16, "menuControls":Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;
    const/4 v4, 0x0

    if-nez v16, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->startControl()Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v5

    :goto_1
    move-object/from16 v17, v5

    .line 70
    .local v17, "start":Lcom/pikminx/helper/CardHighlight$Point;
    if-nez v16, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->stopControl()Lcom/pikminx/helper/CardHighlight$Point;

    move-result-object v4

    :goto_2
    move-object/from16 v18, v4

    .line 71
    .local v18, "stop":Lcom/pikminx/helper/CardHighlight$Point;
    if-eqz v16, :cond_3

    .line 72
    new-instance v4, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;

    sget-object v11, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->PLANTING_MENU:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    const/4 v12, 0x0

    .line 75
    invoke-static/range {v17 .. v17}, Lcom/pikminx/helper/PlantingScreenAnalyzer;->point(Lcom/pikminx/helper/CardHighlight$Point;)Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    move-result-object v13

    .line 76
    invoke-static/range {v18 .. v18}, Lcom/pikminx/helper/PlantingScreenAnalyzer;->point(Lcom/pikminx/helper/CardHighlight$Point;)Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    move-result-object v14

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;-><init>(Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;)V

    .line 72
    return-object v4

    .line 79
    :cond_3
    new-instance v10, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;

    .line 80
    if-eqz v3, :cond_4

    .line 81
    sget-object v4, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->MAP_WITH_ENTRY:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    move-object v5, v4

    goto :goto_3

    .line 82
    :cond_4
    if-eqz v1, :cond_5

    .line 83
    sget-object v4, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->MAP_VISIBLE_NO_ENTRY:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    move-object v5, v4

    goto :goto_3

    .line 84
    :cond_5
    sget-object v4, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->UNKNOWN:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    move-object v5, v4

    .line 86
    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/pikminx/helper/PlantingScreenAnalyzer;->point(Lcom/pikminx/helper/CardHighlight$Point;)Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    move-result-object v7

    .line 87
    invoke-static/range {v18 .. v18}, Lcom/pikminx/helper/PlantingScreenAnalyzer;->point(Lcom/pikminx/helper/CardHighlight$Point;)Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    move-result-object v8

    move-object v4, v10

    move-object v6, v3

    move-object v9, v15

    invoke-direct/range {v4 .. v9}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;-><init>(Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;)V

    .line 79
    return-object v10
.end method

.method static analyze(Ljava/util/List;Ljava/util/List;IILjava/util/function/IntBinaryOperator;ZZ)Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .param p5, "ignoredSemanticStartVisible"    # Z
    .param p6, "ignoredSemanticStopVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/function/IntBinaryOperator;",
            "ZZ)",
            "Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .local p1, "knownFlowers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/pikminx/helper/PlantingScreenAnalyzer;->analyze(Ljava/util/List;Ljava/util/List;IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;

    move-result-object v0

    return-object v0
.end method

.method private static containsAny(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 128
    .local p1, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "text":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, "anchor":Ljava/lang/String;
    invoke-static {v2}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    const/4 v1, 0x1

    return v1

    .line 133
    .end local v2    # "anchor":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 134
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static containsAny(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 119
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .local p1, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 120
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/pikminx/helper/PlantingScreenAnalyzer;->containsAny(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const/4 v0, 0x1

    return v0

    .line 123
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static point(Lcom/pikminx/helper/CardHighlight$Point;)Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    .locals 3
    .param p0, "point"    # Lcom/pikminx/helper/CardHighlight$Point;

    .line 138
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    invoke-virtual {p0}, Lcom/pikminx/helper/CardHighlight$Point;->x()I

    move-result v1

    invoke-virtual {p0}, Lcom/pikminx/helper/CardHighlight$Point;->y()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method private static withoutAssistantOverlay(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;"
        }
    .end annotation

    .line 108
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 110
    .local v2, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/pikminx/helper/PlantingScreenAnalyzer;->ASSISTANT_OVERLAY_ANCHORS:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/pikminx/helper/PlantingScreenAnalyzer;->containsAny(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    return-object v0
.end method
