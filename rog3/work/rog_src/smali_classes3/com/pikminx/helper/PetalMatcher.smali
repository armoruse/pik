.class final Lcom/pikminx/helper/PetalMatcher;
.super Ljava/lang/Object;
.source "PetalMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/PetalMatcher$PanelPull;,
        Lcom/pikminx/helper/PetalMatcher$Selection;,
        Lcom/pikminx/helper/PetalMatcher$Token;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$fWUvAlSaqytAzkyjiYg9h4tOE-w(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/pikminx/helper/PetalMatcher;->flowerNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findFlower(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/PetalMatcher$Selection;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
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
            "Lcom/pikminx/helper/PetalMatcher$Selection;"
        }
    .end annotation

    .line 80
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/pikminx/helper/PetalMatcher;->findVisibleFlower(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/PetalMatcher$Selection;

    move-result-object v0

    return-object v0
.end method

.method static findFlower(Ljava/util/List;Ljava/util/List;Ljava/lang/String;III)Lcom/pikminx/helper/PetalMatcher$Selection;
    .locals 6
    .param p2, "excluded"    # Ljava/lang/String;
    .param p3, "minimumCount"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "III)",
            "Lcom/pikminx/helper/PetalMatcher$Selection;"
        }
    .end annotation

    .line 40
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .local p1, "allowed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "excludedKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 42
    .local v1, "nextIndex":I
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 44
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    add-int/lit8 v1, v2, 0x1

    .line 46
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "index":I
    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-ltz v1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    goto :goto_3

    .line 54
    :cond_2
    move v3, v1

    .local v3, "index":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 55
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4, p4, p5}, Lcom/pikminx/helper/PetalMatcher;->findVisibleFlower(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/PetalMatcher$Selection;

    move-result-object v4

    .line 56
    .local v4, "next":Lcom/pikminx/helper/PetalMatcher$Selection;
    if-nez v4, :cond_3

    .line 57
    return-object v2

    .line 59
    :cond_3
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Selection;->count()I

    move-result v5

    if-le v5, p3, :cond_4

    .line 60
    return-object v4

    .line 54
    .end local v4    # "next":Lcom/pikminx/helper/PetalMatcher$Selection;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 63
    .end local v3    # "index":I
    :cond_5
    return-object v2

    .line 51
    :cond_6
    :goto_3
    return-object v2
.end method

.method static findHighlightedFlower(Ljava/util/List;Ljava/util/List;IILjava/util/function/ToIntFunction;)Lcom/pikminx/helper/PetalMatcher$Selection;
    .locals 7
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/function/ToIntFunction<",
            "Lcom/pikminx/helper/PetalMatcher$Selection;",
            ">;)",
            "Lcom/pikminx/helper/PetalMatcher$Selection;"
        }
    .end annotation

    .line 185
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .local p1, "allowed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "backgroundScore":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Lcom/pikminx/helper/PetalMatcher$Selection;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, "best":Lcom/pikminx/helper/PetalMatcher$Selection;
    const/4 v1, -0x1

    .line 187
    .local v1, "bestScore":I
    const/4 v2, -0x1

    .line 188
    .local v2, "secondScore":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 189
    .local v4, "allowedName":Ljava/lang/String;
    invoke-static {p0, v4, p2, p3}, Lcom/pikminx/helper/PetalMatcher;->findVisibleFlower(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/PetalMatcher$Selection;

    move-result-object v5

    .line 190
    .local v5, "candidate":Lcom/pikminx/helper/PetalMatcher$Selection;
    if-nez v5, :cond_0

    .line 191
    goto :goto_0

    .line 193
    :cond_0
    invoke-interface {p4, v5}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v6

    .line 194
    .local v6, "score":I
    if-le v6, v1, :cond_1

    .line 195
    move v2, v1

    .line 196
    move v1, v6

    .line 197
    move-object v0, v5

    goto :goto_1

    .line 199
    :cond_1
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 201
    .end local v4    # "allowedName":Ljava/lang/String;
    .end local v5    # "candidate":Lcom/pikminx/helper/PetalMatcher$Selection;
    .end local v6    # "score":I
    :goto_1
    goto :goto_0

    .line 204
    :cond_2
    if-eqz v0, :cond_4

    const/16 v3, 0xf5

    if-lt v1, v3, :cond_4

    if-ltz v2, :cond_3

    sub-int v3, v1, v2

    const/16 v4, 0x8

    if-lt v3, v4, :cond_4

    .line 205
    :cond_3
    move-object v3, v0

    goto :goto_2

    .line 206
    :cond_4
    const/4 v3, 0x0

    .line 202
    :goto_2
    return-object v3
.end method

.method static findInitialFlower(Ljava/util/List;Ljava/util/List;II)Lcom/pikminx/helper/PetalMatcher$Selection;
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/pikminx/helper/PetalMatcher$Selection;"
        }
    .end annotation

    .line 73
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .local p1, "sequence":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, p2, p3}, Lcom/pikminx/helper/PetalMatcher;->findVisibleFlower(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/PetalMatcher$Selection;

    move-result-object v0

    return-object v0
.end method

.method static findSearchedFlower(Ljava/util/List;Ljava/lang/String;III)Lcom/pikminx/helper/PetalMatcher$Selection;
    .locals 12
    .param p1, "searchedFlower"    # Ljava/lang/String;
    .param p2, "minimumCount"    # I
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
            "Lcom/pikminx/helper/PetalMatcher$Selection;"
        }
    .end annotation

    .line 90
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p1}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "canonical":Ljava/lang/String;
    const/4 v11, 0x0

    if-nez v10, :cond_0

    .line 92
    return-object v11

    .line 94
    :cond_0
    const v5, 0x3f07ae14    # 0.53f

    const v6, 0x3f75c28f    # 0.96f

    const v7, 0x3e23d70a    # 0.16f

    const v8, 0x3e4ccccd    # 0.2f

    new-instance v9, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, v10

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v9}, Lcom/pikminx/helper/PetalPotDetector;->find(Ljava/util/List;Ljava/lang/String;IIIFFFFLjava/util/function/Function;)Lcom/pikminx/helper/PetalPotDetector$Match;

    move-result-object v6

    .line 105
    .local v6, "match":Lcom/pikminx/helper/PetalPotDetector$Match;
    if-nez v6, :cond_1

    .line 106
    move/from16 v7, p4

    goto :goto_0

    .line 107
    :cond_1
    new-instance v11, Lcom/pikminx/helper/PetalMatcher$Selection;

    .line 109
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalPotDetector$Match;->count()I

    move-result v2

    .line 110
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalPotDetector$Match;->x()I

    move-result v3

    .line 111
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalPotDetector$Match;->labelY()I

    move-result v4

    .line 112
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalPotDetector$Match;->labelTop()I

    move-result v0

    move/from16 v7, p4

    int-to-float v1, v7

    const v5, 0x3d99999a    # 0.075f

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, v11

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/pikminx/helper/PetalMatcher$Selection;-><init>(Ljava/lang/String;IIII)V

    .line 105
    :goto_0
    return-object v11
