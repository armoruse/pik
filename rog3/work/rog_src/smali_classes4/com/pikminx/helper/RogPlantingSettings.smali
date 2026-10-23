.class public final Lcom/pikminx/helper/RogPlantingSettings;
.super Ljava/lang/Object;
.source "RogPlantingSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    const-string v1, "[\\n,\uff0c]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_57

    aget-object v3, p0, v2

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_33

    .line 12
    :cond_1c
    const-string v4, "\u7cbe\u83ef"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 13
    invoke-static {v3}, Lcom/pikminx/helper/PetalCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    if-eqz v4, :cond_36

    .line 15
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 14
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7121\u6cd5\u8fa8\u8b58\u82b1\u74e3\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u7a2e\u82b1\u6e05\u55ae\u8acb\u586b\u82b1\u74e3\u540d\u7a31\uff0c\u4e0d\u8981\u586b\u7cbe\u83ef\u3002"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5e

    .line 18
    return-object v0

    .line 17
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8acb\u81f3\u5c11\u8a2d\u5b9a\u4e00\u7a2e\u82b1\u74e3\u3002"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
