.class final Lcom/pikminx/helper/RogNectarText;
.super Ljava/lang/Object;
.source "RogNectarText.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static join(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/pikminx/helper/FeedScreenAnalyzer;->allRecognizedFlowers()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/pikminx/helper/RogNectarText;->merge(Ljava/util/List;IILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static joinForTarget(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .locals 0
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

    .line 13
    invoke-static {p0, p2, p3}, Lcom/pikminx/helper/RogNectarText;->join(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static key(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 21
    const-string v0, ""

    if-nez p0, :cond_5

    move-object p0, v0

    :cond_5
    sget-object v1, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    .line 22
    const-string v1, "[\\p{Z}\\s]+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(?:\u82b1\u74e3|\u7cbe\u83ef)$"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    return-object p0
.end method

.method static merge(Ljava/util/List;IILjava/util/List;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;"
        }
    .end annotation

    .line 27
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-eqz v0, :cond_1b5

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b5

    if-lez v1, :cond_1b5

    if-gtz v2, :cond_14

    goto/16 :goto_1b5

    .line 28
    :cond_14
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 29
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/pikminx/helper/RogNectarText;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 30
    :cond_31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 32
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v7

    int-to-double v7, v7

    int-to-double v9, v2

    const-wide v11, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v11, v9

    cmpg-double v7, v7, v11

    if-ltz v7, :cond_1b0

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v7

    int-to-double v7, v7

    const-wide v11, 0x3fee666666666666L    # 0.95

    mul-double/2addr v11, v9

    cmpl-double v7, v7, v11

    if-lez v7, :cond_66

    goto :goto_3a

    .line 33
    :cond_66
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pikminx/helper/RogNectarText;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1ac

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    goto :goto_3a

    .line 35
    :cond_7b
    nop

    .line 36
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v14, 0x0

    :goto_81
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_196

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 37
    if-eq v15, v6, :cond_188

    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v13

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    int-to-double v4, v13

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v13

    move-object/from16 v18, v14

    int-to-double v13, v13

    const-wide v19, 0x3f70624dd2f1a9fcL    # 0.004

    mul-double v19, v19, v9

    sub-double v13, v13, v19

    cmpg-double v4, v4, v13

    if-ltz v4, :cond_18e

    .line 38
    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v4

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide v13, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v13, v9

    cmpl-double v4, v4, v13

    if-gtz v4, :cond_18e

    .line 39
    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v4

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide v13, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v13, v9

    cmpl-double v4, v4, v13

    if-gtz v4, :cond_18e

    .line 40
    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v4, v4, v11

    if-gtz v4, :cond_18e

    .line 41
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v4

    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    int-to-double v13, v1

    const-wide v19, 0x3fa999999999999aL    # 0.05

    mul-double v13, v13, v19

    cmpl-double v4, v4, v13

    if-lez v4, :cond_f9

    goto/16 :goto_18e

    .line 42
    :cond_f9
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v4

    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v5

    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    .line 43
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v5

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v13

    sub-int/2addr v5, v13

    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v13

    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 44
    if-lez v5, :cond_18e

    int-to-double v13, v4

    int-to-double v4, v5

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v19

    cmpg-double v4, v13, v4

    if-gez v4, :cond_135

    goto :goto_18e

    .line 45
    :cond_135
    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/RogNectarText;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_155

    goto :goto_18e

    .line 47
    :cond_155
    if-eqz v18, :cond_159

    const/4 v13, 0x0

    goto :goto_19e

    .line 48
    :cond_159
    new-instance v14, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 49
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v5

    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v22

    .line 50
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v5

    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v23

    invoke-virtual {v15}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v24

    move-object/from16 v19, v14

    move-object/from16 v20, v4

    invoke-direct/range {v19 .. v24}, Lcom/pikminx/helper/PetalMatcher$Token;-><init>(Ljava/lang/String;IIII)V

    .line 51
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_81

    .line 37
    :cond_188
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v14

    .line 36
    :cond_18e
    :goto_18e
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v14, v18

    goto/16 :goto_81

    :cond_196
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v14

    move-object/from16 v13, v18

    .line 52
    :goto_19e
    if-eqz v13, :cond_1a6

    move-object/from16 v4, v16

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a8

    :cond_1a6
    move-object/from16 v4, v16

    .line 53
    :goto_1a8
    move-object/from16 v5, v17

    goto/16 :goto_3a

    .line 34
    :cond_1ac
    move-object/from16 v17, v5

    goto/16 :goto_3a

    .line 32
    :cond_1b0
    move-object/from16 v17, v5

    goto/16 :goto_3a

    .line 54
    :cond_1b4
    return-object v4

    .line 27
    :cond_1b5
    :goto_1b5
    return-object v0
.end method