.end method

.method static findStartPlantingControl(Ljava/util/List;II)Lcom/pikminx/helper/PetalMatcher$Token;
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Lcom/pikminx/helper/PetalMatcher$Token;"
        }
    .end annotation

    .line 134
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

    .line 135
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    if-ltz v3, :cond_1

    .line 137
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    if-gt v3, p1, :cond_1

    .line 138
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    if-ltz v3, :cond_1

    .line 139
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, p2

    const-wide v7, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 140
    const-string v3, "\u958b\u59cb\u7a2e\u82b1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "startplanting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    return-object v1

    .line 143
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 144
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findVisibleFlower(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/PetalMatcher$Selection;
    .locals 10
    .param p1, "allowedName"    # Ljava/lang/String;
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
            "Lcom/pikminx/helper/PetalMatcher$Selection;"
        }
    .end annotation

    .line 212
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v2, 0x0

    const v5, 0x3e6147ae    # 0.22f

    const v6, 0x3f7d70a4    # 0.99f

    const v7, 0x3e3851ec    # 0.18f

    const v8, 0x3dcccccd    # 0.1f

    new-instance v9, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Lcom/pikminx/helper/PetalPotDetector;->find(Ljava/util/List;Ljava/lang/String;IIIFFFFLjava/util/function/Function;)Lcom/pikminx/helper/PetalPotDetector$Match;

    move-result-object v0

    .line 223
    .local v0, "match":Lcom/pikminx/helper/PetalPotDetector$Match;
    if-nez v0, :cond_0

    .line 224
    const/4 v1, 0x0

    return-object v1

    .line 226
    :cond_0
    invoke-static {p1}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "canonical":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v3, p1

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 228
    .local v3, "displayName":Ljava/lang/String;
    :goto_0
    new-instance v8, Lcom/pikminx/helper/PetalMatcher$Selection;

    .line 230
    invoke-virtual {v0}, Lcom/pikminx/helper/PetalPotDetector$Match;->count()I

    move-result v4

    .line 231
    invoke-virtual {v0}, Lcom/pikminx/helper/PetalPotDetector$Match;->x()I

    move-result v5

    .line 232
    invoke-virtual {v0}, Lcom/pikminx/helper/PetalPotDetector$Match;->labelY()I

    move-result v6

    .line 233
    invoke-virtual {v0}, Lcom/pikminx/helper/PetalPotDetector$Match;->labelTop()I

    move-result v2

    int-to-float v7, p3

    const v9, 0x3d99999a    # 0.075f

    mul-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v2, v7

    const/4 v7, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/pikminx/helper/PetalMatcher$Selection;-><init>(Ljava/lang/String;IIII)V

    .line 228
    return-object v8
