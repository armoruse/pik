.class final Lcom/pikminx/helper/PostcardSettingsInput;
.super Lcom/android/tools/r8/RecordTag;
.source "PostcardSettingsInput.java"


# instance fields
.field private final collectionLimit:I

.field private final petalPotName:Ljava/lang/String;

.field private final pikminCount:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/pikminx/helper/PostcardSettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/PostcardSettingsInput;

    invoke-direct {p1}, Lcom/pikminx/helper/PostcardSettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/pikminx/helper/PostcardSettingsInput;->collectionLimit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/pikminx/helper/PostcardSettingsInput;->petalPotName:Ljava/lang/String;

    iget v2, p0, Lcom/pikminx/helper/PostcardSettingsInput;->pikminCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "collectionLimit"    # I
    .param p2, "petalPotName"    # Ljava/lang/String;
    .param p3, "pikminCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "collectionLimit",
            "petalPotName",
            "pikminCount"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/PostcardSettingsInput;->collectionLimit:I

    iput-object p2, p0, Lcom/pikminx/helper/PostcardSettingsInput;->petalPotName:Ljava/lang/String;

    iput p3, p0, Lcom/pikminx/helper/PostcardSettingsInput;->pikminCount:I

    return-void
.end method

.method static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pikminx/helper/PostcardSettingsInput;
    .locals 6
    .param p0, "limitText"    # Ljava/lang/String;
    .param p1, "petalPotText"    # Ljava/lang/String;
    .param p2, "pikminCountText"    # Ljava/lang/String;

    .line 12
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    .local v0, "limit":I
    nop

    .line 16
    if-ltz v0, :cond_3

    const/16 v1, 0xf

    if-gt v0, v1, :cond_3

    .line 19
    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "potName":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "canonicalPotName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 26
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    .local v3, "pikminCount":I
    nop

    .line 30
    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    const/4 v4, 0x5

    if-gt v3, v4, :cond_1

    .line 33
    new-instance v4, Lcom/pikminx/helper/PostcardSettingsInput;

    invoke-direct {v4, v0, v2, v3}, Lcom/pikminx/helper/PostcardSettingsInput;-><init>(ILjava/lang/String;I)V

    return-object v4

    .line 31
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "\u76ae\u514b\u654f\u6578\u91cf\u5fc5\u9808\u4ecb\u65bc 1 \u5230 5"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 27
    .end local v3    # "pikminCount":I
    :catch_0
    move-exception v3

    .line 28
    .local v3, "exception":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "\u76ae\u514b\u654f\u6578\u91cf\u8acb\u8f38\u5165 1 \u5230 5 \u7684\u6574\u6578"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 22
    .end local v3    # "exception":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\u8acb\u5f9e\u5167\u5efa\u82b1\u76c6\u6e05\u55ae\u9078\u64c7\u540d\u7a31"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 17
    .end local v1    # "potName":Ljava/lang/String;
    .end local v2    # "canonicalPotName":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5269\u9918\u6536\u96c6\u6b21\u6578\u5fc5\u9808\u4ecb\u65bc 0 \u5230 15"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    .end local v0    # "limit":I
    :catch_1
    move-exception v0

    .line 14
    .local v0, "exception":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5269\u9918\u6536\u96c6\u6b21\u6578\u8acb\u8f38\u5165 0 \u5230 15 \u7684\u6574\u6578"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public collectionLimit()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/pikminx/helper/PostcardSettingsInput;->collectionLimit:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1}, Lcom/pikminx/helper/PostcardSettingsInput;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/PostcardSettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public petalPotName()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/pikminx/helper/PostcardSettingsInput;->petalPotName:Ljava/lang/String;

    return-object v0
.end method

.method public pikminCount()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/pikminx/helper/PostcardSettingsInput;->pikminCount:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/pikminx/helper/PostcardSettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/PostcardSettingsInput;

    const-string v2, "collectionLimit;petalPotName;pikminCount"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
