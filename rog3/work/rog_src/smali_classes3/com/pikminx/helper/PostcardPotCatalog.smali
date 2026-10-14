.class final Lcom/pikminx/helper/PostcardPotCatalog;
.super Ljava/lang/Object;
.source "PostcardPotCatalog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/PostcardPotCatalog$Category;,
        Lcom/pikminx/helper/PostcardPotCatalog$Color;
    }
.end annotation


# static fields
.field private static final ALL_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CATEGORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PostcardPotCatalog$Category;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAME_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 51

    .line 29
    new-instance v0, Lcom/pikminx/helper/PostcardPotCatalog$Category;

    sget-object v1, Lcom/pikminx/helper/PostcardPotCatalog$Color;->WHITE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    sget-object v2, Lcom/pikminx/helper/PostcardPotCatalog$Color;->WHITE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    const-string v3, "\u767e\u5408"

    const-string v4, "\u5f7c\u5cb8\u82b1"

    const-string v5, "\u7f8e\u4eba\u8549"

    const-string v6, "\u6885\u82b1"

    const-string v7, "\u7261\u4e39"

    const-string v8, "\u98a8\u4fe1\u5b50"

    const-string v9, "\u98a8\u9234\u8349"

    const-string v10, "\u6276\u6851\u82b1"

    const-string v11, "\u5927\u6ce2\u65af\u83ca"

    const-string v12, "\u5927\u7406\u82b1"

    const-string v13, "\u66c7\u82b1"

    const-string v14, "\u5929\u5802\u9ce5"

    const-string v15, "\u9435\u7dda\u84ee"

    const-string v16, "\u5154\u8033\u82b1"

    const-string v17, "\u9234\u862d"

    const-string v18, "\u9f8d\u81bd"

    const-string v19, "\u5eb7\u4e43\u99a8"

    const-string v20, "\u6d77\u828b"

    const-string v21, "\u82b1\u74e3"

    const-string v22, "\u8774\u8776\u862d"

    const-string v23, "\u96de\u51a0\u82b1"

    const-string v24, "\u91d1\u9b5a\u8349"

    const-string v25, "\u4e5d\u91cd\u845b"

    const-string v26, "\u83ca\u82b1"

    const-string v27, "\u727d\u725b\u82b1"

    const-string v28, "\u5c0f\u84bc\u862d"

    const-string v29, "\u7e61\u7403\u82b1"

    const-string v30, "\u96ea\u82b1\u84ee"

    const-string v31, "\u9031\u5e74\u7d00\u5ff5\u73ab\u7470"

    const-string v32, "\u5c71\u8336\u82b1"

    const-string v33, "\u77f3\u7af9"

    const-string v34, "\u9f20\u5c3e\u8349"

    const-string v35, "\u6c34\u4ed9\u82b1"

    const-string v36, "\u7761\u84ee"

    const-string v37, "\u8056\u8a95\u7d05"

    const-string v38, "\u8056\u8a95\u73ab\u7470"

    const-string v39, "\u6afb\u82b1"

    const-string v40, "\u6afb\u8349\u82b1"

    const-string v41, "\u9e1a\u9d61\u9b31\u91d1\u9999"

    const-string v42, "\u9280\u84ee\u82b1"

    const-string v43, "\u6cb9\u83dc\u82b1"

    const-string v44, "\u8c4c\u8c46\u82b1"

    const-string v45, "\u842c\u58fd\u83ca"

    const-string v46, "\u52ff\u5fd8\u8349"

    const-string v47, "\u9cf6\u5c3e\u82b1"

    const-string v48, "\u77ee\u727d\u725b"

    const-string v49, "\u4e09\u8272\u5807"

    const-string v50, "\u6d0b\u6854\u6897"

    filled-new-array/range {v3 .. v50}, [Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Lcom/pikminx/helper/PostcardPotCatalog;->pots(Lcom/pikminx/helper/PostcardPotCatalog$Color;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardPotCatalog$Category;-><init>(Lcom/pikminx/helper/PostcardPotCatalog$Color;Ljava/util/List;)V

    new-instance v1, Lcom/pikminx/helper/PostcardPotCatalog$Category;

    sget-object v2, Lcom/pikminx/helper/PostcardPotCatalog$Color;->YELLOW:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    sget-object v3, Lcom/pikminx/helper/PostcardPotCatalog$Color;->YELLOW:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    const-string v4, "\u767e\u5408"

    const-string v5, "\u7f8e\u4eba\u8549"

    const-string v6, "\u6885\u82b1"

    const-string v7, "\u7261\u4e39"

    const-string v8, "\u98a8\u4fe1\u5b50"

    const-string v9, "\u6276\u6851\u82b1"

    const-string v10, "\u5927\u7406\u82b1"

    const-string v11, "\u66c7\u82b1"

    const-string v12, "\u5929\u5802\u9ce5"

    const-string v13, "\u9435\u7dda\u84ee"

    const-string v14, "\u5eb7\u4e43\u99a8"

    const-string v15, "\u6d77\u828b"

    const-string v16, "\u82b1\u74e3"

    const-string v17, "\u8774\u8776\u862d"

    const-string v18, "\u96de\u51a0\u82b1"

    const-string v19, "\u91d1\u9b5a\u8349"

    const-string v20, "\u4e5d\u91cd\u845b"

    const-string v21, "\u83ca\u82b1"

    const-string v22, "\u727d\u725b\u82b1"

    const-string v23, "\u5c0f\u84bc\u862d"

    const-string v24, "\u96ea\u82b1\u84ee"

    const-string v25, "\u9031\u5e74\u7d00\u5ff5\u73ab\u7470"

    const-string v26, "\u5c71\u8336\u82b1"

    const-string v27, "\u9f20\u5c3e\u8349"

    const-string v28, "\u6c34\u4ed9\u82b1"

    const-string v29, "\u7761\u84ee"

    const-string v30, "\u8056\u8a95\u7d05"

    const-string v31, "\u8056\u8a95\u73ab\u7470"

    const-string v32, "\u6afb\u8349\u82b1"

    const-string v33, "\u9e1a\u9d61\u9b31\u91d1\u9999"

    const-string v34, "\u9280\u84ee\u82b1"

    const-string v35, "\u6cb9\u83dc\u82b1"

    const-string v36, "\u8c4c\u8c46\u82b1"

    const-string v37, "\u842c\u58fd\u83ca"

    const-string v38, "\u52ff\u5fd8\u8349"

    const-string v39, "\u9cf6\u5c3e\u82b1"

    const-string v40, "\u77ee\u727d\u725b"

    const-string v41, "\u4e09\u8272\u5807"

    const-string v42, "\u6d0b\u6854\u6897"

    filled-new-array/range {v4 .. v42}, [Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-static {v3, v4}, Lcom/pikminx/helper/PostcardPotCatalog;->pots(Lcom/pikminx/helper/PostcardPotCatalog$Color;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/pikminx/helper/PostcardPotCatalog$Category;-><init>(Lcom/pikminx/helper/PostcardPotCatalog$Color;Ljava/util/List;)V

    new-instance v2, Lcom/pikminx/helper/PostcardPotCatalog$Category;

    sget-object v3, Lcom/pikminx/helper/PostcardPotCatalog$Color;->RED:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    sget-object v4, Lcom/pikminx/helper/PostcardPotCatalog$Color;->RED:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    const-string v5, "\u5f7c\u5cb8\u82b1"

    const-string v6, "\u7f8e\u4eba\u8549"

    const-string v7, "\u6885\u82b1"

    const-string v8, "\u7261\u4e39"

    const-string v9, "\u98a8\u4fe1\u5b50"

    const-string v10, "\u98a8\u9234\u8349"

    const-string v11, "\u6276\u6851\u82b1"

    const-string v12, "\u5927\u6ce2\u65af\u83ca"

    const-string v13, "\u5927\u7406\u82b1"

    const-string v14, "\u66c7\u82b1"

    const-string v15, "\u5929\u5802\u9ce5"

    const-string v16, "\u9435\u7dda\u84ee"

    const-string v17, "\u5154\u8033\u82b1"

    const-string v18, "\u9234\u862d"

    const-string v19, "\u9f8d\u81bd"

    const-string v20, "\u5eb7\u4e43\u99a8"

    const-string v21, "\u6d77\u828b"

    const-string v22, "\u82b1\u74e3"

    const-string v23, "\u8774\u8776\u862d"

    const-string v24, "\u96de\u51a0\u82b1"

    const-string v25, "\u91d1\u9b5a\u8349"

    const-string v26, "\u4e5d\u91cd\u845b"

    const-string v27, "\u83ca\u82b1"

    const-string v28, "\u727d\u725b\u82b1"

    const-string v29, "\u5c0f\u84bc\u862d"

    const-string v30, "\u96ea\u82b1\u84ee"

    const-string v31, "\u9031\u5e74\u7d00\u5ff5\u73ab\u7470"

    const-string v32, "\u5c71\u8336\u82b1"

    const-string v33, "\u77f3\u7af9"

    const-string v34, "\u9f20\u5c3e\u8349"

    const-string v35, "\u7761\u84ee"

    const-string v36, "\u8056\u8a95\u7d05"

    const-string v37, "\u8056\u8a95\u73ab\u7470"

    const-string v38, "\u6afb\u8349\u82b1"

    const-string v39, "\u9e1a\u9d61\u9b31\u91d1\u9999"

    const-string v40, "\u9280\u84ee\u82b1"

    const-string v41, "\u8c4c\u8c46\u82b1"

    const-string v42, "\u842c\u58fd\u83ca"

    const-string v43, "\u52ff\u5fd8\u8349"

    const-string v44, "\u9cf6\u5c3e\u82b1"

    const-string v45, "\u77ee\u727d\u725b"

    const-string v46, "\u4e09\u8272\u5807"

    const-string v47, "\u6d0b\u6854\u6897"

    filled-new-array/range {v5 .. v47}, [Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-static {v4, v5}, Lcom/pikminx/helper/PostcardPotCatalog;->pots(Lcom/pikminx/helper/PostcardPotCatalog$Color;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/pikminx/helper/PostcardPotCatalog$Category;-><init>(Lcom/pikminx/helper/PostcardPotCatalog$Color;Ljava/util/List;)V

    new-instance v3, Lcom/pikminx/helper/PostcardPotCatalog$Category;

    sget-object v4, Lcom/pikminx/helper/PostcardPotCatalog$Color;->BLUE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    sget-object v5, Lcom/pikminx/helper/PostcardPotCatalog$Color;->BLUE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    const-string v6, "\u7261\u4e39"

    const-string v7, "\u98a8\u9234\u8349"

    const-string v8, "\u6276\u6851\u82b1"

    const-string v9, "\u5927\u7406\u82b1"

    const-string v10, "\u66c7\u82b1"

    const-string v11, "\u9435\u7dda\u84ee"

    const-string v12, "\u5eb7\u4e43\u99a8"

    const-string v13, "\u6d77\u828b"

    const-string v14, "\u82b1\u74e3"

    const-string v15, "\u8774\u8776\u862d"

    const-string v16, "\u96de\u51a0\u82b1"

    const-string v17, "\u91d1\u9b5a\u8349"

    const-string v18, "\u4e5d\u91cd\u845b"

    const-string v19, "\u83ca\u82b1"

    const-string v20, "\u727d\u725b\u82b1"

    const-string v21, "\u5c0f\u84bc\u862d"

    const-string v22, "\u9031\u5e74\u7d00\u5ff5\u73ab\u7470"

    const-string v23, "\u5c71\u8336\u82b1"

    const-string v24, "\u77f3\u7af9"

    const-string v25, "\u9f20\u5c3e\u8349"

    const-string v26, "\u8056\u8a95\u7d05"

    const-string v27, "\u6afb\u8349\u82b1"

    const-string v28, "\u9e1a\u9d61\u9b31\u91d1\u9999"

    const-string v29, "\u9280\u84ee\u82b1"

    const-string v30, "\u6cb9\u83dc\u82b1"

    const-string v31, "\u8c4c\u8c46\u82b1"

    const-string v32, "\u52ff\u5fd8\u8349"

    const-string v33, "\u9cf6\u5c3e\u82b1"

    const-string v34, "\u77ee\u727d\u725b"

    const-string v35, "\u4e09\u8272\u5807"

    const-string v36, "\u6d0b\u6854\u6897"

    filled-new-array/range {v6 .. v36}, [Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-static {v5, v6}, Lcom/pikminx/helper/PostcardPotCatalog;->pots(Lcom/pikminx/helper/PostcardPotCatalog$Color;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/pikminx/helper/PostcardPotCatalog$Category;-><init>(Lcom/pikminx/helper/PostcardPotCatalog$Color;Ljava/util/List;)V

    .line 29
    invoke-static {v0, v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PostcardPotCatalog;->CATEGORIES:Ljava/util/List;

    .line 57
    sget-object v0, Lcom/pikminx/helper/PostcardPotCatalog;->CATEGORIES:Ljava/util/List;

    invoke-static {v0}, Lcom/pikminx/helper/PostcardPotCatalog;->allNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PostcardPotCatalog;->ALL_NAMES:Ljava/util/List;

    .line 58
    sget-object v0, Lcom/pikminx/helper/PostcardPotCatalog;->ALL_NAMES:Ljava/util/List;

    invoke-static {v0}, Lcom/pikminx/helper/PostcardPotCatalog$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PostcardPotCatalog;->NAME_SET:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/pikminx/helper/PostcardPotCatalog;->ALL_NAMES:Ljava/util/List;

    return-object v0
.end method

.method private static allNames(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PostcardPotCatalog$Category;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    .local p0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PostcardPotCatalog$Category;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PostcardPotCatalog$Category;

    .line 149
    .local v2, "category":Lcom/pikminx/helper/PostcardPotCatalog$Category;
    invoke-virtual {v2}, Lcom/pikminx/helper/PostcardPotCatalog$Category;->names()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    .end local v2    # "category":Lcom/pikminx/helper/PostcardPotCatalog$Category;
    goto :goto_0

    .line 151
    :cond_0
    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static canonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_6

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    goto/16 :goto_1

    .line 87
    :cond_0
    sget-object v1, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v2, "[\\p{Z}\\s]+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const/16 v2, 0x592d

    const/16 v3, 0x5929

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 91
    const/16 v2, 0x5cf6

    const v3, 0x9ce5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 92
    const v2, 0x9ec4

    const v4, 0x9ec3

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 93
    const/16 v2, 0x7ea2

    const/16 v4, 0x7d05

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 94
    const v2, 0x84dd

    const v4, 0x85cd

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 95
    const/16 v2, 0x69ff

    const/16 v4, 0x5807

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 96
    const v2, 0x9e1f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "name":Ljava/lang/String;
    const-string v2, "\u6d0b\u6854\u6897"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 98
    const-string v3, "\u6d0b\u7d50\u6897"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 100
    :cond_1
    const-string v3, "\u6d0b\u6854\u4fbf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_2
    const-string v3, "\u6d0b\u7d50\u4fbf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_3
    const-string v3, "\u6854\u6897"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 105
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_4
    :goto_0
    sget-object v2, Lcom/pikminx/helper/PostcardPotCatalog;->NAME_SET:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    :cond_5
    return-object v0

    .line 85
    .end local v1    # "name":Ljava/lang/String;
    :cond_6
    :goto_1
    return-object v0
.end method

.method static categories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PostcardPotCatalog$Category;",
            ">;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/pikminx/helper/PostcardPotCatalog;->CATEGORIES:Ljava/util/List;

    return-object v0
.end method

.method static colorOf(Ljava/lang/String;)Lcom/pikminx/helper/PostcardPotCatalog$Color;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .line 116
    invoke-static {p0}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "canonical":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return-object v1

    .line 120
    :cond_0
    invoke-static {}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->values()[Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 121
    .local v5, "color":Lcom/pikminx/helper/PostcardPotCatalog$Color;
    invoke-virtual {v5}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 122
    return-object v5

    .line 120
    .end local v5    # "color":Lcom/pikminx/helper/PostcardPotCatalog$Color;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_2
    return-object v1
.end method

.method static contains(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 112
    invoke-static {p0}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static namesForColor(Lcom/pikminx/helper/PostcardPotCatalog$Color;)Ljava/util/List;
    .locals 3
    .param p0, "color"    # Lcom/pikminx/helper/PostcardPotCatalog$Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pikminx/helper/PostcardPotCatalog$Color;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    if-nez p0, :cond_0

    .line 72
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    sget-object v0, Lcom/pikminx/helper/PostcardPotCatalog;->CATEGORIES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/PostcardPotCatalog$Category;

    .line 75
    .local v1, "category":Lcom/pikminx/helper/PostcardPotCatalog$Category;
    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardPotCatalog$Category;->color()Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 76
    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardPotCatalog$Category;->names()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 78
    .end local v1    # "category":Lcom/pikminx/helper/PostcardPotCatalog$Category;
    :cond_1
    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static varargs pots(Lcom/pikminx/helper/PostcardPotCatalog$Color;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "color"    # Lcom/pikminx/helper/PostcardPotCatalog$Color;
    .param p1, "flowers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pikminx/helper/PostcardPotCatalog$Color;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 141
    .local v3, "flower":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v3    # "flower":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static searchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 130
    invoke-static {p0}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "canonical":Ljava/lang/String;
    invoke-static {v0}, Lcom/pikminx/helper/PostcardPotCatalog;->colorOf(Ljava/lang/String;)Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v1

    .line 132
    .local v1, "color":Lcom/pikminx/helper/PostcardPotCatalog$Color;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 133
    :cond_1
    :goto_0
    const-string v2, ""

    return-object v2
.end method
