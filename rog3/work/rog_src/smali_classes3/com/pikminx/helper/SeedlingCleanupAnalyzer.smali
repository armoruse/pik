.class final Lcom/pikminx/helper/SeedlingCleanupAnalyzer;
.super Ljava/lang/Object;
.source "SeedlingCleanupAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;,
        Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;,
        Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;,
        Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    }
.end annotation


# static fields
.field private static final CAPACITY:Ljava/util/regex/Pattern;

.field private static final COLUMN_DENOMINATOR:I = 0x6

.field private static final COLUMN_NUMERATORS:[I

.field private static final LARGE_POT_COLOR_SAMPLES:I = 0xdac

.field private static final MAX_COMPONENT_GAP_PIXELS:I = 0x12

.field private static final MIN_COMPONENT_YELLOW_SAMPLES:I = 0x19

.field private static final MIN_ROW_YELLOW_SAMPLES:I = 0x3

.field private static final SAMPLE_STEP:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    const-string v0, ".*\\d{1,3}\\s*[/\uff0f]\\s*\\d{1,3}.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->CAPACITY:Ljava/util/regex/Pattern;

    .line 20
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->COLUMN_NUMERATORS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method static analyze(Ljava/util/List;IILjava/util/function/IntBinaryOperator;)Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;
    .locals 22
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;"
        }
    .end annotation

    .line 106
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    const/16 v0, 0x12c

    const/4 v10, 0x0

    if-lt v7, v0, :cond_a

    const/16 v0, 0x258

    if-lt v8, v0, :cond_a

    if-nez v9, :cond_0

    goto/16 :goto_5

    .line 109
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->hasInventoryEvidence(Ljava/util/List;)Z

    move-result v11

    .line 110
    .local v11, "inventoryScreen":Z
    if-nez v11, :cond_1

    .line 111
    new-instance v0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v10, v1, v10}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;-><init>(ZLjava/util/List;I)V

    return-object v0

    .line 114
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 115
    .local v12, "recyclable":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;>;"
    const/4 v0, 0x0

    .line 118
    .local v0, "protectedLargeCount":I
    int-to-float v1, v8

    const v2, 0x3ef5c28f    # 0.48f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 119
    .local v13, "scanTop":I
    add-int/lit8 v1, v8, -0x1

    int-to-float v2, v8

    const v3, 0x3f6b851f    # 0.92f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 120
    .local v14, "scanBottom":I
    sget-object v6, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->COLUMN_NUMERATORS:[I

    array-length v15, v6

    move/from16 v16, v0

    move v5, v10

    .end local v0    # "protectedLargeCount":I
    .local v16, "protectedLargeCount":I
    :goto_0
    if-ge v5, v15, :cond_4

    aget v17, v6, v5

    .line 121
    .local v17, "numerator":I
    mul-int v0, v7, v17

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 122
    .local v4, "centerX":I
    move/from16 v0, p1

    move/from16 v1, p2

    move v2, v4

    move v3, v13

    move/from16 v18, v4

    .end local v4    # "centerX":I
    .local v18, "centerX":I
    move v4, v14

    move/from16 v19, v5

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->findYellowRuns(IIIIILjava/util/function/IntBinaryOperator;)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "runs":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;

    .line 125
    .local v2, "run":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;
    iget v3, v2, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;->top:I

    iget v4, v2, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;->bottom:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 126
    .local v3, "markerCenterY":I
    int-to-float v4, v8

    const v5, 0x3ccccccd    # 0.025f

    mul-float/2addr v4, v5

    .line 127
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v5, v8, -0x1

    .line 126
    invoke-static {v4, v10, v5}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->clamp(III)I

    move-result v4

    .line 128
    .local v4, "cardCenterY":I
    move/from16 v5, v18

    .end local v18    # "centerX":I
    .local v5, "centerX":I
    invoke-static {v7, v8, v5, v3, v9}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->looksLikeLargePot(IIIILjava/util/function/IntBinaryOperator;)Z

    move-result v18

    .line 130
    .local v18, "large":Z
    if-eqz v18, :cond_2

    .line 131
    add-int/lit8 v16, v16, 0x1

    .line 132
    move/from16 v18, v5

    goto :goto_1

    .line 134
    :cond_2
    move-object/from16 v20, v0

    .end local v0    # "runs":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;>;"
    .local v20, "runs":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;>;"
    new-instance v0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;

    move-object/from16 v21, v1

    iget v1, v2, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;->yellowSamples:I

    invoke-direct {v0, v5, v4, v1, v10}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;-><init>(IIIZ)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v2    # "run":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;
    .end local v3    # "markerCenterY":I
    .end local v4    # "cardCenterY":I
    .end local v18    # "large":Z
    move/from16 v18, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    goto :goto_1

    .line 124
    .end local v5    # "centerX":I
    .end local v20    # "runs":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;>;"
    .restart local v0    # "runs":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;>;"
    .local v18, "centerX":I
    :cond_3
    move-object/from16 v20, v0

    move/from16 v5, v18

    .line 120
    .end local v0    # "runs":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;>;"
    .end local v17    # "numerator":I
    .end local v18    # "centerX":I
    add-int/lit8 v5, v19, 0x1

    goto :goto_0

    .line 140
    :cond_4
    invoke-static/range {p0 .. p3}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->extractCardsFromTokens(Ljava/util/List;IILjava/util/function/IntBinaryOperator;)Ljava/util/List;

    move-result-object v15

    .line 141
    .local v15, "detectedCards":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v6, v16

    .end local v16    # "protectedLargeCount":I
    .local v6, "protectedLargeCount":I
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;

    .line 142
    .local v1, "card":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    iget-boolean v2, v1, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->isLarge:Z

    if-eqz v2, :cond_5

    .line 143
    add-int/lit8 v6, v6, 0x1

    .line 145
    .end local v1    # "card":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    :cond_5
    goto :goto_2

    .line 146
    :cond_6
    const/4 v0, 0x1

    move v5, v0

    .local v5, "i":I
    :goto_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    .line 147
    add-int/lit8 v0, v5, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;

    .line 148
    .local v4, "prev":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;

    .line 149
    .local v3, "curr":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    iget-boolean v0, v3, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->isLarge:Z

    if-nez v0, :cond_7

    iget-boolean v0, v4, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->isLarge:Z

    if-nez v0, :cond_7

    iget-object v0, v3, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v3, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->name:Ljava/lang/String;

    iget-object v1, v4, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    iget v2, v4, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerX:I

    iget v1, v4, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerY:I

    iget v0, v3, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerX:I

    iget v10, v3, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerY:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v18, v1

    move/from16 v1, p2

    move-object v9, v3

    .end local v3    # "curr":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    .local v9, "curr":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    move/from16 v3, v18

    move-object/from16 v18, v4

    .end local v4    # "prev":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    .local v18, "prev":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    move/from16 v4, v17

    move/from16 v17, v5

    .end local v5    # "i":I
    .local v17, "i":I
    move v5, v10

    move v10, v6

    .end local v6    # "protectedLargeCount":I
    .local v10, "protectedLargeCount":I
    move-object/from16 v6, p3

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->isSameDecor(IIIIIILjava/util/function/IntBinaryOperator;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 151
    invoke-interface {v12}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v9, v7, v8}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$$ExternalSyntheticLambda1;-><init>(Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 154
    .local v0, "alreadyAdded":Z
    if-nez v0, :cond_8

    .line 155
    new-instance v1, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;

    iget v2, v9, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerX:I

    iget v3, v9, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerY:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;-><init>(IIIZ)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 149
    .end local v0    # "alreadyAdded":Z
    .end local v9    # "curr":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    .end local v10    # "protectedLargeCount":I
    .end local v17    # "i":I
    .end local v18    # "prev":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    .restart local v3    # "curr":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    .restart local v4    # "prev":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    .restart local v5    # "i":I
    .restart local v6    # "protectedLargeCount":I
    :cond_7
    move-object v9, v3

    move-object/from16 v18, v4

    move/from16 v17, v5

    move v10, v6

    .line 146
    .end local v3    # "curr":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    .end local v4    # "prev":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    .end local v5    # "i":I
    .end local v6    # "protectedLargeCount":I
    .restart local v10    # "protectedLargeCount":I
    .restart local v17    # "i":I
    :cond_8
    :goto_4
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v9, p3

    move v6, v10

    const/4 v10, 0x0

    .end local v17    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .end local v10    # "protectedLargeCount":I
    .restart local v6    # "protectedLargeCount":I
    :cond_9
    move v10, v6

    .line 162
    .end local v5    # "i":I
    .end local v6    # "protectedLargeCount":I
    .restart local v10    # "protectedLargeCount":I
    new-instance v0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$$ExternalSyntheticLambda2;

    invoke-direct {v0, v8}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v12, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 171
    new-instance v0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v12, v10}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;-><init>(ZLjava/util/List;I)V

    return-object v0

    .line 107
    .end local v10    # "protectedLargeCount":I
    .end local v11    # "inventoryScreen":Z
    .end local v12    # "recyclable":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;>;"
    .end local v13    # "scanTop":I
    .end local v14    # "scanBottom":I
    .end local v15    # "detectedCards":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;>;"
    :cond_a
    :goto_5
    new-instance v0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;-><init>(ZLjava/util/List;I)V

    return-object v0
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "minimum"    # I
    .param p2, "maximum"    # I

    .line 338
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static computePageSignature(Ljava/util/List;IILjava/util/function/IntBinaryOperator;)I
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 346
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x1

    .line 347
    .local v0, "hash":I
    if-eqz p0, :cond_1

    .line 348
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 349
    .local v2, "t":Lcom/pikminx/helper/PetalMatcher$Token;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 350
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 351
    .end local v0    # "hash":I
    .local v3, "hash":I
    mul-int/lit8 v0, v3, 0x1f

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    div-int/lit8 v4, v4, 0x28

    add-int/2addr v0, v4

    .line 353
    .end local v2    # "t":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "hash":I
    .restart local v0    # "hash":I
    :cond_0
    goto :goto_0

    .line 355
    :cond_1
    if-eqz p3, :cond_3

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 356
    int-to-float v1, p2

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 357
    .local v1, "stepY":I
    int-to-float v3, p1

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 358
    .local v2, "stepX":I
    int-to-float v3, p2

    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .local v3, "y":I
    :goto_1
    int-to-float v5, p2

    const v6, 0x3f59999a    # 0.85f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-gt v3, v5, :cond_3

    .line 359
    int-to-float v5, p1

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .local v5, "x":I
    :goto_2
    int-to-float v6, p1

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-gt v5, v6, :cond_2

    .line 360
    mul-int/lit8 v6, v0, 0x1f

    invoke-interface {p3, v5, v3}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v7

    add-int v0, v6, v7

    .line 359
    add-int/2addr v5, v2

    goto :goto_2

    .line 358
    .end local v5    # "x":I
    :cond_2
    add-int/2addr v3, v1

    goto :goto_1

    .line 364
    .end local v1    # "stepY":I
    .end local v2    # "stepX":I
    .end local v3    # "y":I
    :cond_3
    return v0
.end method

.method private static extractCardsFromTokens(Ljava/util/List;IILjava/util/function/IntBinaryOperator;)Ljava/util/List;
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;",
            ">;"
        }
    .end annotation

    .line 179
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move/from16 v0, p1

    move/from16 v1, p2

    if-eqz p0, :cond_7

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 182
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 184
    .local v4, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "raw":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 186
    goto :goto_0

    .line 188
    :cond_1
    invoke-static {v5}, Lcom/pikminx/helper/TextNormalizer;->normalizeForMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 189
    .local v12, "norm":Ljava/lang/String;
    const-string v6, "\u82b1\u82d7"

    invoke-virtual {v12, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "\u82d7"

    invoke-virtual {v12, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 190
    :cond_2
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v1

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v1

    const v9, 0x3f75c28f    # 0.96f

    mul-float/2addr v7, v9

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    .line 191
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    int-to-float v7, v0

    div-float/2addr v6, v7

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v8, 0x2

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 192
    .local v13, "col":I
    sget-object v6, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->COLUMN_NUMERATORS:[I

    aget v6, v6, v13

    mul-int/2addr v6, v0

    int-to-float v6, v6

    const/high16 v8, 0x40c00000    # 6.0f

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 193
    .local v14, "centerX":I
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v6

    int-to-float v8, v1

    const v9, 0x3dae147b    # 0.085f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int v15, v6, v8

    .line 194
    .local v15, "cardCenterY":I
    const-string v6, "\u5927\u82b1\u82d7"

    invoke-virtual {v12, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 195
    move-object/from16 v10, p3

    invoke-static {v0, v1, v14, v15, v10}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->looksLikeLargePot(IIIILjava/util/function/IntBinaryOperator;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v11, v7

    goto :goto_2

    .line 194
    :cond_4
    move-object/from16 v10, p3

    .line 195
    :goto_1
    const/4 v6, 0x1

    move v11, v6

    .line 196
    .local v11, "large":Z
    :goto_2
    new-instance v9, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;

    move-object v6, v9

    move v7, v13

    move v8, v14

    move-object v0, v9

    move v9, v15

    move-object v10, v12

    invoke-direct/range {v6 .. v11}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;-><init>(IIILjava/lang/String;Z)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v4    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v5    # "raw":Ljava/lang/String;
    .end local v11    # "large":Z
    .end local v12    # "norm":Ljava/lang/String;
    .end local v13    # "col":I
    .end local v14    # "centerX":I
    .end local v15    # "cardCenterY":I
    :cond_5
    move/from16 v0, p1

    goto/16 :goto_0

    .line 200
    :cond_6
    new-instance v0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 208
    return-object v2

    .line 180
    .end local v2    # "cards":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;>;"
    :cond_7
    :goto_3
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static findYellowRuns(IIIIILjava/util/function/IntBinaryOperator;)Ljava/util/List;
    .locals 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "centerX"    # I
    .param p3, "scanTop"    # I
    .param p4, "scanBottom"    # I
    .param p5, "pixelAt"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/function/IntBinaryOperator;",
            ")",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;",
            ">;"
        }
    .end annotation

    .line 267
    int-to-float v0, p0

    const v1, 0x3d0f5c29    # 0.035f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v1, p0, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->clamp(III)I

    move-result v0

    .line 268
    .local v0, "left":I
    int-to-float v1, p0

    const v2, 0x3e28f5c3    # 0.165f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2, p0}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->clamp(III)I

    move-result v1

    .line 269
    .local v1, "right":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;>;"
    const/4 v3, 0x0

    .line 271
    .local v3, "current":Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;
    const/high16 v4, -0x80000000

    .line 272
    .local v4, "lastActiveY":I
    move v5, p3

    .local v5, "y":I
    :goto_0
    const/16 v6, 0x19

    if-gt v5, p4, :cond_6

    .line 273
    const/4 v7, 0x0

    .line 274
    .local v7, "rowSamples":I
    move v8, v0

    .local v8, "x":I
    :goto_1
    if-ge v8, v1, :cond_1

    .line 275
    invoke-interface {p5, v8, v5}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    invoke-static {v9}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->isDuplicateYellow(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 276
    add-int/lit8 v7, v7, 0x1

    .line 274
    :cond_0
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 279
    .end local v8    # "x":I
    :cond_1
    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    .line 280
    goto :goto_4

    .line 282
    :cond_2
    if-eqz v3, :cond_4

    sub-int v8, v5, v4

    const/16 v9, 0x12

    if-le v8, v9, :cond_3

    goto :goto_2

    .line 288
    :cond_3
    iput v5, v3, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;->bottom:I

    .line 289
    iget v6, v3, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;->yellowSamples:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;->yellowSamples:I

    goto :goto_3

    .line 283
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    iget v8, v3, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;->yellowSamples:I

    if-lt v8, v6, :cond_5

    .line 284
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_5
    new-instance v6, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;

    invoke-direct {v6, v5, v5, v7}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;-><init>(III)V

    move-object v3, v6

    .line 291
    :goto_3
    move v4, v5

    .line 272
    .end local v7    # "rowSamples":I
    :goto_4
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 293
    .end local v5    # "y":I
    :cond_6
    if-eqz v3, :cond_7

    iget v5, v3, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;->yellowSamples:I

    if-lt v5, v6, :cond_7

    .line 294
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_7
    return-object v2
.end method

.method private static hasInventoryEvidence(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)Z"
        }
    .end annotation

    .line 244
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 247
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 248
    .local v2, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "raw":Ljava/lang/String;
    invoke-static {v3}, Lcom/pikminx/helper/TextNormalizer;->normalizeForMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "text":Ljava/lang/String;
    const-string v5, "\u82b1\u82d7"

    invoke-static {v5}, Lcom/pikminx/helper/TextNormalizer;->normalizeForMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 251
    const-string v5, "\u98fe\u54c1"

    invoke-static {v5}, Lcom/pikminx/helper/TextNormalizer;->normalizeForMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 252
    const-string v5, "\u76c6\u683d"

    invoke-static {v5}, Lcom/pikminx/helper/TextNormalizer;->normalizeForMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->CAPACITY:Ljava/util/regex/Pattern;

    .line 253
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 256
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "raw":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 254
    .restart local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .restart local v3    # "raw":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 257
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "raw":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_3
    return v0

    .line 245
    :cond_4
    :goto_2
    return v0
.end method

.method private static isDuplicateYellow(I)Z
    .locals 5
    .param p0, "color"    # I

    .line 327
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 328
    .local v0, "red":I
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 329
    .local v1, "green":I
    and-int/lit16 v2, p0, 0xff

    .line 330
    .local v2, "blue":I
    const/16 v3, 0xcd

    if-lt v0, v3, :cond_0

    const/16 v3, 0xb4

    if-lt v1, v3, :cond_0

    const/16 v3, 0xb9

    if-gt v2, v3, :cond_0

    sub-int v3, v0, v2

    const/16 v4, 0x28

    if-lt v3, v4, :cond_0

    sub-int v3, v1, v2

    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isSameDecor(IIIIIILjava/util/function/IntBinaryOperator;)Z
    .locals 16
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "cx1"    # I
    .param p3, "cy1"    # I
    .param p4, "cx2"    # I
    .param p5, "cy2"    # I
    .param p6, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 219
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    int-to-float v3, v0

    const v4, 0x3d23d70a    # 0.04f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 220
    .local v3, "xOffsetStart":I
    int-to-float v4, v0

    const v5, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 221
    .local v4, "xOffsetEnd":I
    int-to-float v5, v1

    const v6, 0x3d851eb8    # 0.065f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    neg-int v5, v5

    .line 222
    .local v5, "yOffsetStart":I
    int-to-float v6, v1

    const v7, 0x3ba3d70a    # 0.005f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    neg-int v6, v6

    .line 223
    .local v6, "yOffsetEnd":I
    const/4 v7, 0x3

    .line 224
    .local v7, "sampleStep":I
    const/4 v8, 0x0

    .line 225
    .local v8, "totalSamples":I
    const/4 v9, 0x0

    .line 226
    .local v9, "diffSum":I
    move v10, v5

    .local v10, "dy":I
    :goto_0
    const/4 v11, 0x0

    if-gt v10, v6, :cond_1

    .line 227
    move v12, v3

    .local v12, "dx":I
    :goto_1
    if-gt v12, v4, :cond_0

    .line 228
    add-int v13, p2, v12

    add-int/lit8 v14, v0, -0x1

    invoke-static {v13, v11, v14}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->clamp(III)I

    move-result v13

    add-int v14, p3, v10

    add-int/lit8 v15, v1, -0x1

    invoke-static {v14, v11, v15}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->clamp(III)I

    move-result v14

    invoke-interface {v2, v13, v14}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v13

    .line 229
    .local v13, "c1":I
    add-int v14, p4, v12

    add-int/lit8 v15, v0, -0x1

    invoke-static {v14, v11, v15}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->clamp(III)I

    move-result v14

    add-int v15, p5, v10

    add-int/lit8 v0, v1, -0x1

    invoke-static {v15, v11, v0}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->clamp(III)I

    move-result v0

    invoke-interface {v2, v14, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    .line 230
    .local v0, "c2":I
    ushr-int/lit8 v14, v13, 0x10

    and-int/lit16 v14, v14, 0xff

    ushr-int/lit8 v15, v13, 0x8

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    and-int/lit16 v15, v13, 0xff

    add-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x3

    .line 231
    .local v14, "gray1":I
    ushr-int/lit8 v15, v0, 0x10

    and-int/lit16 v15, v15, 0xff

    ushr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v15, v11

    and-int/lit16 v11, v0, 0xff

    add-int/2addr v15, v11

    div-int/lit8 v15, v15, 0x3

    .line 232
    .local v15, "gray2":I
    sub-int v11, v14, v15

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v9, v11

    .line 233
    nop

    .end local v0    # "c2":I
    .end local v13    # "c1":I
    .end local v14    # "gray1":I
    .end local v15    # "gray2":I
    add-int/lit8 v8, v8, 0x1

    .line 227
    add-int/2addr v12, v7

    const/4 v11, 0x0

    move/from16 v0, p0

    goto :goto_1

    .line 226
    .end local v12    # "dx":I
    :cond_0
    add-int/2addr v10, v7

    move/from16 v0, p0

    goto :goto_0

    .line 236
    .end local v10    # "dy":I
    :cond_1
    if-nez v8, :cond_2

    .line 237
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_2
    const/4 v0, 0x0

    int-to-double v10, v9

    int-to-double v12, v8

    div-double/2addr v10, v12

    .line 240
    .local v10, "avgDiff":D
    const-wide/high16 v12, 0x402c000000000000L    # 14.0

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method static synthetic lambda$analyze$0(Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;IILcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;)Z
    .locals 3
    .param p0, "curr"    # Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "c"    # Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;

    .line 152
    invoke-virtual {p3}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->centerX()I

    move-result v0

    iget v1, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 153
    invoke-virtual {p3}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->centerY()I

    move-result v0

    iget v1, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerY:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    const v2, 0x3d75c28f    # 0.06f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0
.end method

.method static synthetic lambda$analyze$1(ILcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;)I
    .locals 4
    .param p0, "height"    # I
    .param p1, "a"    # Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;
    .param p2, "b"    # Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;

    .line 163
    invoke-virtual {p1}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->centerY()I

    move-result v0

    div-int/lit8 v1, p0, 0xa

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/2addr v0, v1

    .line 164
    .local v0, "rowA":I
    invoke-virtual {p2}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->centerY()I

    move-result v1

    div-int/lit8 v3, p0, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v1, v2

    .line 165
    .local v1, "rowB":I
    if-eq v0, v1, :cond_0

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->centerX()I

    move-result v2

    invoke-virtual {p2}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->centerX()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method static synthetic lambda$extractCardsFromTokens$2(ILcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;)I
    .locals 4
    .param p0, "height"    # I
    .param p1, "a"    # Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
    .param p2, "b"    # Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;

    .line 201
    iget v0, p1, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerY:I

    div-int/lit8 v1, p0, 0xa

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/2addr v0, v1

    .line 202
    .local v0, "rowA":I
    iget v1, p2, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerY:I

    div-int/lit8 v3, p0, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v1, v2

    .line 203
    .local v1, "rowB":I
    if-eq v0, v1, :cond_0

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2

    .line 206
    :cond_0
    iget v2, p1, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerX:I

    iget v3, p2, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerX:I

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method private static looksLikeLargePot(IIIILjava/util/function/IntBinaryOperator;)Z
    .locals 16
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "centerX"    # I
    .param p3, "markerCenterY"    # I
    .param p4, "pixelAt"    # Ljava/util/function/IntBinaryOperator;

    .line 305
    move/from16 v0, p0

    move/from16 v1, p1

    int-to-float v2, v0

    const v3, 0x3e051eb8    # 0.13f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->clamp(III)I

    move-result v2

    .line 306
    .local v2, "left":I
    int-to-float v4, v0

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v3, p2, v3

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v4, v0}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->clamp(III)I

    move-result v3

    .line 307
    .local v3, "right":I
    int-to-float v4, v1

    const v6, 0x3d54fdf4    # 0.052f

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, p3, v4

    add-int/lit8 v6, v1, -0x1

    invoke-static {v4, v5, v6}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->clamp(III)I

    move-result v4

    .line 308
    .local v4, "top":I
    int-to-float v6, v1

    const v7, 0x3d656042    # 0.056f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int v6, p3, v6

    add-int/lit8 v7, v4, 0x1

    invoke-static {v6, v7, v1}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->clamp(III)I

    move-result v6

    .line 309
    .local v6, "bottom":I
    const/4 v7, 0x0

    .line 310
    .local v7, "colored":I
    move v8, v4

    .local v8, "y":I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 311
    move v9, v2

    .local v9, "x":I
    :goto_1
    if-ge v9, v3, :cond_1

    .line 312
    move-object/from16 v10, p4

    invoke-interface {v10, v9, v8}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v11

    .line 313
    .local v11, "color":I
    ushr-int/lit8 v12, v11, 0x10

    and-int/lit16 v12, v12, 0xff

    .line 314
    .local v12, "red":I
    ushr-int/lit8 v13, v11, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 315
    .local v13, "green":I
    and-int/lit16 v14, v11, 0xff

    .line 316
    .local v14, "blue":I
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 317
    .local v15, "maximum":I
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 318
    .local v5, "minimum":I
    sub-int v0, v15, v5

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    const/16 v0, 0xeb

    if-ge v5, v0, :cond_0

    .line 319
    add-int/lit8 v7, v7, 0x1

    .line 311
    .end local v5    # "minimum":I
    .end local v11    # "color":I
    .end local v12    # "red":I
    .end local v13    # "green":I
    .end local v14    # "blue":I
    .end local v15    # "maximum":I
    :cond_0
    add-int/lit8 v9, v9, 0x2

    const/4 v5, 0x0

    move/from16 v0, p0

    move/from16 v1, p1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p4

    .line 310
    .end local v9    # "x":I
    add-int/lit8 v8, v8, 0x2

    const/4 v5, 0x0

    move/from16 v0, p0

    move/from16 v1, p1

    goto :goto_0

    :cond_2
    move-object/from16 v10, p4

    .line 323
    .end local v8    # "y":I
    const/16 v0, 0xdac

    if-lt v7, v0, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    return v5
.end method
