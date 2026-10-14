.class final Lcom/pikminx/helper/FeedSettingsInput;
.super Lcom/android/tools/r8/RecordTag;
.source "FeedSettingsInput.java"


# instance fields
.field private final feedsPerSquad:I

.field private final maxSquadSwitches:I

.field private final nectarMinimumThreshold:I

.field private final petalLimit:I


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
    invoke-direct {p0}, Lcom/pikminx/helper/FeedSettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/FeedSettingsInput;

    invoke-direct {p1}, Lcom/pikminx/helper/FeedSettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/pikminx/helper/FeedSettingsInput;->feedsPerSquad:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/pikminx/helper/FeedSettingsInput;->maxSquadSwitches:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/FeedSettingsInput;->nectarMinimumThreshold:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/pikminx/helper/FeedSettingsInput;->petalLimit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(IIII)V
    .locals 0
    .param p1, "feedsPerSquad"    # I
    .param p2, "maxSquadSwitches"    # I
    .param p3, "nectarMinimumThreshold"    # I
    .param p4, "petalLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "feedsPerSquad",
            "maxSquadSwitches",
            "nectarMinimumThreshold",
            "petalLimit"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/FeedSettingsInput;->feedsPerSquad:I

    iput p2, p0, Lcom/pikminx/helper/FeedSettingsInput;->maxSquadSwitches:I

    iput p3, p0, Lcom/pikminx/helper/FeedSettingsInput;->nectarMinimumThreshold:I

    iput p4, p0, Lcom/pikminx/helper/FeedSettingsInput;->petalLimit:I

    return-void
.end method

.method private static boundedInteger(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "label"    # Ljava/lang/String;

    .line 22
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .local v0, "value":I
    if-lt v0, p1, :cond_0

    if-gt v0, p2, :cond_0

    .line 24
    return v0

    .line 26
    .end local v0    # "value":I
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 27
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

.method static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pikminx/helper/FeedSettingsInput;
    .locals 7
    .param p0, "feedsPerSquad"    # Ljava/lang/String;
    .param p1, "maxSquadSwitches"    # Ljava/lang/String;
    .param p2, "nectarMinimumThreshold"    # Ljava/lang/String;
    .param p3, "petalLimit"    # Ljava/lang/String;

    .line 5
    const-string v0, "\u82b1\u74e3\u4e0a\u9650"

    const/16 v1, 0x12c

    const/16 v2, 0x4b0

    invoke-static {p3, v1, v2, v0}, Lcom/pikminx/helper/FeedSettingsInput;->boundedInteger(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 6
    .local v0, "limit":I
    rem-int/lit8 v1, v0, 0x32

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/pikminx/helper/FeedSettingsInput;

    .line 10
    const/4 v3, 0x1

    const/16 v4, 0xa

    const-string v5, "\u6bcf\u968a\u9935\u98df\u8f2a\u6578"

    invoke-static {p0, v3, v4, v5}, Lcom/pikminx/helper/FeedSettingsInput;->boundedInteger(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 11
    const/4 v4, 0x0

    const/16 v5, 0x78

    const-string v6, "\u6700\u591a\u63db\u968a\u6b21\u6578"

    invoke-static {p1, v4, v5, v6}, Lcom/pikminx/helper/FeedSettingsInput;->boundedInteger(Ljava/lang/String;IILjava/lang/String;)I

    move-result v5

    .line 12
    const-string v6, "\u7cbe\u83ef\u6700\u4f4e\u9650\u5236"

    invoke-static {p2, v4, v2, v6}, Lcom/pikminx/helper/FeedSettingsInput;->boundedInteger(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/pikminx/helper/FeedSettingsInput;-><init>(IIII)V

    .line 9
    return-object v1

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u82b1\u74e3\u4e0a\u9650\u5fc5\u9808\u4ee5 50 \u70ba\u55ae\u4f4d"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method effectivePetalLimit()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/pikminx/helper/FeedSettingsInput;->petalLimit:I

    add-int/lit8 v0, v0, -0x32

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Lcom/pikminx/helper/FeedSettingsInput;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public feedsPerSquad()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/pikminx/helper/FeedSettingsInput;->feedsPerSquad:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/FeedSettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public maxSquadSwitches()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/pikminx/helper/FeedSettingsInput;->maxSquadSwitches:I

    return v0
.end method

.method public nectarMinimumThreshold()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/pikminx/helper/FeedSettingsInput;->nectarMinimumThreshold:I

    return v0
.end method

.method public petalLimit()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/pikminx/helper/FeedSettingsInput;->petalLimit:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/pikminx/helper/FeedSettingsInput;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/FeedSettingsInput;

    const-string v2, "feedsPerSquad;maxSquadSwitches;nectarMinimumThreshold;petalLimit"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
