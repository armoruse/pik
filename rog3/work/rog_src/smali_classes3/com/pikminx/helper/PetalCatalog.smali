.class final Lcom/pikminx/helper/PetalCatalog;
.super Ljava/lang/Object;
.source "PetalCatalog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/PetalCatalog$Category;
    }
.end annotation


# static fields
.field private static final CATEGORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalCatalog$Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    invoke-static {}, Lcom/pikminx/helper/PetalCatalog;->categoriesFromPostcardCatalog()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PetalCatalog;->CATEGORIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 23
    invoke-static {p0}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static categories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalCatalog$Category;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/pikminx/helper/PetalCatalog;->CATEGORIES:Ljava/util/List;

    return-object v0
.end method

.method private static categoriesFromPostcardCatalog()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalCatalog$Category;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalCatalog$Category;>;"
    invoke-static {}, Lcom/pikminx/helper/PostcardPotCatalog;->categories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PostcardPotCatalog$Category;

    .line 77
    .local v2, "category":Lcom/pikminx/helper/PostcardPotCatalog$Category;
    invoke-virtual {v2}, Lcom/pikminx/helper/PostcardPotCatalog$Category;->color()Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "color":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/pikminx/helper/PostcardPotCatalog$Category;->names()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u82b1\u74e3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "basicPetal":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 83
    :cond_0
    new-instance v6, Lcom/pikminx/helper/PetalCatalog$Category;

    invoke-static {v4}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lcom/pikminx/helper/PetalCatalog$Category;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v2    # "category":Lcom/pikminx/helper/PostcardPotCatalog$Category;
    .end local v3    # "color":Ljava/lang/String;
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "basicPetal":Ljava/lang/String;
    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static categoryIndexOf(Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 27
    invoke-static {p0}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "canonical":Ljava/lang/String;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 29
    return v1

    .line 31
    :cond_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    sget-object v3, Lcom/pikminx/helper/PetalCatalog;->CATEGORIES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 32
    sget-object v3, Lcom/pikminx/helper/PetalCatalog;->CATEGORIES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/PetalCatalog$Category;

    invoke-virtual {v3}, Lcom/pikminx/helper/PetalCatalog$Category;->petals()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    return v2

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v2    # "index":I
    :cond_2
    return v1
.end method

.method static contains(Ljava/lang/String;)Z
    .locals 1
    .param p0, "petal"    # Ljava/lang/String;

    .line 19
    invoke-static {p0}, Lcom/pikminx/helper/PostcardPotCatalog;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static petals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/pikminx/helper/PostcardPotCatalog;->allNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static searchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "canonical":Ljava/lang/String;
    invoke-static {v0}, Lcom/pikminx/helper/PostcardPotCatalog;->colorOf(Ljava/lang/String;)Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v1

    .line 51
    .local v1, "color":Lcom/pikminx/helper/PostcardPotCatalog$Color;
    const-string v2, "\u82b1\u74e3"

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "flower":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    .line 55
    .end local v3    # "flower":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    if-nez p0, :cond_2

    .line 56
    return-object v3

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u7cbe\u83ef"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "clean":Ljava/lang/String;
    const-string v3, "\u7d05\u8272"

    const-string v4, "\u85cd\u8272"

    const-string v5, "\u767d\u8272"

    const-string v6, "\u9ec3\u8272"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/4 v6, 0x4

    if-ge v5, v6, :cond_5

    aget-object v6, v3, v5

    .line 60
    .local v6, "c":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 61
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "rest":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v6

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    return-object v4

    .line 59
    .end local v3    # "rest":Ljava/lang/String;
    .end local v6    # "c":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 65
    :cond_5
    const-string v3, "\u7d05"

    const-string v5, "\u85cd"

    const-string v7, "\u767d"

    const-string v8, "\u9ec3"

    filled-new-array {v7, v8, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-ge v4, v6, :cond_8

    aget-object v5, v3, v4

    .line 66
    .local v5, "c":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 67
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 68
    .restart local v3    # "rest":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v5

    goto :goto_4

    :cond_6
    move-object v4, v3

    :goto_4
    return-object v4

    .line 65
    .end local v3    # "rest":Ljava/lang/String;
    .end local v5    # "c":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 71
    :cond_8
    return-object v2
.end method

.method static size()I
    .locals 1

    .line 44
    invoke-static {}, Lcom/pikminx/helper/PostcardPotCatalog;->allNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
