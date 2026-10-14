.class final Lcom/pikminx/helper/FeedScreenAnalyzer;
.super Ljava/lang/Object;
.source "FeedScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/FeedScreenAnalyzer$ZoomOutPinch;,
        Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;,
        Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;,
        Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;,
        Lcom/pikminx/helper/FeedScreenAnalyzer$NectarStock;,
        Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;,
        Lcom/pikminx/helper/FeedScreenAnalyzer$FeedRoundStatistics;,
        Lcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;,
        Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;,
        Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;,
        Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;
    }
.end annotation


# static fields
.field private static final RECOGNIZED_FLOWERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FHDhLPT69Ew873Hlpidn1NHGgKM(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 421
    invoke-static {}, Lcom/pikminx/helper/FeedScreenAnalyzer;->buildRecognizedFlowers()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/FeedScreenAnalyzer;->RECOGNIZED_FLOWERS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allRecognizedFlowers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 451
    sget-object v0, Lcom/pikminx/helper/FeedScreenAnalyzer;->RECOGNIZED_FLOWERS:Ljava/util/List;

    return-object v0
.end method

.method private static buildRecognizedFlowers()Ljava/util/List;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 425
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/pikminx/helper/PostcardPotCatalog;->allNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 426
    const-string v2, "\u7f8e\u4eba\u8549"

    const-string v3, "\u96de\u51a0\u82b1"

    const-string v4, "\u4e5d\u91cd\u845b"

    const-string v5, "\u5929\u5802\u9ce5"

    const-string v6, "\u7261\u4e39"

    const-string v7, "\u7761\u84ee"

    const-string v8, "\u727d\u725b\u82b1"

    const-string v9, "\u6cb9\u83dc\u82b1"

    const-string v10, "\u5eb7\u4e43\u99a8"

    const-string v11, "\u9435\u7dda\u84ee"

    const-string v12, "\u52ff\u5fd8\u8349"

    const-string v13, "\u6276\u6851\u82b1"

    const-string v14, "\u4e09\u8272\u5807"

    const-string v15, "\u8c4c\u8c46\u82b1"

    const-string v16, "\u8774\u8776\u862d"

    const-string v17, "\u66c7\u82b1"

    const-string v18, "\u767e\u5408"

    const-string v19, "\u5f7c\u5cb8\u82b1"

    const-string v20, "\u6885\u82b1"

    const-string v21, "\u98a8\u4fe1\u5b50"

    const-string v22, "\u98a8\u9234\u8349"

    const-string v23, "\u5927\u6ce2\u65af\u83ca"

    const-string v24, "\u5927\u7406\u82b1"

    const-string v25, "\u5154\u8033\u82b1"

    const-string v26, "\u9234\u862d"

    const-string v27, "\u9f8d\u81bd"

    const-string v28, "\u6d77\u828b"

    const-string v29, "\u91d1\u9b5a\u8349"

    const-string v30, "\u83ca\u82b1"

    const-string v31, "\u5c0f\u84bc\u862d"

    const-string v32, "\u7e61\u7403\u82b1"

    const-string v33, "\u96ea\u82b1\u84ee"

    const-string v34, "\u9031\u5e74\u7d00\u5ff5\u73ab\u7470"

    const-string v35, "\u5c71\u8336\u82b1"

    const-string v36, "\u77f3\u7af9"

    const-string v37, "\u9f20\u5c3e\u8349"

    const-string v38, "\u6c34\u4ed9\u82b1"

    const-string v39, "\u8056\u8a95\u7d05"

    const-string v40, "\u8056\u8a95\u73ab\u7470"

    const-string v41, "\u6afb\u82b1"

    const-string v42, "\u6afb\u8349\u82b1"

    const-string v43, "\u9e1a\u9d61\u9b31\u91d1\u9999"

    const-string v44, "\u9280\u84ee\u82b1"

    const-string v45, "\u842c\u58fd\u83ca"

    const-string v46, "\u9cf6\u5c3e\u82b1"

    const-string v47, "\u77ee\u727d\u725b"

    const-string v48, "\u5411\u65e5\u8475"

    const-string v49, "\u73ab\u7470"

    const-string v50, "\u9b31\u91d1\u9999"

    const-string v51, "\u6d0b\u7518\u83ca"

    const-string v52, "\u9280\u674f"

    const-string v53, "\u6d0b\u6854\u6897"

    filled-new-array/range {v2 .. v53}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 433
    .local v1, "species":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 434
    const-string v2, "\u7d05\u8272"

    const-string v3, "\u85cd\u8272"

    const-string v4, "\u767d\u8272"

    const-string v5, "\u9ec3\u8272"

    invoke-static {v4, v5, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 435
    .local v3, "c":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5411\u65e5\u8475"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u6afb\u82b1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u73ab\u7470"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u9b31\u91d1\u9999"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u6d0b\u6854\u6897"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u7cbe\u83ef"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v3    # "c":Ljava/lang/String;
    goto/16 :goto_0

    .line 442
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 443
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 447
    invoke-static {v2}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method static canonicalNectarName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "raw"    # Ljava/lang/String;

    .line 455
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 456
    return-object v0

    .line 458
    :cond_0
    invoke-static {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer;->normalizeFlowerOcr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "norm":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    return-object v0

    .line 463
    :cond_1
    const-string v2, "\u7cbe\u83ef"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "\u767d\u8272\u7cbe\u83ef"

    if-nez v3, :cond_16

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "\u767d\u7cbe\u83ef"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_8

    .line 466
    :cond_2
    const-string v3, "\u9ec3\u8272\u7cbe\u83ef"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "\u9ec3\u7cbe\u83ef"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_7

    .line 469
    :cond_3
    const-string v3, "\u7d05\u8272\u7cbe\u83ef"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "\u7d05\u7cbe\u83ef"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_6

    .line 472
    :cond_4
    const-string v3, "\u85cd\u8272\u7cbe\u83ef"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "\u85cd\u7cbe\u83ef"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_5

    .line 475
    :cond_5
    const-string v3, "\u7279\u6b8a\u7cbe\u83ef"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "\u7279\u6b8a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_4

    .line 479
    :cond_6
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u82b1\u74e3"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "flowerOnly":Ljava/lang/String;
    const-string v3, "\u5411\u65e5\u8475"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "\u9ec3\u8272\u5411\u65e5\u8475"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "\u767d\u8272\u5411\u65e5\u8475"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_3

    .line 483
    :cond_7
    const-string v3, "\u6afb\u82b1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "\u767d\u8272\u6afb\u82b1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto/16 :goto_2

    .line 487
    :cond_8
    invoke-static {v2}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "canonical":Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 489
    return-object v3

    .line 491
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    if-eqz v3, :cond_a

    .line 493
    return-object v3

    .line 496
    :cond_a
    invoke-static {}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->values()[Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_c

    aget-object v7, v4, v6

    .line 497
    .local v7, "color":Lcom/pikminx/helper/PostcardPotCatalog$Color;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 498
    return-object v2

    .line 496
    .end local v7    # "color":Lcom/pikminx/helper/PostcardPotCatalog$Color;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 501
    :cond_c
    const-string v4, "\u7d05\u8272"

    const-string v5, "\u85cd\u8272"

    const-string v6, "\u767d\u8272"

    const-string v7, "\u9ec3\u8272"

    invoke-static {v6, v7, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 502
    .local v5, "c":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 503
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 504
    .local v6, "sub":Ljava/lang/String;
    sget-object v7, Lcom/pikminx/helper/FeedScreenAnalyzer;->RECOGNIZED_FLOWERS:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 508
    .end local v5    # "c":Ljava/lang/String;
    .end local v6    # "sub":Ljava/lang/String;
    :cond_d
    goto :goto_1

    .line 509
    :cond_e
    sget-object v4, Lcom/pikminx/helper/FeedScreenAnalyzer;->RECOGNIZED_FLOWERS:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 510
    return-object v2

    .line 512
    :cond_f
    return-object v0

    .line 484
    .end local v3    # "canonical":Ljava/lang/String;
    :cond_10
    :goto_2
    return-object v3

    .line 481
    :cond_11
    :goto_3
    return-object v3

    .line 476
    .end local v2    # "flowerOnly":Ljava/lang/String;
    :cond_12
    :goto_4
    return-object v0

    .line 473
    :cond_13
    :goto_5
    return-object v3

    .line 470
    :cond_14
    :goto_6
    return-object v3

    .line 467
    :cond_15
    :goto_7
    return-object v3

    .line 464
    :cond_16
    :goto_8
    return-object v4
.end method

.method static capture(IILcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;)Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;
    .locals 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelReader"    # Lcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;

    .line 900
    const/16 v0, 0x1440

    new-array v0, v0, [I

    .line 901
    .local v0, "pixels":[I
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_0
    const/16 v2, 0x48

    if-ge v1, v2, :cond_1

    .line 902
    const/high16 v3, 0x428e0000    # 71.0f

    .line 903
    .local v3, "maxRow":F
    add-int/lit8 v4, p1, -0x1

    int-to-float v5, p1

    int-to-float v6, v1

    const v7, 0x3f147ae1    # 0.58f

    mul-float/2addr v6, v7

    div-float/2addr v6, v3

    const v7, 0x3e4ccccd    # 0.2f

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 904
    .local v4, "y":I
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 905
    add-int/lit8 v6, p0, -0x1

    int-to-float v7, p0

    int-to-float v8, v5

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    div-float/2addr v8, v3

    const v9, 0x3dcccccd    # 0.1f

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 906
    .local v6, "x":I
    mul-int/lit8 v7, v1, 0x48

    add-int/2addr v7, v5

    invoke-interface {p2, v6, v4}, Lcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;->get(II)I

    move-result v8

    aput v8, v0, v7

    .line 904
    .end local v6    # "x":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 901
    .end local v3    # "maxRow":F
    .end local v4    # "y":I
    .end local v5    # "col":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 909
    .end local v1    # "row":I
    :cond_1
    new-instance v1, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;

    invoke-direct {v1, v2, v2, v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;-><init>(II[I)V

    return-object v1
.end method

.method private static cardNumber(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 1177
    if-nez p0, :cond_0

    .line 1178
    const-string p0, ""

    .line 1180
    :cond_0
    sget-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*\\+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static consumedNectar(II)Ljava/lang/Integer;
    .locals 1
    .param p0, "initialNectar"    # I
    .param p1, "remainingNectar"    # I

    .line 691
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    if-le p1, p0, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    sub-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 692
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static currentGardenPetalCount(Ljava/util/List;II)Ljava/lang/Integer;
    .locals 19
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 124
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move/from16 v0, p1

    move/from16 v1, p2

    if-eqz p0, :cond_7

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    if-lez v0, :cond_7

    if-gtz v1, :cond_0

    goto/16 :goto_4

    .line 127
    :cond_0
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 128
    .local v3, "minDistanceSq":D
    const/4 v5, 0x0

    .line 129
    .local v5, "bestToken":Lcom/pikminx/helper/PetalMatcher$Token;
    int-to-float v6, v0

    const v7, 0x3f63d70a    # 0.89f

    mul-float/2addr v6, v7

    .line 130
    .local v6, "targetX":F
    int-to-float v7, v1

    const v8, 0x3f3851ec    # 0.72f

    mul-float/2addr v7, v8

    .line 131
    .local v7, "targetY":F
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 132
    .local v9, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 133
    .local v10, "val":Ljava/lang/Integer;
    if-eqz v10, :cond_3

    .line 134
    int-to-float v11, v0

    .line 135
    .local v11, "w":F
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f47ae14    # 0.78f

    mul-float/2addr v13, v11

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_2

    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f7ae148    # 0.98f

    mul-float/2addr v13, v11

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_2

    .line 136
    int-to-float v12, v1

    .line 137
    .local v12, "h":F
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3f2b851f    # 0.67f

    mul-float/2addr v14, v12

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_1

    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3f451eb8    # 0.77f

    mul-float/2addr v14, v12

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_1

    .line 138
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v13

    int-to-double v13, v13

    move-wide v15, v3

    .end local v3    # "minDistanceSq":D
    .local v15, "minDistanceSq":D
    float-to-double v2, v6

    sub-double/2addr v13, v2

    .line 139
    .local v13, "dx":D
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v2

    int-to-double v2, v2

    float-to-double v0, v7

    sub-double/2addr v2, v0

    .line 140
    .local v2, "dy":D
    mul-double v0, v13, v13

    mul-double v17, v2, v2

    add-double v0, v0, v17

    .line 141
    .local v0, "distSq":D
    cmpg-double v4, v0, v15

    if-gez v4, :cond_4

    .line 142
    move-object v4, v9

    .line 143
    .end local v5    # "bestToken":Lcom/pikminx/helper/PetalMatcher$Token;
    .local v4, "bestToken":Lcom/pikminx/helper/PetalMatcher$Token;
    move-wide v15, v0

    move-object v5, v4

    move-wide v3, v15

    goto :goto_2

    .line 137
    .end local v0    # "distSq":D
    .end local v2    # "dy":D
    .end local v4    # "bestToken":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v13    # "dx":D
    .end local v15    # "minDistanceSq":D
    .restart local v3    # "minDistanceSq":D
    .restart local v5    # "bestToken":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_1
    move-wide v15, v3

    .end local v3    # "minDistanceSq":D
    .restart local v15    # "minDistanceSq":D
    goto :goto_1

    .line 135
    .end local v12    # "h":F
    .end local v15    # "minDistanceSq":D
    .restart local v3    # "minDistanceSq":D
    :cond_2
    move-wide v15, v3

    .end local v3    # "minDistanceSq":D
    .restart local v15    # "minDistanceSq":D
    goto :goto_1

    .line 133
    .end local v11    # "w":F
    .end local v15    # "minDistanceSq":D
    .restart local v3    # "minDistanceSq":D
    :cond_3
    move-wide v15, v3

    .line 148
    .end local v3    # "minDistanceSq":D
    .end local v9    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v10    # "val":Ljava/lang/Integer;
    .restart local v15    # "minDistanceSq":D
    :cond_4
    :goto_1
    move-wide v3, v15

    .end local v15    # "minDistanceSq":D
    .restart local v3    # "minDistanceSq":D
    :goto_2
    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_0

    .line 149
    :cond_5
    move-wide v15, v3

    .end local v3    # "minDistanceSq":D
    .restart local v15    # "minDistanceSq":D
    if-nez v5, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    return-object v2

    .line 125
    .end local v5    # "bestToken":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v6    # "targetX":F
    .end local v7    # "targetY":F
    .end local v15    # "minDistanceSq":D
    :cond_7
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method static currentNectarCount(Ljava/util/List;II)Ljava/lang/Integer;
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 98
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move/from16 v0, p1

    move/from16 v1, p2

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 99
    .local v2, "minDistanceSq":D
    const/4 v4, 0x0

    .line 100
    .local v4, "bestToken":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 101
    .local v6, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 102
    int-to-float v7, v0

    .line 103
    .local v7, "w":F
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3eae147b    # 0.34f

    mul-float/2addr v9, v7

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v9, v7

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 104
    int-to-float v8, v1

    .line 105
    .local v8, "h":F
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f47ae14    # 0.78f

    mul-float/2addr v10, v8

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_0

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f7ae148    # 0.98f

    mul-float/2addr v10, v8

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_0

    .line 106
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v9

    int-to-double v9, v9

    int-to-double v11, v0

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    .line 107
    .local v9, "dx":D
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v11

    int-to-double v11, v11

    int-to-double v13, v1

    const-wide v15, 0x3fec28f5c28f5c29L    # 0.88

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    .line 108
    .local v11, "dy":D
    mul-double v13, v9, v9

    mul-double v15, v11, v11

    add-double/2addr v13, v15

    .line 109
    .local v13, "distSq":D
    cmpg-double v15, v13, v2

    if-gez v15, :cond_0

    .line 110
    move-object v4, v6

    .line 111
    move-wide v2, v13

    .line 116
    .end local v6    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v7    # "w":F
    .end local v8    # "h":F
    .end local v9    # "dx":D
    .end local v11    # "dy":D
    .end local v13    # "distSq":D
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    if-nez v4, :cond_2

    .line 118
    const/4 v5, 0x0

    return-object v5

    .line 120
    :cond_2
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    return-object v5
.end method

.method static ellipticalSpiral(III)Ljava/util/List;
    .locals 20
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "segments"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;",
            ">;"
        }
    .end annotation

    .line 284
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-lez v0, :cond_3

    if-lez v1, :cond_3

    if-gtz v2, :cond_0

    goto/16 :goto_2

    .line 287
    :cond_0
    int-to-float v3, v0

    .line 288
    .local v3, "w":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 289
    .local v4, "centerX":I
    int-to-float v5, v1

    .line 290
    .local v5, "h":F
    const v6, 0x3f0a3d71    # 0.54f

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 291
    .local v6, "centerY":I
    const v7, 0x3eb851ec    # 0.36f

    mul-float/2addr v7, v3

    .line 292
    .local v7, "radiusX":F
    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v8, v5

    .line 293
    .local v8, "radiusY":F
    new-instance v9, Ljava/util/ArrayList;

    add-int/lit8 v10, v2, 0x7

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .local v9, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const-wide v11, 0x403f6a7a2955385eL    # 31.41592653589793

    if-gt v10, v2, :cond_1

    .line 295
    int-to-float v13, v10

    int-to-float v14, v2

    div-float/2addr v13, v14

    .line 296
    .local v13, "progress":F
    float-to-double v14, v13

    mul-double/2addr v14, v11

    .line 297
    .local v14, "angle":D
    new-instance v11, Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;

    int-to-float v12, v4

    mul-float v16, v7, v13

    .line 298
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v16, v16, v0

    add-float v12, v12, v16

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v6

    mul-float v12, v13, v8

    .line 299
    move/from16 v16, v7

    move/from16 v17, v8

    .end local v7    # "radiusX":F
    .end local v8    # "radiusY":F
    .local v16, "radiusX":F
    .local v17, "radiusY":F
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v12, v7

    add-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v11, v0, v1}, Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;-><init>(II)V

    .line 297
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v13    # "progress":F
    .end local v14    # "angle":D
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v7, v16

    move/from16 v8, v17

    goto :goto_0

    .end local v16    # "radiusX":F
    .end local v17    # "radiusY":F
    .restart local v7    # "radiusX":F
    .restart local v8    # "radiusY":F
    :cond_1
    move/from16 v16, v7

    move/from16 v17, v8

    .line 302
    .end local v7    # "radiusX":F
    .end local v8    # "radiusY":F
    .end local v10    # "i":I
    .restart local v16    # "radiusX":F
    .restart local v17    # "radiusY":F
    const v0, 0x3ec28f5c    # 0.38f

    mul-float/2addr v0, v3

    .line 303
    .local v0, "outerX":F
    const v1, 0x3e851eb8    # 0.26f

    mul-float/2addr v1, v5

    .line 304
    .local v1, "outerY":F
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_1
    const/4 v8, 0x6

    if-gt v7, v8, :cond_2

    .line 305
    int-to-double v13, v7

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v13, v13, v18

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    div-double v13, v13, v18

    add-double/2addr v13, v11

    .line 306
    .local v13, "outerAngle":D
    new-instance v8, Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;

    int-to-float v10, v4

    .line 307
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v0

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v11, v6

    .line 308
    move v12, v3

    .end local v3    # "w":F
    .local v12, "w":F
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v8, v10, v2}, Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;-><init>(II)V

    .line 306
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v13    # "outerAngle":D
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p2

    move v3, v12

    const-wide v11, 0x403f6a7a2955385eL    # 31.41592653589793

    goto :goto_1

    .line 310
    .end local v7    # "j":I
    .end local v12    # "w":F
    .restart local v3    # "w":F
    :cond_2
    invoke-static {v9}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 285
    .end local v0    # "outerX":F
    .end local v1    # "outerY":F
    .end local v3    # "w":F
    .end local v4    # "centerX":I
    .end local v5    # "h":F
    .end local v6    # "centerY":I
    .end local v9    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;>;"
    .end local v16    # "radiusX":F
    .end local v17    # "radiusY":F
    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static ellipticalSpiralFromTarget(IIILcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;)Ljava/util/List;
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "segments"    # I
    .param p3, "bloomTarget"    # Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;",
            ")",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;",
            ">;"
        }
    .end annotation

    .line 644
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->x()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p3}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->x()I

    move-result v0

    if-ge v0, p0, :cond_2

    invoke-virtual {p3}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->y()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p3}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->y()I

    move-result v0

    if-lt v0, p1, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, p1, p2}, Lcom/pikminx/helper/FeedScreenAnalyzer;->ellipticalSpiral(III)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 648
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 651
    :cond_1
    new-instance v1, Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;

    invoke-virtual {p3}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->x()I

    move-result v2

    invoke-virtual {p3}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->y()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 645
    .end local v0    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pikminx/helper/FeedScreenAnalyzer$SpiralPoint;>;"
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static estimateFlowerX(Lcom/pikminx/helper/PetalMatcher$Token;IIII)I
    .locals 4
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "matchIdx"    # I
    .param p2, "matchLen"    # I
    .param p3, "totalLen"    # I
    .param p4, "width"    # I

    .line 518
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 519
    .local v0, "tokenWidth":I
    int-to-float v1, v0

    int-to-float v2, p4

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 523
    .local v1, "relCenter":F
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 520
    .end local v1    # "relCenter":F
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v1

    return v1
.end method

.method static extractFlowersFromToken(Lcom/pikminx/helper/PetalMatcher$Token;II)Ljava/util/List;
    .locals 13
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            "II)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;",
            ">;"
        }
    .end annotation

    .line 542
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer;->canonicalNectarName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "single":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 548
    new-instance v2, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;-><init>(Ljava/lang/String;II)V

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 551
    :cond_1
    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer;->normalizeFlowerOcr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "norm":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 553
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 556
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [Z

    .line 560
    .local v5, "used":[Z
    const-string v6, "\u7d05\u8272\u7cbe\u83ef"

    const-string v7, "\u85cd\u8272\u7cbe\u83ef"

    const-string v8, "\u767d\u8272\u7cbe\u83ef"

    const-string v9, "\u9ec3\u8272\u7cbe\u83ef"

    invoke-static {v8, v9, v6, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 561
    .local v7, "basic":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 562
    .local v9, "idx":I
    if-ltz v9, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v5, v9, v10}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isRangeUsed([ZII)Z

    move-result v10

    if-nez v10, :cond_3

    .line 563
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v5, v9, v10}, Lcom/pikminx/helper/FeedScreenAnalyzer;->markRangeUsed([ZII)V

    .line 564
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {p0, v9, v10, v11, p1}, Lcom/pikminx/helper/FeedScreenAnalyzer;->estimateFlowerX(Lcom/pikminx/helper/PetalMatcher$Token;IIII)I

    move-result v10

    .line 565
    .local v10, "fx":I
    new-instance v11, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v12

    invoke-direct {v11, v7, v10, v12}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v7    # "basic":Ljava/lang/String;
    .end local v9    # "idx":I
    .end local v10    # "fx":I
    :cond_3
    goto :goto_0

    .line 568
    :cond_4
    const-string v6, "\u7cbe\u83ef"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "\u8272\u7cbe\u83ef"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "\u7279\u6b8a"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 569
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 570
    .local v6, "idx":I
    if-ltz v6, :cond_5

    invoke-static {v5, v6, v4}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isRangeUsed([ZII)Z

    move-result v7

    if-nez v7, :cond_5

    .line 571
    invoke-static {v5, v6, v4}, Lcom/pikminx/helper/FeedScreenAnalyzer;->markRangeUsed([ZII)V

    .line 572
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {p0, v6, v4, v7, p1}, Lcom/pikminx/helper/FeedScreenAnalyzer;->estimateFlowerX(Lcom/pikminx/helper/PetalMatcher$Token;IIII)I

    move-result v4

    .line 573
    .local v4, "fx":I
    new-instance v7, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v9

    invoke-direct {v7, v8, v4, v9}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v4    # "fx":I
    .end local v6    # "idx":I
    :cond_5
    invoke-static {}, Lcom/pikminx/helper/FeedScreenAnalyzer;->allRecognizedFlowers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 579
    .local v6, "flower":Ljava/lang/String;
    const/4 v7, 0x0

    .line 580
    .local v7, "idx":I
    :goto_2
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    move v7, v8

    if-ltz v8, :cond_7

    .line 581
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v7, v8}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isRangeUsed([ZII)Z

    move-result v8

    if-nez v8, :cond_6

    .line 582
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v7, v8}, Lcom/pikminx/helper/FeedScreenAnalyzer;->markRangeUsed([ZII)V

    .line 583
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {p0, v7, v8, v9, p1}, Lcom/pikminx/helper/FeedScreenAnalyzer;->estimateFlowerX(Lcom/pikminx/helper/PetalMatcher$Token;IIII)I

    move-result v8

    .line 584
    .local v8, "fx":I
    new-instance v9, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v10

    invoke-direct {v9, v6, v8, v10}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v8    # "fx":I
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_2

    .line 588
    .end local v6    # "flower":Ljava/lang/String;
    .end local v7    # "idx":I
    :cond_7
    goto :goto_1

    .line 590
    :cond_8
    new-instance v4, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v4}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 591
    invoke-static {v3}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 543
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "single":Ljava/lang/String;
    .end local v2    # "norm":Ljava/lang/String;
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    .end local v5    # "used":[Z
    :cond_9
    :goto_3
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static feedRoundStatistics(III)Lcom/pikminx/helper/FeedScreenAnalyzer$FeedRoundStatistics;
    .locals 4
    .param p0, "initialNectar"    # I
    .param p1, "remainingNectar"    # I
    .param p2, "petalsObserved"    # I

    .line 656
    invoke-static {p0, p1}, Lcom/pikminx/helper/FeedScreenAnalyzer;->consumedNectar(II)Ljava/lang/Integer;

    move-result-object v0

    .line 657
    .local v0, "consumed":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 658
    const/4 v1, 0x0

    return-object v1

    .line 660
    :cond_0
    new-instance v1, Lcom/pikminx/helper/FeedScreenAnalyzer$FeedRoundStatistics;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/pikminx/helper/FeedScreenAnalyzer$FeedRoundStatistics;-><init>(II)V

    return-object v1
.end method

.method static findBloomTargets(Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;IILcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;)Ljava/util/List;
    .locals 16
    .param p0, "signature"    # Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelReader"    # Lcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;",
            "II",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;",
            ">;"
        }
    .end annotation

    .line 940
    move/from16 v0, p1

    move/from16 v1, p2

    if-eqz p0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->pixels()[I

    move-result-object v2

    array-length v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->columns()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->rows()I

    move-result v4

    mul-int/2addr v3, v4

    if-eq v2, v3, :cond_0

    move-object/from16 v11, p3

    goto/16 :goto_5

    .line 943
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .local v2, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;>;"
    const/16 v3, 0x10

    new-array v3, v3, [I

    .line 945
    .local v3, "sceneTiles":[I
    const/4 v4, 0x0

    .line 946
    .local v4, "sceneChangeCount":I
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->rows()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 947
    add-int/lit8 v6, v1, -0x1

    int-to-float v7, v1

    int-to-float v8, v5

    const v9, 0x3f147ae1    # 0.58f

    mul-float/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->rows()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    const v9, 0x3e4ccccd    # 0.2f

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 948
    .local v6, "y":I
    const/4 v7, 0x0

    .local v7, "col":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->columns()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 949
    add-int/lit8 v8, v0, -0x1

    int-to-float v9, v0

    int-to-float v11, v7

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->columns()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v10

    div-float/2addr v11, v12

    const v12, 0x3dcccccd    # 0.1f

    add-float/2addr v11, v12

    mul-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 950
    .local v8, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->pixels()[I

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->columns()I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v7

    aget v9, v9, v11

    .line 951
    .local v9, "beforePixel":I
    move-object/from16 v11, p3

    invoke-interface {v11, v8, v6}, Lcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;->get(II)I

    move-result v12

    .line 952
    .local v12, "currentPixel":I
    invoke-static {v9, v12}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isSceneChange(II)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 953
    add-int/lit8 v4, v4, 0x1

    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->rows()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->columns()I

    move-result v14

    invoke-static {v5, v7, v13, v14}, Lcom/pikminx/helper/FeedScreenAnalyzer;->sceneTile(IIII)I

    move-result v13

    .line 955
    .local v13, "tile":I
    aget v14, v3, v13

    add-int/lit8 v14, v14, 0x1

    aput v14, v3, v13

    .line 957
    .end local v13    # "tile":I
    :cond_1
    invoke-static {v9, v12}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isNewGlow(II)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 958
    new-instance v13, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;

    invoke-static {v12}, Lcom/pikminx/helper/FeedScreenAnalyzer;->maximum(I)I

    move-result v14

    invoke-static {v9}, Lcom/pikminx/helper/FeedScreenAnalyzer;->maximum(I)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-direct {v13, v8, v6, v14}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;-><init>(III)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    .end local v8    # "x":I
    .end local v9    # "beforePixel":I
    .end local v12    # "currentPixel":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v11, p3

    .line 946
    .end local v6    # "y":I
    .end local v7    # "col":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v11, p3

    .line 962
    .end local v5    # "row":I
    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->pixels()[I

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v5, v3}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isDiffuseSceneChange(II[I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 963
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 965
    :cond_5
    new-instance v5, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 966
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 967
    .local v5, "unique":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;>;"
    int-to-float v6, v0

    const v7, 0x3d3851ec    # 0.045f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/16 v7, 0xc

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 968
    .local v6, "maxDX":I
    int-to-float v8, v1

    const v9, 0x3d0f5c29    # 0.035f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 969
    .local v7, "maxDY":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;

    .line 970
    .local v9, "target":Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    const/4 v10, 0x0

    .line 971
    .local v10, "isDuplicate":Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;

    .line 972
    .local v13, "existing":Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    invoke-virtual {v9}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->x()I

    move-result v14

    invoke-virtual {v13}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->x()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-gt v14, v6, :cond_6

    invoke-virtual {v9}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->y()I

    move-result v14

    invoke-virtual {v13}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->y()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-gt v14, v7, :cond_6

    .line 973
    const/4 v10, 0x1

    .line 974
    goto :goto_4

    .line 976
    .end local v13    # "existing":Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    :cond_6
    goto :goto_3

    .line 977
    :cond_7
    :goto_4
    if-nez v10, :cond_8

    .line 978
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    .end local v9    # "target":Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    .end local v10    # "isDuplicate":Z
    :cond_8
    goto :goto_2

    .line 981
    :cond_9
    invoke-static {v5}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    return-object v8

    .line 940
    .end local v2    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;>;"
    .end local v3    # "sceneTiles":[I
    .end local v4    # "sceneChangeCount":I
    .end local v5    # "unique":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;>;"
    .end local v6    # "maxDX":I
    .end local v7    # "maxDY":I
    :cond_a
    move-object/from16 v11, p3

    .line 941
    :goto_5
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method static findNectar(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
    .locals 16
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
            "Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;"
        }
    .end annotation

    .line 698
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move/from16 v8, p3

    invoke-static/range {p0 .. p3}, Lcom/pikminx/helper/PetalMatcher;->findFlower(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/PetalMatcher$Selection;

    move-result-object v9

    .line 699
    .local v9, "selection":Lcom/pikminx/helper/PetalMatcher$Selection;
    if-eqz v9, :cond_0

    .line 700
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Selection;->y()I

    move-result v0

    int-to-float v1, v8

    const v2, 0x3d8b4396    # 0.068f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 701
    .local v10, "tapY":I
    nop

    .line 703
    invoke-static/range {p1 .. p1}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Selection;->count()I

    move-result v2

    .line 705
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Selection;->x()I

    move-result v3

    .line 706
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Selection;->y()I

    move-result v4

    .line 701
    move-object/from16 v0, p0

    move v5, v10

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static/range {v0 .. v7}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarSelection(Ljava/util/List;Ljava/lang/String;IIIIII)Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;

    move-result-object v0

    return-object v0

    .line 711
    .end local v10    # "tapY":I
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 712
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 713
    return-object v1

    .line 715
    :cond_1
    const/4 v0, 0x0

    .line 716
    .local v0, "targetToken":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 717
    .local v3, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    int-to-float v4, v8

    .line 718
    .local v4, "h":F
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e19999a    # 0.15f

    mul-float/2addr v6, v4

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f6b851f    # 0.92f

    mul-float/2addr v6, v4

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    .line 719
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 720
    .local v5, "tokenKey":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v10}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isColorlessTarget(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 721
    :cond_2
    move-object v0, v3

    .line 722
    move-object v11, v0

    goto :goto_1

    .line 725
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v4    # "h":F
    .end local v5    # "tokenKey":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 716
    :cond_4
    move-object v11, v0

    .line 726
    .end local v0    # "targetToken":Lcom/pikminx/helper/PetalMatcher$Token;
    .local v11, "targetToken":Lcom/pikminx/helper/PetalMatcher$Token;
    :goto_1
    if-nez v11, :cond_5

    .line 727
    return-object v1

    .line 729
    :cond_5
    move-object/from16 v12, p0

    move/from16 v13, p2

    invoke-static {v12, v11, v13, v8}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nearestNumber(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;II)Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v14

    .line 730
    .local v14, "numberToken":Lcom/pikminx/helper/PetalMatcher$Token;
    if-nez v14, :cond_6

    move-object v0, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v14}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    move-object v15, v0

    .line 731
    .local v15, "count":Ljava/lang/Integer;
    if-nez v15, :cond_7

    .line 732
    return-object v1

    .line 734
    :cond_7
    nop

    .line 736
    invoke-static/range {p1 .. p1}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 737
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 738
    invoke-virtual {v11}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    .line 739
    invoke-virtual {v11}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    .line 740
    invoke-static {v11, v8}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarTapY(Lcom/pikminx/helper/PetalMatcher$Token;I)I

    move-result v5

    .line 734
    move-object/from16 v0, p0

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static/range {v0 .. v7}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarSelection(Ljava/util/List;Ljava/lang/String;IIIIII)Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;

    move-result-object v0

    return-object v0
.end method

.method static findSearchedNectar(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
    .locals 26
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
            "Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;"
        }
    .end annotation

    .line 746
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    if-eqz v8, :cond_1e

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    if-lez v10, :cond_1e

    if-gtz v11, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_e

    .line 749
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 750
    .local v12, "canonical":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 753
    .local v13, "displayName":Ljava/lang/String;
    invoke-static/range {p0 .. p3}, Lcom/pikminx/helper/FeedScreenAnalyzer;->findNectar(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;

    move-result-object v14

    .line 754
    .local v14, "direct":Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
    if-eqz v14, :cond_1

    .line 755
    return-object v14

    .line 757
    :cond_1
    if-eqz v13, :cond_2

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 758
    invoke-static {v8, v13, v10, v11}, Lcom/pikminx/helper/FeedScreenAnalyzer;->findNectar(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;

    move-result-object v1

    .line 759
    .local v1, "byDisplay":Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
    if-eqz v1, :cond_2

    .line 760
    return-object v1

    .line 763
    .end local v1    # "byDisplay":Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
    :cond_2
    const-string v1, "\u767d\u8272\u82b1\u74e3"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\u767d\u8272\u7cbe\u83ef"

    const-string v4, "\u7cbe\u83ef"

    if-nez v2, :cond_3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 764
    :cond_3
    invoke-static {v8, v4, v10, v11}, Lcom/pikminx/helper/FeedScreenAnalyzer;->findNectar(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;

    move-result-object v2

    .line 765
    .local v2, "whiteDirect":Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
    if-eqz v2, :cond_4

    .line 766
    return-object v2

    .line 771
    .end local v2    # "whiteDirect":Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
    :cond_4
    int-to-float v15, v11

    .line 772
    .local v15, "h":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v2

    .line 773
    .local v7, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "\u7bc0\u6176"

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 774
    .local v5, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-float v0, v0

    const v17, 0x3df5c28f    # 0.12f

    mul-float v17, v17, v15

    cmpg-float v0, v0, v17

    if-ltz v0, :cond_5

    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-float v0, v0

    const v17, 0x3f733333    # 0.95f

    mul-float v17, v17, v15

    cmpl-float v0, v0, v17

    if-lez v0, :cond_6

    .line 775
    goto :goto_0

    .line 777
    :cond_6
    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "norm":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "\u6d3b\u52d5\u9032\u884c\u4e2d"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "\u6d3b\u52d5\u9032\u884c"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 780
    goto :goto_0

    .line 782
    :cond_7
    invoke-static {v5, v10, v11}, Lcom/pikminx/helper/FeedScreenAnalyzer;->extractFlowersFromToken(Lcom/pikminx/helper/PetalMatcher$Token;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 783
    .end local v0    # "norm":Ljava/lang/String;
    .end local v5    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    goto :goto_0

    .line 785
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/pikminx/helper/FeedScreenAnalyzer;->normalizeFlowerOcr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u82b1\u74e3"

    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 786
    .local v5, "targetNorm":Ljava/lang/String;
    const/4 v0, 0x0

    .line 787
    .local v0, "bestFlower":Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;

    .line 788
    .local v17, "df":Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;
    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    .line 792
    :cond_9
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 793
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_2

    .line 797
    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 798
    if-nez v0, :cond_c

    .line 799
    move-object/from16 v0, v17

    .line 802
    .end local v17    # "df":Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;
    :cond_c
    move-object/from16 v2, v18

    goto :goto_1

    .line 794
    .restart local v17    # "df":Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;
    :cond_d
    :goto_2
    move-object/from16 v0, v17

    .line 795
    goto :goto_4

    .line 789
    :cond_e
    :goto_3
    move-object/from16 v0, v17

    .line 790
    goto :goto_4

    .line 787
    .end local v17    # "df":Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;
    :cond_f
    move-object/from16 v17, v0

    .line 804
    .end local v0    # "bestFlower":Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;
    .local v17, "bestFlower":Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;
    :goto_4
    const v0, 0x3d8b4396    # 0.068f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v17, :cond_15

    .line 805
    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerX()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerY()I

    move-result v4

    invoke-static {v8, v3, v4, v10, v11}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nearestNectarCountTokenAt(Ljava/util/List;IIII)Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v18

    .line 806
    .local v18, "numToken":Lcom/pikminx/helper/PetalMatcher$Token;
    if-eqz v18, :cond_10

    invoke-virtual/range {v18 .. v18}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarCountNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_5

    :cond_10
    const/16 v16, 0x0

    :goto_5
    move-object/from16 v3, v16

    .line 807
    .local v3, "count":Ljava/lang/Integer;
    if-nez v3, :cond_12

    .line 808
    new-instance v4, Lcom/pikminx/helper/PetalMatcher$Token;

    const-string v20, ""

    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerX()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerY()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerX()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerY()I

    move-result v24

    move-object/from16 v19, v4

    invoke-direct/range {v19 .. v24}, Lcom/pikminx/helper/PetalMatcher$Token;-><init>(Ljava/lang/String;IIII)V

    invoke-static {v8, v4, v10, v11}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nearestNumber(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;II)Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v4

    .line 809
    .local v4, "altNum":Lcom/pikminx/helper/PetalMatcher$Token;
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_6

    :cond_11
    move v6, v2

    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_7

    .line 807
    .end local v4    # "altNum":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_12
    move-object/from16 v16, v3

    .line 811
    .end local v3    # "count":Ljava/lang/Integer;
    .local v16, "count":Ljava/lang/Integer;
    :goto_7
    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerY()I

    move-result v3

    int-to-float v4, v11

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 812
    .local v19, "tapY":I
    nop

    .line 814
    if-eqz v13, :cond_13

    move-object v1, v13

    goto :goto_8

    :cond_13
    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 815
    :goto_8
    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    .line 816
    :cond_14
    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerX()I

    move-result v3

    .line 817
    invoke-virtual/range {v17 .. v17}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerY()I

    move-result v4

    .line 812
    move-object/from16 v0, p0

    move-object/from16 v20, v5

    .end local v5    # "targetNorm":Ljava/lang/String;
    .local v20, "targetNorm":Ljava/lang/String;
    move/from16 v5, v19

    move/from16 v6, p2

    move-object/from16 v21, v7

    .end local v7    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    .local v21, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    move/from16 v7, p3

    invoke-static/range {v0 .. v7}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarSelection(Ljava/util/List;Ljava/lang/String;IIIIII)Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;

    move-result-object v0

    return-object v0

    .line 824
    .end local v16    # "count":Ljava/lang/Integer;
    .end local v18    # "numToken":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v19    # "tapY":I
    .end local v20    # "targetNorm":Ljava/lang/String;
    .end local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    .restart local v5    # "targetNorm":Ljava/lang/String;
    .restart local v7    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    :cond_15
    move-object/from16 v20, v5

    move-object/from16 v21, v7

    .end local v5    # "targetNorm":Ljava/lang/String;
    .end local v7    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    .restart local v20    # "targetNorm":Ljava/lang/String;
    .restart local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v3

    .line 825
    .local v7, "visibleLabels":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 826
    .local v4, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v5

    int-to-float v5, v5

    const v18, 0x3e6147ae    # 0.22f

    mul-float v18, v18, v15

    cmpl-float v5, v5, v18

    if-ltz v5, :cond_16

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v5

    int-to-float v5, v5

    const v18, 0x3f266666    # 0.65f

    mul-float v18, v18, v15

    cmpg-float v5, v5, v18

    if-gtz v5, :cond_16

    .line 827
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v5

    int-to-float v5, v5

    const v18, 0x3d23d70a    # 0.04f

    int-to-float v0, v10

    mul-float v0, v0, v18

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_16

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    int-to-float v0, v0

    const v5, 0x3f75c28f    # 0.96f

    int-to-float v1, v10

    mul-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    .line 828
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "norm":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "\u6d3b\u52d5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "\u5927\u5bb6\u4e00\u8d77"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 830
    const-string v1, "\u641c\u5c0b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "^[0-9+]+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 831
    invoke-virtual {v0}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v5, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v22

    const-wide/16 v24, 0x2

    cmp-long v1, v22, v24

    if-ltz v1, :cond_16

    .line 832
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    .end local v0    # "norm":Ljava/lang/String;
    .end local v4    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_16
    const v0, 0x3d8b4396    # 0.068f

    const/4 v1, 0x0

    goto/16 :goto_9

    .line 836
    :cond_17
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1d

    .line 837
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 838
    .local v6, "label":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    invoke-static {v8, v0, v1, v10, v11}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nearestNectarCountTokenAt(Ljava/util/List;IIII)Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v22

    .line 839
    .local v22, "numToken":Lcom/pikminx/helper/PetalMatcher$Token;
    if-eqz v22, :cond_18

    invoke-virtual/range {v22 .. v22}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarCountNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a

    :cond_18
    const/4 v0, 0x0

    .line 840
    .local v0, "count":Ljava/lang/Integer;
    :goto_a
    if-nez v0, :cond_1a

    .line 841
    invoke-static {v8, v6, v10, v11}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nearestNumber(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;II)Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v1

    .line 842
    .local v1, "altNum":Lcom/pikminx/helper/PetalMatcher$Token;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_b

    :cond_19
    move v3, v2

    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_c

    .line 840
    .end local v1    # "altNum":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_1a
    move-object/from16 v16, v0

    .line 844
    .end local v0    # "count":Ljava/lang/Integer;
    .restart local v16    # "count":Ljava/lang/Integer;
    :goto_c
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-float v1, v11

    const v3, 0x3d8b4396    # 0.068f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 845
    .local v18, "tapY":I
    nop

    .line 847
    if-eqz v13, :cond_1b

    move-object v1, v13

    goto :goto_d

    :cond_1b
    move-object v1, v9

    .line 848
    :goto_d
    if-eqz v16, :cond_1c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    .line 849
    :cond_1c
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v3

    .line 850
    invoke-virtual {v6}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v4

    .line 845
    move-object/from16 v0, p0

    move/from16 v5, v18

    move-object/from16 v19, v6

    .end local v6    # "label":Lcom/pikminx/helper/PetalMatcher$Token;
    .local v19, "label":Lcom/pikminx/helper/PetalMatcher$Token;
    move/from16 v6, p2

    move-object/from16 v23, v7

    .end local v7    # "visibleLabels":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .local v23, "visibleLabels":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move/from16 v7, p3

    invoke-static/range {v0 .. v7}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarSelection(Ljava/util/List;Ljava/lang/String;IIIIII)Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;

    move-result-object v0

    return-object v0

    .line 856
    .end local v16    # "count":Ljava/lang/Integer;
    .end local v18    # "tapY":I
    .end local v19    # "label":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v22    # "numToken":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v23    # "visibleLabels":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .restart local v7    # "visibleLabels":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    :cond_1d
    const/4 v0, 0x0

    return-object v0

    .line 746
    .end local v7    # "visibleLabels":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    .end local v12    # "canonical":Ljava/lang/String;
    .end local v13    # "displayName":Ljava/lang/String;
    .end local v14    # "direct":Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
    .end local v15    # "h":F
    .end local v17    # "bestFlower":Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;
    .end local v20    # "targetNorm":Ljava/lang/String;
    .end local v21    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    :cond_1e
    const/4 v0, 0x0

    .line 747
    :goto_e
    return-object v0
.end method

.method static hasNewBloomEffect(Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;IILcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;)Z
    .locals 16
    .param p0, "signature"    # Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelReader"    # Lcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;

    .line 913
    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->pixels()[I

    move-result-object v3

    array-length v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->columns()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->rows()I

    move-result v5

    mul-int/2addr v4, v5

    if-eq v3, v4, :cond_0

    move-object/from16 v13, p3

    goto/16 :goto_3

    .line 916
    :cond_0
    const/16 v3, 0x10

    new-array v3, v3, [I

    .line 917
    .local v3, "sceneTiles":[I
    const/4 v4, 0x0

    .line 918
    .local v4, "glowCount":I
    const/4 v5, 0x0

    .line 919
    .local v5, "sceneChangeCount":I
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->rows()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_4

    .line 920
    add-int/lit8 v7, v1, -0x1

    int-to-float v9, v1

    int-to-float v10, v6

    const v11, 0x3f147ae1    # 0.58f

    mul-float/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->rows()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    const v11, 0x3e4ccccd    # 0.2f

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 921
    .local v7, "y":I
    const/4 v9, 0x0

    .local v9, "col":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->columns()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 922
    add-int/lit8 v10, v0, -0x1

    int-to-float v11, v0

    int-to-float v13, v9

    const v14, 0x3f4ccccd    # 0.8f

    mul-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->columns()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v12

    div-float/2addr v13, v14

    const v14, 0x3dcccccd    # 0.1f

    add-float/2addr v13, v14

    mul-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 923
    .local v10, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->pixels()[I

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->columns()I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v9

    aget v11, v11, v13

    .line 924
    .local v11, "beforePixel":I
    move-object/from16 v13, p3

    invoke-interface {v13, v10, v7}, Lcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;->get(II)I

    move-result v14

    .line 925
    .local v14, "currentPixel":I
    invoke-static {v11, v14}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isNewGlow(II)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 926
    add-int/lit8 v4, v4, 0x1

    .line 928
    :cond_1
    invoke-static {v11, v14}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isSceneChange(II)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 929
    add-int/lit8 v5, v5, 0x1

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->rows()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->columns()I

    move-result v12

    invoke-static {v6, v9, v15, v12}, Lcom/pikminx/helper/FeedScreenAnalyzer;->sceneTile(IIII)I

    move-result v12

    .line 931
    .local v12, "tile":I
    aget v15, v3, v12

    add-int/2addr v15, v8

    aput v15, v3, v12

    .line 921
    .end local v10    # "x":I
    .end local v11    # "beforePixel":I
    .end local v12    # "tile":I
    .end local v14    # "currentPixel":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    move-object/from16 v13, p3

    .line 919
    .end local v7    # "y":I
    .end local v9    # "col":I
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v13, p3

    .line 935
    .end local v6    # "row":I
    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->pixels()[I

    move-result-object v6

    array-length v6, v6

    div-int/lit16 v6, v6, 0xf0

    const/16 v7, 0x12

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lt v4, v6, :cond_5

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$VisualSignature;->pixels()[I

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v6, v3}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isDiffuseSceneChange(II[I)Z

    move-result v6

    if-nez v6, :cond_5

    move v2, v8

    goto :goto_2

    :cond_5
    nop

    .line 935
    :goto_2
    return v2

    .line 913
    .end local v3    # "sceneTiles":[I
    .end local v4    # "glowCount":I
    .end local v5    # "sceneChangeCount":I
    :cond_6
    move-object/from16 v13, p3

    .line 914
    :goto_3
    return v2
.end method

.method static hasReachedPetalLimit(II)Z
    .locals 1
    .param p0, "currentPetals"    # I
    .param p1, "limit"    # I

    .line 46
    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static hasStableBloom(II)Z
    .locals 1
    .param p0, "observedFrames"    # I
    .param p1, "requiredFrames"    # I

    .line 50
    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static hasStableSearchEvidence(ZZII)Z
    .locals 1
    .param p0, "textMatched"    # Z
    .param p1, "searchBoxVisible"    # Z
    .param p2, "stableFrames"    # I
    .param p3, "requiredFrames"    # I

    .line 54
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-lt p2, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isColorlessTarget(Ljava/lang/String;)Z
    .locals 10
    .param p0, "key"    # Ljava/lang/String;

    .line 1071
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1074
    :cond_0
    const-string v2, "\u767d\u8272"

    const-string v3, "\u9ec3\u8272"

    const-string v4, "\u7d05\u8272"

    const-string v5, "\u85cd\u8272"

    const-string v6, "\u767d"

    const-string v7, "\u9ec3"

    const-string v8, "\u7d05"

    const-string v9, "\u85cd"

    invoke-static/range {v2 .. v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1075
    .local v2, "c":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1076
    return v0

    .line 1078
    .end local v2    # "c":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1079
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1072
    :cond_3
    :goto_1
    return v0
.end method

.method private static isDiffuseSceneChange(II[I)Z
    .locals 7
    .param p0, "sceneChangeCount"    # I
    .param p1, "totalPixels"    # I
    .param p2, "sceneTiles"    # [I

    .line 1205
    div-int/lit8 v0, p1, 0x5

    const/4 v1, 0x0

    if-gt p0, v0, :cond_0

    .line 1206
    return v1

    .line 1208
    :cond_0
    array-length v0, p2

    div-int v0, p1, v0

    .line 1209
    .local v0, "tileThreshold":I
    const/4 v2, 0x0

    .line 1210
    .local v2, "activeTiles":I
    array-length v3, p2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, p2, v4

    .line 1211
    .local v5, "count":I
    div-int/lit8 v6, v0, 0x5

    if-le v5, v6, :cond_1

    .line 1212
    add-int/lit8 v2, v2, 0x1

    .line 1210
    .end local v5    # "count":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1215
    :cond_2
    const/16 v3, 0xc

    if-lt v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method static isFeedViewReadyAfterNectarSelection(ZZLjava/lang/Integer;)Z
    .locals 1
    .param p0, "isPanelOpen"    # Z
    .param p1, "isDetailOpen"    # Z
    .param p2, "nectarCount"    # Ljava/lang/Integer;

    .line 58
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isGardenPetalFull(Ljava/util/List;III)Z
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;III)Z"
        }
    .end annotation

    .line 203
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    if-lez p1, :cond_6

    if-gtz p2, :cond_0

    goto/16 :goto_2

    .line 206
    :cond_0
    invoke-static {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isPetalFullNotification(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 207
    return v2

    .line 209
    :cond_1
    int-to-float v1, p1

    const v3, 0x3f63d70a    # 0.89f

    mul-float/2addr v1, v3

    .line 210
    .local v1, "targetX":F
    int-to-float v3, p2

    const v4, 0x3f3851ec    # 0.72f

    mul-float/2addr v3, v4

    .line 211
    .local v3, "targetY":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 212
    .local v5, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    int-to-float v6, p1

    .line 213
    .local v6, "w":F
    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f47ae14    # 0.78f

    mul-float/2addr v8, v6

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_4

    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f7ae148    # 0.98f

    mul-float/2addr v8, v6

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_4

    .line 214
    int-to-float v7, p2

    .line 215
    .local v7, "h":F
    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f2b851f    # 0.67f

    mul-float/2addr v9, v7

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f451eb8    # 0.77f

    mul-float/2addr v9, v7

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    .line 216
    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "norm":Ljava/lang/String;
    const-string v9, "\u6eff"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "max"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {v5}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 221
    .local v9, "val":Ljava/lang/Integer;
    if-eqz v9, :cond_4

    if-lez p3, :cond_4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v10, p3, :cond_4

    .line 222
    return v2

    .line 218
    .end local v9    # "val":Ljava/lang/Integer;
    :cond_3
    :goto_1
    return v2

    .line 226
    .end local v5    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v6    # "w":F
    .end local v7    # "h":F
    .end local v8    # "norm":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 227
    :cond_5
    return v0

    .line 204
    .end local v1    # "targetX":F
    .end local v3    # "targetY":F
    :cond_6
    :goto_2
    return v0
.end method

.method static isNectarFullNotification(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)Z"
        }
    .end annotation

    .line 172
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 175
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 176
    .local v2, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "text":Ljava/lang/String;
    const-string v4, "\u7cbe\u83ef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    const-string v4, "\u82b1\u871c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "nectar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "\u30a8\u30ad\u30b9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    :cond_1
    const-string v4, "\u6eff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "\u6ee1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "\u7121\u6cd5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "\u65e0\u6cd5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 179
    const-string v4, "\u4e0a\u9650"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "\u5df2\u9054"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "\u5df2\u8fbe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 180
    const-string v4, "full"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "max"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "limit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "capacity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    .line 183
    :cond_2
    const-string v4, "\u7cbe\u83ef\u5df2\u6eff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u7cbe\u83ef\u6eff\u4e86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u7cbe\u83ef\u5eab\u5b58\u5df2\u6eff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 184
    const-string v4, "\u7121\u6cd5\u7372\u5f97\u7cbe\u83ef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u7121\u6cd5\u518d\u7372\u5f97"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u5eab\u5b58\u5df2\u6eff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 185
    const-string v4, "\u5df2\u9054\u6301\u6709\u4e0a\u9650"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u6301\u6709\u4e0a\u9650\u5df2\u6eff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u5bb9\u91cf\u5df2\u6eff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 186
    const-string v4, "\u7121\u6cd5\u589e\u52a0\u7cbe\u83ef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u82b1\u871c\u5df2\u6eff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\u7121\u6cd5\u518d\u6536\u96c6\u7cbe\u83ef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    .line 189
    :cond_3
    const-string v4, "\u7cbe\u534e\u5df2\u6ee1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "\u7cbe\u534e\u6ee1\u4e86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "\u7cbe\u534e\u5e93\u5b58\u5df2\u6ee1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 190
    const-string v4, "\u65e0\u6cd5\u83b7\u5f97\u7cbe\u534e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "\u65e0\u6cd5\u518d\u83b7\u5f97"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "\u5e93\u5b58\u5df2\u6ee1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 191
    const-string v4, "\u5df2\u8fbe\u6301\u6709\u4e0a\u9650"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 194
    :cond_4
    const-string v4, "nectarisfull"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "nectarfull"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "cannotcarrymorenectar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 195
    const-string v4, "nectarcapacity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "storageisfull"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 198
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "text":Ljava/lang/String;
    :cond_5
    goto/16 :goto_0

    .line 196
    .restart local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_6
    :goto_1
    return v5

    .line 192
    :cond_7
    :goto_2
    return v5

    .line 187
    :cond_8
    :goto_3
    return v5

    .line 181
    :cond_9
    :goto_4
    return v5

    .line 199
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "text":Ljava/lang/String;
    :cond_a
    return v0

    .line 173
    :cond_b
    :goto_5
    return v0
.end method

.method static isNectarPanelOpen(IILcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;)Z
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "pixelReader"    # Lcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;

    .line 664
    const v0, 0x3ed70a3d    # 0.42f

    invoke-static {p0, p1, v0, p2}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isNectarPanelSampleWhite(IIFLcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;)Z

    move-result v0

    return v0
.end method

.method private static isNectarPanelSampleWhite(IIFLcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;)Z
    .locals 16
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "baseFraction"    # F
    .param p3, "pixelReader"    # Lcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "matchCount":I
    const/4 v1, 0x0

    .line 671
    .local v1, "totalSampled":I
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 672
    move/from16 v3, p1

    int-to-float v4, v3

    int-to-float v5, v2

    const v6, 0x3ccccccd    # 0.025f

    mul-float/2addr v5, v6

    add-float v5, v5, p2

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 673
    .local v4, "y":I
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_1
    const/16 v6, 0x9

    if-ge v5, v6, :cond_1

    .line 674
    move/from16 v6, p0

    int-to-float v7, v6

    int-to-float v8, v5

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v9

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 675
    .local v7, "x":I
    move-object/from16 v8, p3

    invoke-interface {v8, v7, v4}, Lcom/pikminx/helper/FeedScreenAnalyzer$PixelReader;->get(II)I

    move-result v9

    .line 676
    .local v9, "pixel":I
    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    .line 677
    .local v10, "r":I
    shr-int/lit8 v11, v9, 0x8

    and-int/lit16 v11, v11, 0xff

    .line 678
    .local v11, "g":I
    and-int/lit16 v12, v9, 0xff

    .line 679
    .local v12, "b":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 680
    .local v13, "minChannel":I
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 681
    .local v14, "maxChannel":I
    const/16 v15, 0xdc

    if-lt v13, v15, :cond_0

    sub-int v15, v14, v13

    const/16 v3, 0x28

    if-gt v15, v3, :cond_0

    .line 682
    add-int/lit8 v0, v0, 0x1

    .line 684
    :cond_0
    nop

    .end local v7    # "x":I
    .end local v9    # "pixel":I
    .end local v10    # "r":I
    .end local v11    # "g":I
    .end local v12    # "b":I
    .end local v13    # "minChannel":I
    .end local v14    # "maxChannel":I
    add-int/lit8 v1, v1, 0x1

    .line 673
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p1

    goto :goto_1

    :cond_1
    move/from16 v6, p0

    move-object/from16 v8, p3

    .line 671
    .end local v4    # "y":I
    .end local v5    # "col":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move/from16 v6, p0

    move-object/from16 v8, p3

    .line 687
    .end local v2    # "row":I
    int-to-float v2, v1

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-lt v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private static isNewGlow(II)Z
    .locals 8
    .param p0, "beforePixel"    # I
    .param p1, "currentPixel"    # I

    .line 1184
    invoke-static {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer;->maximum(I)I

    move-result v0

    .line 1185
    .local v0, "maxBefore":I
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 1186
    .local v1, "r":I
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 1187
    .local v2, "g":I
    and-int/lit16 v3, p1, 0xff

    .line 1188
    .local v3, "b":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1189
    .local v4, "maxCurrent":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1190
    .local v5, "minCurrent":I
    const/16 v6, 0xcd

    if-ge v5, v6, :cond_0

    const/16 v6, 0xe1

    if-lt v4, v6, :cond_1

    sub-int v6, v4, v5

    const/16 v7, 0x37

    if-lt v6, v7, :cond_1

    :cond_0
    add-int/lit8 v6, v4, -0x2d

    if-gt v0, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    return v6
.end method

.method static isPetalFullNotification(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)Z"
        }
    .end annotation

    .line 153
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 156
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 157
    .local v2, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "text":Ljava/lang/String;
    const-string v4, "\u82b1\u74e3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    const-string v4, "\u6eff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "\u7121\u6cd5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "\u4e0a\u9650"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "\u5df2\u9054"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    :cond_1
    return v5

    .line 161
    :cond_2
    const-string v4, "\u7121\u6cd5\u6536\u96c6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "\u5eab\u5b58\u5df2\u6eff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "\u82b1\u74e3\u5df2\u6eff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "\u82b1\u74e3\u6eff\u4e86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 164
    :cond_3
    const-string v4, "petal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "petals"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string v4, "full"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "max"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "limit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "capacity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 167
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "text":Ljava/lang/String;
    :cond_5
    goto/16 :goto_0

    .line 165
    .restart local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_6
    :goto_1
    return v5

    .line 162
    :cond_7
    :goto_2
    return v5

    .line 168
    .end local v2    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "text":Ljava/lang/String;
    :cond_8
    return v0

    .line 154
    :cond_9
    :goto_3
    return v0
.end method

.method private static isPetalReceiptToken(Lcom/pikminx/helper/PetalMatcher$Token;I)Z
    .locals 3
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "height"    # I

    .line 1154
    int-to-float v0, p1

    .line 1155
    .local v0, "h":F
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f2e147b    # 0.68f

    mul-float/2addr v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isPikminDetailOpen(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)Z"
        }
    .end annotation

    .line 72
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x0

    .line 73
    .local v0, "hasFriendship":Z
    const/4 v1, 0x0

    .line 74
    .local v1, "hasCollect":Z
    const/4 v2, 0x0

    .line 75
    .local v2, "hasPetal":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 76
    .local v4, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "norm":Ljava/lang/String;
    const-string v6, "\u53cb\u597d\u5ea6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 78
    const-string v6, "\u6536\u96c6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 79
    const-string v6, "\u82b1\u74e3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 80
    .end local v4    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v5    # "norm":Ljava/lang/String;
    goto :goto_0

    .line 81
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method static isPlantingScreen(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)Z"
        }
    .end annotation

    .line 595
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 596
    return v0

    .line 598
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

    .line 599
    .local v2, "t":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v2}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "n":Ljava/lang/String;
    const-string v4, "\u6b65\u884c\u8ddd\u96e2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\u5927\u5bb6\u4e00\u8d77"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\u52a0\u901f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\u958b\u59cb\u7a2e\u82b1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 603
    .end local v2    # "t":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "n":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 601
    .restart local v2    # "t":Lcom/pikminx/helper/PetalMatcher$Token;
    .restart local v3    # "n":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 604
    .end local v2    # "t":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v3    # "n":Ljava/lang/String;
    :cond_3
    return v0
.end method

.method private static isRangeUsed([ZII)Z
    .locals 2
    .param p0, "used"    # [Z
    .param p1, "start"    # I
    .param p2, "len"    # I

    .line 527
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 528
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x1

    return v1

    .line 527
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static isSameBloomTarget(Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;II)Z
    .locals 4
    .param p0, "first"    # Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    .param p1, "second"    # Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 985
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->x()I

    move-result v0

    invoke-virtual {p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->x()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->y()I

    move-result v0

    invoke-virtual {p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->y()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    const v3, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 985
    :goto_0
    return v0
.end method

.method static isSameNectarSelection(Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;II)Z
    .locals 7
    .param p0, "first"    # Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
    .param p1, "second"    # Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1020
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1021
    int-to-float v1, p2

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v3, 0x8

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1022
    .local v1, "maxDX":I
    int-to-float v4, p3

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1023
    .local v2, "maxDY":I
    invoke-virtual {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1028
    invoke-virtual {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->x()I

    move-result v4

    invoke-virtual {p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->x()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v1, :cond_2

    .line 1029
    invoke-virtual {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->tapY()I

    move-result v4

    invoke-virtual {p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->tapY()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v2, :cond_2

    .line 1030
    const/4 v5, 0x1

    return v5

    .line 1033
    .end local v1    # "maxDX":I
    .end local v2    # "maxDY":I
    :cond_2
    return v0
.end method

.method private static isSceneChange(II)Z
    .locals 3
    .param p0, "beforePixel"    # I
    .param p1, "currentPixel"    # I

    .line 1195
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v1, v2

    .line 1196
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    and-int/lit16 v2, p1, 0xff

    sub-int/2addr v1, v2

    .line 1197
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1195
    :goto_0
    return v0
.end method

.method static isSharePreviewOpen(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;)Z"
        }
    .end annotation

    .line 85
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x0

    .line 86
    .local v0, "hasShare":Z
    const/4 v1, 0x0

    .line 87
    .local v1, "hasSave":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 88
    .local v3, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v3}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "norm":Ljava/lang/String;
    const-string v5, "\u5206\u4eab"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 90
    const-string v5, "\u5132\u5b58"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "\u4fdd\u5b58"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    :cond_0
    const/4 v1, 0x1

    .line 93
    .end local v3    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v4    # "norm":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 94
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method static synthetic lambda$buildRecognizedFlowers$0(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 445
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1
.end method

.method static synthetic lambda$findBloomTargets$1(Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;)I
    .locals 2
    .param p0, "a"    # Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    .param p1, "b"    # Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;

    .line 965
    invoke-virtual {p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->score()I

    move-result v0

    invoke-virtual {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->score()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$nextUnvisitedBloomTarget$2(Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;IILcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;)Z
    .locals 1
    .param p0, "target"    # Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "v"    # Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;

    .line 1011
    invoke-static {p3, p0, p1, p2}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isSameBloomTarget(Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;II)Z

    move-result v0

    return v0
.end method

.method private static markRangeUsed([ZII)V
    .locals 2
    .param p0, "used"    # [Z
    .param p1, "start"    # I
    .param p2, "len"    # I

    .line 536
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 537
    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static maximum(I)I
    .locals 3
    .param p0, "pixel"    # I

    .line 1219
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static nearestBloomTargetToCenter(Ljava/util/List;II)Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;",
            ">;II)",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;"
        }
    .end annotation

    .line 991
    .local p0, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;>;"
    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 992
    .local v2, "best":Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    if-eqz p0, :cond_2

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 993
    int-to-float v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 994
    .local v3, "centerX":I
    int-to-float v4, v1

    const v5, 0x3f0a3d71    # 0.54f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 995
    .local v4, "centerY":I
    const-wide v5, 0x7fffffffffffffffL

    .line 996
    .local v5, "minDistanceSq":J
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;

    .line 997
    .local v8, "target":Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    invoke-virtual {v8}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->x()I

    move-result v9

    sub-int/2addr v9, v3

    int-to-long v9, v9

    .line 998
    .local v9, "dx":J
    invoke-virtual {v8}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->y()I

    move-result v11

    sub-int/2addr v11, v4

    int-to-long v11, v11

    .line 999
    .local v11, "dy":J
    mul-long v13, v9, v9

    mul-long v15, v11, v11

    add-long/2addr v13, v15

    .line 1000
    .local v13, "distSq":J
    if-eqz v2, :cond_0

    cmp-long v15, v13, v5

    if-ltz v15, :cond_0

    cmp-long v15, v13, v5

    if-nez v15, :cond_1

    invoke-virtual {v8}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->score()I

    move-result v15

    invoke-virtual {v2}, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;->score()I

    move-result v0

    if-le v15, v0, :cond_1

    .line 1001
    :cond_0
    move-object v2, v8

    .line 1002
    move-wide v5, v13

    .line 1004
    .end local v8    # "target":Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    .end local v9    # "dx":J
    .end local v11    # "dy":J
    .end local v13    # "distSq":J
    :cond_1
    move/from16 v0, p1

    goto :goto_0

    .line 1006
    .end local v3    # "centerX":I
    .end local v4    # "centerY":I
    .end local v5    # "minDistanceSq":J
    :cond_2
    return-object v2
.end method

.method static nearestNectarCountToken(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;II)Lcom/pikminx/helper/PetalMatcher$Token;
    .locals 2
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

    .line 362
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    if-nez p1, :cond_0

    .line 363
    const/4 v0, 0x0

    return-object v0

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v0

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v1

    invoke-static {p0, v0, v1, p2, p3}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nearestNectarCountTokenAt(Ljava/util/List;IIII)Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v0

    return-object v0
.end method

.method static nearestNectarCountTokenAt(Ljava/util/List;IIII)Lcom/pikminx/helper/PetalMatcher$Token;
    .locals 18
    .param p1, "anchorX"    # I
    .param p2, "anchorY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;IIII)",
            "Lcom/pikminx/helper/PetalMatcher$Token;"
        }
    .end annotation

    .line 335
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move/from16 v0, p4

    const/4 v1, 0x0

    .line 336
    .local v1, "best":Lcom/pikminx/helper/PetalMatcher$Token;
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 337
    .local v2, "minDistanceSq":D
    int-to-float v4, v0

    const v5, 0x3d0f5c29    # 0.035f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, p2, v4

    .line 338
    .local v4, "targetY":I
    move/from16 v5, p3

    int-to-float v6, v5

    const v7, 0x3df5c28f    # 0.12f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 340
    .local v6, "maxDX":I
    int-to-float v7, v0

    const v8, 0x3d75c28f    # 0.06f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v7, p2, v7

    .line 341
    .local v7, "minY":I
    int-to-float v8, v0

    const v9, 0x3c75c28f    # 0.015f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int v8, p2, v8

    .line 343
    .local v8, "maxY":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 344
    .local v10, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v10}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarCountNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 345
    .local v11, "num":Ljava/lang/Integer;
    if-eqz v11, :cond_2

    .line 346
    invoke-virtual {v10}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v12

    sub-int v12, v12, p1

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-gt v12, v6, :cond_1

    .line 347
    invoke-virtual {v10}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v12

    if-lt v12, v7, :cond_0

    invoke-virtual {v10}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v12

    if-gt v12, v8, :cond_0

    .line 348
    invoke-virtual {v10}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v12

    sub-int v12, v12, p1

    .line 349
    .local v12, "dx":I
    invoke-virtual {v10}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v13

    sub-int/2addr v13, v4

    .line 350
    .local v13, "dy":I
    mul-int v14, v12, v12

    int-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    mul-int v0, v13, v13

    move/from16 v16, v4

    .end local v4    # "targetY":I
    .local v16, "targetY":I
    int-to-double v4, v0

    add-double/2addr v14, v4

    .line 351
    .local v14, "distSq":D
    cmpg-double v0, v14, v2

    if-gez v0, :cond_3

    .line 352
    move-object v0, v10

    .line 353
    .end local v1    # "best":Lcom/pikminx/helper/PetalMatcher$Token;
    .local v0, "best":Lcom/pikminx/helper/PetalMatcher$Token;
    move-wide v1, v14

    move-wide v2, v1

    move-object v1, v0

    .end local v2    # "minDistanceSq":D
    .local v1, "minDistanceSq":D
    goto :goto_1

    .line 347
    .end local v0    # "best":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v12    # "dx":I
    .end local v13    # "dy":I
    .end local v14    # "distSq":D
    .end local v16    # "targetY":I
    .local v1, "best":Lcom/pikminx/helper/PetalMatcher$Token;
    .restart local v2    # "minDistanceSq":D
    .restart local v4    # "targetY":I
    :cond_0
    move/from16 v16, v4

    .end local v4    # "targetY":I
    .restart local v16    # "targetY":I
    goto :goto_1

    .line 346
    .end local v16    # "targetY":I
    .restart local v4    # "targetY":I
    :cond_1
    move/from16 v16, v4

    .end local v4    # "targetY":I
    .restart local v16    # "targetY":I
    goto :goto_1

    .line 345
    .end local v16    # "targetY":I
    .restart local v4    # "targetY":I
    :cond_2
    move/from16 v16, v4

    .line 357
    .end local v4    # "targetY":I
    .end local v10    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v11    # "num":Ljava/lang/Integer;
    .restart local v16    # "targetY":I
    :cond_3
    :goto_1
    move/from16 v5, p3

    move/from16 v0, p4

    move/from16 v4, v16

    goto :goto_0

    .line 358
    .end local v16    # "targetY":I
    .restart local v4    # "targetY":I
    :cond_4
    return-object v1
.end method

.method private static nearestNumber(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;II)Lcom/pikminx/helper/PetalMatcher$Token;
    .locals 10
    .param p1, "anchor"    # Lcom/pikminx/helper/PetalMatcher$Token;
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

    .line 1044
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    const/4 v0, 0x0

    .line 1045
    .local v0, "best":Lcom/pikminx/helper/PetalMatcher$Token;
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1046
    .local v1, "minDistanceSq":D
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 1047
    .local v4, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1048
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v5

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1049
    .local v5, "dx":I
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v6

    invoke-virtual {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1050
    .local v6, "dy":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, p2

    const v9, 0x3e23d70a    # 0.16f

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    int-to-float v7, v6

    neg-int v8, p3

    int-to-float v8, v8

    const v9, 0x3dae147b    # 0.085f

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    int-to-float v7, v6

    int-to-float v8, p3

    const v9, 0x3ca3d70a    # 0.02f

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 1051
    mul-int v7, v5, v5

    mul-int v8, v6, v6

    add-int/2addr v7, v8

    int-to-double v7, v7

    .line 1052
    .local v7, "distSq":D
    cmpg-double v9, v7, v1

    if-gez v9, :cond_0

    .line 1053
    move-object v0, v4

    .line 1054
    move-wide v1, v7

    .line 1058
    .end local v4    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "distSq":D
    :cond_0
    goto :goto_0

    .line 1059
    :cond_1
    return-object v0
.end method

.method static nectarCountNumber(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 314
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 315
    return-object v0

    .line 317
    :cond_0
    sget-object v1, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 318
    const-string v2, "[,\uff0c.\u00b7\'\\s+\uff0b]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    const/16 v2, 0x4f

    const/16 v3, 0x30

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 320
    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 321
    const/16 v2, 0x49

    const/16 v3, 0x31

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 322
    const/16 v2, 0x6c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 323
    const/16 v2, 0x7c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "clean":Ljava/lang/String;
    const-string v2, "[0-9]{1,4}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 326
    .local v2, "val":I
    const/16 v3, 0x4b0

    if-gt v2, v3, :cond_1

    .line 327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 330
    .end local v2    # "val":I
    :cond_1
    return-object v0
.end method

.method static nectarDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1083
    invoke-static {p0}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, "canonical":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "\u82b1\u74e3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7cbe\u83ef"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1085
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    move-object v1, p0

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private static nectarKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 1063
    invoke-static {p0}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, "canonical":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1065
    move-object p0, v0

    .line 1067
    :cond_0
    invoke-static {p0}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u82b1\u74e3"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7cbe\u83ef"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static nectarSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "name"    # Ljava/lang/String;

    .line 1091
    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "canonical":Ljava/lang/String;
    invoke-static {v0}, Lcom/pikminx/helper/PostcardPotCatalog;->colorOf(Ljava/lang/String;)Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v1

    .line 1093
    .local v1, "color":Lcom/pikminx/helper/PostcardPotCatalog$Color;
    const-string v2, "\u82b1\u74e3"

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1094
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1095
    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1097
    :cond_0
    invoke-static {v0}, Lcom/pikminx/helper/PostcardPotCatalog;->searchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1099
    :cond_1
    const-string v3, ""

    if-nez p0, :cond_2

    .line 1100
    return-object v3

    .line 1102
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/pikminx/helper/PetalMatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u7cbe\u83ef"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1103
    .local v2, "clean":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1104
    return-object v3

    .line 1106
    :cond_3
    const-string v3, "\u767d\u8272"

    const-string v4, "\u9ec3\u8272"

    const-string v5, "\u7d05\u8272"

    const-string v6, "\u85cd\u8272"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    :goto_0
    const-string v10, " "

    const/4 v11, 0x4

    if-ge v9, v11, :cond_6

    aget-object v11, v7, v9

    .line 1107
    .local v11, "c":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1108
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, "rest":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v11

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    .line 1106
    .end local v3    # "rest":Ljava/lang/String;
    .end local v11    # "c":Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1112
    :cond_6
    const-string v7, "\u767d"

    const-string v9, "\u9ec3"

    const-string v12, "\u7d05"

    const-string v13, "\u85cd"

    filled-new-array {v7, v9, v12, v13}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v11, :cond_a

    aget-object v8, v14, v15

    .line 1113
    .local v8, "c":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1114
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v14, 0x1

    sparse-switch v11, :sswitch_data_0

    :cond_7
    goto :goto_3

    :sswitch_0
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v14

    goto :goto_4

    :sswitch_1
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x3

    goto :goto_4

    :sswitch_2
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x2

    goto :goto_4

    :sswitch_3
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    goto :goto_4

    :goto_3
    const/4 v7, -0x1

    :goto_4
    packed-switch v7, :pswitch_data_0

    .line 1119
    move-object v3, v8

    goto :goto_5

    .line 1118
    :pswitch_0
    move-object v3, v6

    goto :goto_5

    .line 1117
    :pswitch_1
    move-object v3, v5

    goto :goto_5

    .line 1116
    :pswitch_2
    move-object v3, v4

    goto :goto_5

    .line 1115
    :pswitch_3
    nop

    .line 1119
    :goto_5
    nop

    .line 1121
    .local v3, "fullColor":Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1122
    .local v4, "rest":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v3

    goto :goto_6

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_6
    return-object v5

    .line 1112
    .end local v3    # "fullColor":Ljava/lang/String;
    .end local v4    # "rest":Ljava/lang/String;
    .end local v8    # "c":Ljava/lang/String;
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1125
    :cond_a
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x767d -> :sswitch_3
        0x7d05 -> :sswitch_2
        0x85cd -> :sswitch_1
        0x9ec3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static nectarSelection(Ljava/util/List;Ljava/lang/String;IIIIII)Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "tapY"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;",
            "Ljava/lang/String;",
            "IIIIII)",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;"
        }
    .end annotation

    .line 868
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move-object v0, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static {p0, v8, v9, v10, v11}, Lcom/pikminx/helper/FeedScreenAnalyzer;->petalStockForCard(Ljava/util/List;IIII)Ljava/lang/Integer;

    move-result-object v12

    .line 869
    .local v12, "petalStock":Ljava/lang/Integer;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    .line 870
    .local v4, "petalCount":I
    new-instance v13, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;

    move-object v1, v13

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;-><init>(Ljava/lang/String;IIIII)V

    return-object v13
.end method

.method private static nectarTapY(Lcom/pikminx/helper/PetalMatcher$Token;I)I
    .locals 3
    .param p0, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p1, "height"    # I

    .line 1129
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v0

    int-to-float v1, p1

    const v2, 0x3d8b4396    # 0.068f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static newPetalReceiptGain(Ljava/lang/Integer;Ljava/lang/Integer;Z)I
    .locals 2
    .param p0, "currentReceipt"    # Ljava/lang/Integer;
    .param p1, "lastReceipt"    # Ljava/lang/Integer;
    .param p2, "quietPeriod"    # Z

    .line 257
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 258
    return v0

    .line 260
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    return v0

    .line 263
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static nextUnvisitedBloomTarget(Ljava/util/List;Ljava/util/List;II)Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    .locals 4
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;",
            ">;",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;",
            ">;II)",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;"
        }
    .end annotation

    .line 1010
    .local p0, "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;>;"
    .local p1, "visitedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;

    .line 1011
    .local v1, "target":Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, p2, p3}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda5;-><init>(Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;II)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    .line 1012
    .local v2, "visited":Z
    if-nez v2, :cond_0

    .line 1013
    return-object v1

    .line 1015
    .end local v1    # "target":Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;
    .end local v2    # "visited":Z
    :cond_0
    goto :goto_0

    .line 1016
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static noEffectAction(IIJJ)Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;
    .locals 1
    .param p0, "retryCount"    # I
    .param p1, "maxRetries"    # I
    .param p2, "elapsedMillis"    # J
    .param p4, "timeoutMillis"    # J

    .line 1037
    cmp-long v0, p2, p4

    if-gez v0, :cond_0

    .line 1038
    sget-object v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->WAIT:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    return-object v0

    .line 1040
    :cond_0
    if-lt p0, p1, :cond_1

    sget-object v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->GIVE_UP:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->RETRY:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    :goto_0
    return-object v0
.end method

.method static normalizeFlowerOcr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 369
    const-string v0, ""

    if-nez p0, :cond_0

    .line 370
    return-object v0

    .line 372
    :cond_0
    sget-object v1, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 373
    const-string v2, "[\\p{Z}\\s]+"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string v1, "\u5929\u592d\u5802\u70cf"

    const-string v2, "\u5929\u5802\u9ce5"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v1, "\u5929\u592d\u5802\u9ce5"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v1, "\u592d\u5802\u70cf"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 377
    const-string v1, "\u592d\u5802\u9ce5"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v1, "\u5929\u5802\u70cf"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 379
    const-string v1, "\u5929\u5802\u5cf6"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string v1, "\u81ea\u8272"

    const-string v2, "\u767d\u8272"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v1, "\u7c43\u8272"

    const-string v2, "\u85cd\u8272"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string v1, "\u9ec4"

    const-string v2, "\u9ec3"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 383
    const-string v1, "\u7ea2"

    const-string v2, "\u7d05"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 384
    const-string v1, "\u84dd"

    const-string v2, "\u85cd"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "\u675c\u4e39"

    const-string v2, "\u7261\u4e39"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 386
    const-string v1, "\u4e09\u8272\u8463"

    const-string v2, "\u4e09\u8272\u5807"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 387
    const-string v1, "\u4e09\u8272\u9769"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 388
    const-string v1, "\u4e09\u8272\u69ff"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 389
    const-string v1, "\u9ec3\u5305"

    const-string v2, "\u9ec3\u8272"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v1, "\u6691\u82b1"

    const-string v2, "\u66c7\u82b1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 391
    const-string v1, "\u73ab\u653f\u7470"

    const-string v2, "\u73ab\u7470"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 392
    const-string v1, "\u73ab\u81f4\u7470"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 393
    const-string v1, "\u73ab\u5b5c\u7470"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 394
    const-string v1, "\u653b\u7470"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 395
    const-string v1, "\u653f\u7470"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 396
    const-string v1, "\u5b5c\u7470"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "clean":Ljava/lang/String;
    const-string v1, "\u9031\u5e74\u7d00\u5ff5\u73ab\u7470"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 399
    const-string v2, "\u904e\u9031\u5e74\u7d00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_1
    const-string v2, "\u904e\u5e74\u7d00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_2
    const-string v2, "\u9031\u5e74\u7d00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 407
    :cond_3
    :goto_0
    const-string v1, "\u6d0b\u6854\u6897"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 408
    const-string v2, "\u6d0b\u7d50\u6897"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 409
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 410
    :cond_4
    const-string v2, "\u6d0b\u6854\u4fbf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 411
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 412
    :cond_5
    const-string v2, "\u6d0b\u7d50\u4fbf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 413
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 414
    :cond_6
    const-string v2, "\u6854\u6897"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 415
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_7
    :goto_1
    return-object v0
.end method

.method private static number(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 1133
    if-nez p0, :cond_0

    .line 1134
    const-string p0, ""

    .line 1136
    :cond_0
    sget-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    const-string v1, "[,\uff0c.\u00b7\'\\s]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    const-string v1, "[+\uff0b]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1139
    const/16 v1, 0x4f

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1140
    const/16 v1, 0x6f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1141
    const/16 v1, 0x49

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1142
    const/16 v1, 0x6c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1143
    const/16 v1, 0x7c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, "clean":Ljava/lang/String;
    const-string v1, "[0-9]{1,4}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1145
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1146
    .local v1, "val":I
    const/16 v2, 0x4b0

    if-gt v1, v2, :cond_1

    .line 1147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 1150
    .end local v1    # "val":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method static observeNectarHold(Ljava/lang/Integer;ILjava/lang/Integer;JJJI)Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;
    .locals 4
    .param p0, "lastCount"    # Ljava/lang/Integer;
    .param p1, "stableReads"    # I
    .param p2, "currentCount"    # Ljava/lang/Integer;
    .param p3, "elapsedMillis"    # J
    .param p5, "minHoldMillis"    # J
    .param p7, "maxHoldMillis"    # J
    .param p9, "requiredStableReads"    # I

    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 275
    new-instance v2, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;

    cmp-long v3, p3, p7

    if-ltz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {v2, p0, p1, v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;-><init>(Ljava/lang/Integer;IZ)V

    return-object v2

    .line 277
    :cond_1
    invoke-virtual {p2, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 278
    .local v2, "newStableReads":I
    :goto_0
    cmp-long v3, p3, p5

    if-ltz v3, :cond_3

    invoke-static {v1, p9}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_3
    cmp-long v3, p3, p7

    if-ltz v3, :cond_5

    :cond_4
    move v0, v1

    .line 280
    .local v0, "shouldRelease":Z
    :cond_5
    new-instance v1, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;

    invoke-direct {v1, p2, v2, v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;-><init>(Ljava/lang/Integer;IZ)V

    return-object v1
.end method

.method static petalReceiptGain(Ljava/util/List;II)Ljava/lang/Integer;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;II)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 235
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

    .line 236
    .local v1, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-static {v1, p2}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isPetalReceiptToken(Lcom/pikminx/helper/PetalMatcher$Token;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/FeedScreenAnalyzer;->receiptText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u82b1\u74e3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pikminx/helper/FeedScreenAnalyzer;->receiptNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 238
    .local v2, "count":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 239
    return-object v2

    .line 241
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 242
    .local v4, "other":Lcom/pikminx/helper/PetalMatcher$Token;
    if-eq v4, v1, :cond_1

    invoke-static {v4, p2}, Lcom/pikminx/helper/FeedScreenAnalyzer;->isPetalReceiptToken(Lcom/pikminx/helper/PetalMatcher$Token;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v5

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p1

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 244
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v5

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p2

    const v7, 0x3d75c28f    # 0.06f

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 245
    invoke-virtual {v4}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pikminx/helper/FeedScreenAnalyzer;->receiptNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 246
    .local v5, "otherCount":Ljava/lang/Integer;
    if-eqz v5, :cond_1

    .line 247
    return-object v5

    .line 250
    .end local v4    # "other":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v5    # "otherCount":Ljava/lang/Integer;
    :cond_1
    goto :goto_1

    .line 252
    .end local v1    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "count":Ljava/lang/Integer;
    :cond_2
    goto :goto_0

    .line 253
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static petalStockForCard(Ljava/util/List;IIII)Ljava/lang/Integer;
    .locals 20
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;IIII)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 874
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move/from16 v0, p3

    int-to-float v1, v0

    const v2, 0x3e23d70a    # 0.16f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 875
    .local v1, "maxDX":I
    move/from16 v2, p4

    int-to-float v3, v2

    .line 876
    .local v3, "h":F
    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, p2, v4

    .line 877
    .local v4, "minY":I
    const v5, 0x3d75c28f    # 0.06f

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v5, p2, v5

    .line 878
    .local v5, "maxY":I
    const v6, 0x3e051eb8    # 0.13f

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v6, p2, v6

    .line 879
    .local v6, "targetY":I
    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 880
    .local v7, "minDistanceSq":D
    const/4 v9, 0x0

    .line 881
    .local v9, "bestToken":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 882
    .local v11, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v11}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v11}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v12

    sub-int v12, v12, p1

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-gt v12, v1, :cond_0

    .line 883
    invoke-virtual {v11}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v12

    if-lt v12, v4, :cond_0

    invoke-virtual {v11}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v12

    if-gt v12, v5, :cond_0

    .line 884
    invoke-virtual {v11}, Lcom/pikminx/helper/PetalMatcher$Token;->centerX()I

    move-result v12

    sub-int v12, v12, p1

    int-to-double v12, v12

    .line 885
    .local v12, "dx":D
    invoke-virtual {v11}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v14

    sub-int/2addr v14, v6

    int-to-double v14, v14

    .line 886
    .local v14, "dy":D
    mul-double v16, v12, v12

    mul-double v18, v14, v14

    add-double v16, v16, v18

    .line 887
    .local v16, "distSq":D
    cmpg-double v18, v16, v7

    if-gez v18, :cond_0

    .line 888
    move-object v9, v11

    .line 889
    move-wide/from16 v7, v16

    .line 892
    .end local v11    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v12    # "dx":D
    .end local v14    # "dy":D
    .end local v16    # "distSq":D
    :cond_0
    goto :goto_0

    .line 893
    :cond_1
    if-nez v9, :cond_2

    .line 894
    const/4 v10, 0x0

    return-object v10

    .line 896
    :cond_2
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    return-object v10
.end method

.method private static receiptNumber(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 1159
    const-string v0, "\\+([0-9OoIl|]{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer;->receiptText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1160
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pikminx/helper/FeedScreenAnalyzer;->number(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1162
    .local v1, "count":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 1163
    return-object v1

    .line 1166
    .end local v1    # "count":Ljava/lang/Integer;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static receiptText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 1170
    if-nez p0, :cond_0

    .line 1171
    const-string p0, ""

    .line 1173
    :cond_0
    sget-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static scanAvailableNectars(Ljava/util/List;III)Ljava/util/List;
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minThreshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;III)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/FeedScreenAnalyzer$NectarStock;",
            ">;"
        }
    .end annotation

    .line 608
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-eqz v0, :cond_9

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    if-lez v1, :cond_9

    if-gtz v2, :cond_0

    move/from16 v4, p3

    goto/16 :goto_3

    .line 611
    :cond_0
    const/4 v3, 0x0

    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 612
    .local v3, "effectiveThreshold":I
    int-to-float v5, v2

    .line 614
    .local v5, "h":F
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$NectarStock;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 617
    .local v7, "seenNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 618
    .local v9, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3e19999a    # 0.15f

    mul-float/2addr v11, v5

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_7

    invoke-virtual {v9}, Lcom/pikminx/helper/PetalMatcher$Token;->centerY()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3f733333    # 0.95f

    mul-float/2addr v11, v5

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 619
    goto :goto_0

    .line 621
    :cond_1
    invoke-static {v9, v1, v2}, Lcom/pikminx/helper/FeedScreenAnalyzer;->extractFlowersFromToken(Lcom/pikminx/helper/PetalMatcher$Token;II)Ljava/util/List;

    move-result-object v10

    .line 622
    .local v10, "flowers":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;

    .line 623
    .local v12, "df":Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;
    invoke-virtual {v12}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\u7279\u6b8a\u7cbe\u83ef"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 624
    goto :goto_1

    .line 626
    :cond_2
    invoke-virtual {v12}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerX()I

    move-result v13

    invoke-virtual {v12}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerY()I

    move-result v14

    invoke-static {v0, v13, v14, v1, v2}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nearestNectarCountTokenAt(Ljava/util/List;IIII)Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v13

    .line 627
    .local v13, "numToken":Lcom/pikminx/helper/PetalMatcher$Token;
    if-nez v13, :cond_3

    .line 628
    goto :goto_1

    .line 630
    :cond_3
    invoke-virtual {v13}, Lcom/pikminx/helper/PetalMatcher$Token;->text()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pikminx/helper/FeedScreenAnalyzer;->nectarCountNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 631
    .local v14, "count":Ljava/lang/Integer;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lt v15, v3, :cond_5

    .line 632
    invoke-virtual {v12}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 633
    new-instance v15, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarStock;

    invoke-virtual {v12}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v12}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerX()I

    move-result v2

    move/from16 v16, v3

    .end local v3    # "effectiveThreshold":I
    .local v16, "effectiveThreshold":I
    invoke-virtual {v12}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerY()I

    move-result v3

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarStock;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 632
    .end local v16    # "effectiveThreshold":I
    .restart local v3    # "effectiveThreshold":I
    :cond_4
    move/from16 v16, v3

    .end local v3    # "effectiveThreshold":I
    .restart local v16    # "effectiveThreshold":I
    goto :goto_2

    .line 631
    .end local v16    # "effectiveThreshold":I
    .restart local v3    # "effectiveThreshold":I
    :cond_5
    move/from16 v16, v3

    .line 636
    .end local v3    # "effectiveThreshold":I
    .end local v12    # "df":Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;
    .end local v13    # "numToken":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v14    # "count":Ljava/lang/Integer;
    .restart local v16    # "effectiveThreshold":I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    goto :goto_1

    .line 622
    .end local v16    # "effectiveThreshold":I
    .restart local v3    # "effectiveThreshold":I
    :cond_6
    move/from16 v16, v3

    .line 637
    .end local v3    # "effectiveThreshold":I
    .end local v9    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v10    # "flowers":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;>;"
    .restart local v16    # "effectiveThreshold":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_0

    .line 618
    .end local v16    # "effectiveThreshold":I
    .restart local v3    # "effectiveThreshold":I
    .restart local v9    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_7
    move/from16 v16, v3

    .end local v3    # "effectiveThreshold":I
    .restart local v16    # "effectiveThreshold":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_0

    .line 639
    .end local v9    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v16    # "effectiveThreshold":I
    .restart local v3    # "effectiveThreshold":I
    :cond_8
    new-instance v0, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 640
    invoke-static {v6}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 608
    .end local v3    # "effectiveThreshold":I
    .end local v5    # "h":F
    .end local v6    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/FeedScreenAnalyzer$NectarStock;>;"
    .end local v7    # "seenNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    move/from16 v4, p3

    .line 609
    :goto_3
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static sceneTile(IIII)I
    .locals 2
    .param p0, "row"    # I
    .param p1, "col"    # I
    .param p2, "totalRows"    # I
    .param p3, "totalCols"    # I

    .line 1201
    mul-int/lit8 v0, p0, 0x4

    div-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, p1, 0x4

    div-int/2addr v1, p3

    add-int/2addr v0, v1

    return v0
.end method

.method static shouldAdvanceNectar(II)Z
    .locals 1
    .param p0, "count"    # I
    .param p1, "threshold"    # I

    .line 231
    if-lez p0, :cond_1

    invoke-static {p0, p1}, Lcom/pikminx/helper/SwitchGuard;->isBelowThreshold(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static zoomOutPinch(II)Lcom/pikminx/helper/FeedScreenAnalyzer$ZoomOutPinch;
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 62
    int-to-float v0, p0

    .line 63
    .local v0, "w":F
    new-instance v7, Lcom/pikminx/helper/FeedScreenAnalyzer$ZoomOutPinch;

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v0

    .line 64
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    const v1, 0x3edc28f6    # 0.43f

    mul-float/2addr v1, v0

    .line 65
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v0

    .line 66
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    const v1, 0x3f11eb85    # 0.57f

    mul-float/2addr v1, v0

    .line 67
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v1, p1

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v1, v6

    .line 68
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/pikminx/helper/FeedScreenAnalyzer$ZoomOutPinch;-><init>(IIIII)V

    .line 63
    return-object v7
.end method
