.class final Lcom/pikminx/helper/SettingsInput;
.super Lcom/android/tools/r8/RecordTag;
.source "SettingsInput.java"


# instance fields
.field private final flowers:Ljava/lang/String;

.field private final threshold:I


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
    invoke-direct {p0}, Lcom/pikminx/helper/SettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/SettingsInput;

    invoke-direct {p1}, Lcom/pikminx/helper/SettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/pikminx/helper/SettingsInput;->threshold:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/pikminx/helper/SettingsInput;->flowers:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "threshold"    # I
    .param p2, "flowers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "threshold",
            "flowers"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/SettingsInput;->threshold:I

    iput-object p2, p0, Lcom/pikminx/helper/SettingsInput;->flowers:Ljava/lang/String;

    return-void
.end method

.method private static boundedInteger(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "minimum"    # I
    .param p2, "maximum"    # I
    .param p3, "label"    # Ljava/lang/String;

    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .local v0, "value":I
    if-lt v0, p1, :cond_0

    if-gt v0, p2, :cond_0

    .line 20
    return v0

    .line 24
    .end local v0    # "value":I
    :cond_0
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 25
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5fc5\u9808\u4ecb\u65bc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5230 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e4b\u9593"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/pikminx/helper/SettingsInput;
    .locals 4
    .param p0, "thresholdText"    # Ljava/lang/String;
    .param p1, "flowersText"    # Ljava/lang/String;

    .line 7
    const/16 v0, 0x4b0

    const-string v1, "\u63db\u82b1\u9580\u6abb"

    const/4 v2, 0x1

    invoke-static {p0, v2, v0, v1}, Lcom/pikminx/helper/SettingsInput;->boundedInteger(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 8
    .local v0, "threshold":I
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 9
    .local v1, "flowers":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    new-instance v2, Lcom/pikminx/helper/SettingsInput;

    invoke-direct {v2, v0, v1}, Lcom/pikminx/helper/SettingsInput;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u81f3\u5c11\u9078\u64c7\u4e00\u7a2e\u5141\u8a31\u7684\u82b1\u74e3"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1}, Lcom/pikminx/helper/SettingsInput;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public flowers()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/pikminx/helper/SettingsInput;->flowers:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/SettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public threshold()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/pikminx/helper/SettingsInput;->threshold:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/pikminx/helper/SettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/SettingsInput;

    const-string v2, "threshold;flowers"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