.end method

.method private static flowerNameKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 238
    invoke-static {p0}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "canonical":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static hasVisibleFlowerCard(Ljava/util/List;Ljava/util/List;II)Z
    .locals 3
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 150
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .local p1, "knownFlowers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "flower":Ljava/lang/String;
    invoke-static {p0, v1, p2, p3}, Lcom/pikminx/helper/PetalMatcher;->findVisibleFlower(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/PetalMatcher$Selection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    const/4 v0, 0x1

    return v0

    .line 154
    .end local v1    # "flower":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isLabel(Lcom/pikminx/helper/PetalMatcher$Token;II)Z
    .locals 6
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 276
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PetalMatcher;->parseCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/pikminx/helper/CardHighlight;->contains(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x3fcc28f5c28f5c29L    # 0.22

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0
.end method

.method private static matchingLabel(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;Ljava/lang/String;II)Lcom/pikminx/helper/PetalMatcher$Token;
    .locals 10
    .param p1, "firstLine"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p2, "allowedKey"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/pikminx/helper/PetalMatcher$Token;"
        }
    .end annotation

    .line 249
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-static {p1, p3, p4}, Lcom/pikminx/helper/PetalMatcher;->isLabel(Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 250
    return-object v1

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    return-object p1

    .line 255
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 256
    .local v2, "secondLine":Lcom/pikminx/helper/PetalMatcher$Token;
    if-eq v2, p1, :cond_2

    .line 257
    invoke-static {v2, p3, p4}, Lcom/pikminx/helper/PetalMatcher;->isLabel(Lcom/pikminx/helper/PetalMatcher$Token;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v3

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 259
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v3

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    int-to-double v5, p4

    const-wide v7, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_2

    .line 260
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, p3

    const-wide v7, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 262
    goto :goto_0

    .line 264
    :cond_3
    new-instance v0, Lcom/pikminx/helper/PetalMatcher$Token;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 266
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v1

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 267
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v7

    .line 268
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v1

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 269
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/pikminx/helper/PetalMatcher$Token;-><init>(Ljava/lang/String;IIII)V

    .line 264
    return-object v0

    .line 271
    .end local v2    # "secondLine":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_4
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

    .line 284
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 285
    .local v2, "best":Lcom/pikminx/helper/PetalMatcher$Token;
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 286
    .local v3, "bestDistance":D
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 287
    .local v6, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pikminx/helper/PetalMatcher;->parseCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 289
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v7

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v8

    .line 288
    invoke-static {v0, v1, v7, v8}, Lcom/pikminx/helper/CardHighlight;->contains(IIII)Z

    move-result v7

    if-nez v7, :cond_1

    .line 290
    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 293
    .local v7, "dx":I
    invoke-virtual/range {p1 .. p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v8

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v9

    sub-int/2addr v8, v9

    .line 294
    .local v8, "dy":I
    int-to-double v9, v7

    int-to-double v11, v0

    const-wide v13, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v11, v13

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_0

    if-ltz v8, :cond_0

    int-to-double v9, v8

    int-to-double v11, v1

    const-wide v13, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v11, v13

    cmpl-double v9, v9, v11

    if-lez v9, :cond_2

    .line 295
    goto :goto_0

    .line 297
    :cond_2
    mul-int v9, v7, v7

    mul-int v10, v8, v8

    add-int/2addr v9, v10

    int-to-double v9, v9

    .line 298
    .local v9, "distance":D
    cmpg-double v11, v9, v3

    if-gez v11, :cond_3

    .line 299
    move-object v2, v6

    .line 300
    move-wide v3, v9

    .line 302
    .end local v6    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v7    # "dx":I
    .end local v8    # "dy":I
    .end local v9    # "distance":D
    :cond_3
    goto :goto_0

    .line 303
    :cond_4
    return-object v2
.end method

.method static needsSelectionCorrection(Ljava/lang/String;Lcom/pikminx/helper/PetalMatcher$Selection;)Z
    .locals 2
    .param p0, "expectedFlower"    # Ljava/lang/String;
    .param p1, "highlighted"    # Lcom/pikminx/helper/PetalMatcher$Selection;

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-static {p0}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Selection;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0
.end method

.method static nextTarget(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "current"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 123
    .local p0, "sequence":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "currentKey":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 125
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    :cond_0
    return-object v3

    .line 124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :goto_1
    return-object v3
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 333
    invoke-static {p0}, Lcom/pikminx/helper/TextNormalizer;->normalizeForMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseCount(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .line 308
    sget-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 309
    const-string v1, "\\s*\\+\\s*"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "normalized":Ljava/lang/String;
    const-string v1, "[0-9OoIl|]"

    .line 312
    .local v1, "digitGroup":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{1,5}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "plain":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{1,3}(?:[,\\.\u00b7\'\\s]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{3})+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "grouped":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\+?(?:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\\+?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 315
    return-object v5

    .line 318
    :cond_0
    nop

    .line 319
    const/16 v4, 0x30

    const/16 v6, 0x4f

    :try_start_0
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 320
    const/16 v7, 0x6f

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 321
    const/16 v6, 0x31

    const/16 v7, 0x49

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 322
    const/16 v7, 0x6c

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 323
    const/16 v7, 0x7c

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const-string v6, "[,\\.\u00b7\'\\s+]"

    const-string v7, ""

    .line 324
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "digits":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 326
    .end local v4    # "digits":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 327
    .local v4, "ignored":Ljava/lang/NumberFormatException;
    return-object v5
.end method

.method static plantingPanelPull(II)Lcom/pikminx/helper/PetalMatcher$PanelPull;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 25
    int-to-float v0, p1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 26
    .local v0, "startY":I
    new-instance v1, Lcom/pikminx/helper/PetalMatcher$PanelPull;

    int-to-float v2, p0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 27
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, p1

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    .line 29
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v3, v0, v3

    invoke-direct {v1, v2, v0, v3}, Lcom/pikminx/helper/PetalMatcher$PanelPull;-><init>(III)V

    .line 26
    return-object v1
.end method

.method static screenSignature(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 162
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    .local v0, "ordered":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    new-instance v1, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda1;-><init>()V

    .line 164
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/pikminx/helper/PetalMatcher$$ExternalSyntheticLambda2;-><init>()V

    .line 165
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v1, "signature":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 168
    .local v3, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 170
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v5

    div-int/lit8 v5, v5, 0x18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 171
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v5

    div-int/lit8 v5, v5, 0x18

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 173
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
