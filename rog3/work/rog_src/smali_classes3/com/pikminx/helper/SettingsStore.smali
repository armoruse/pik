.class final Lcom/pikminx/helper/SettingsStore;
.super Ljava/lang/Object;
.source "SettingsStore.java"


# static fields
.field private static final DEFAULT_FLOWERS:Ljava/lang/String; = "\u767d\u8272\u82b1\u74e3\n\u9ec3\u8272\u82b1\u74e3\n\u7d05\u8272\u82b1\u74e3\n\u85cd\u8272\u82b1\u74e3"

.field private static final DEFAULT_POSTCARD_PETAL_POT:Ljava/lang/String; = "\u9ec3\u8272\u82b1\u74e3"

.field private static final PREFS:Ljava/lang/String; = "pikminx_settings"


# instance fields
.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "pikminx_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    .line 20
    return-void
.end method


# virtual methods
.method allowedFlowers()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/pikminx/helper/SettingsStore;->flowersText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\\n,\uff0c]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 97
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "trimmed":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 99
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "trimmed":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_1
    return-object v0
.end method

.method dispatchPikminType()Lcom/pikminx/helper/DispatchPikminType;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/pikminx/helper/DispatchPikminType;->MIXED:Lcom/pikminx/helper/DispatchPikminType;

    .line 75
    invoke-virtual {v1}, Lcom/pikminx/helper/DispatchPikminType;->name()Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v2, "dispatch_pikmin_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/DispatchPikminType;->fromStored(Ljava/lang/String;)Lcom/pikminx/helper/DispatchPikminType;

    move-result-object v0

    return-object v0
.end method

.method dispatchSelectionMethod()Lcom/pikminx/helper/DispatchSelectionMethod;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/pikminx/helper/DispatchSelectionMethod;->AUTO:Lcom/pikminx/helper/DispatchSelectionMethod;

    .line 70
    invoke-virtual {v1}, Lcom/pikminx/helper/DispatchSelectionMethod;->name()Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "dispatch_selection_method"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/DispatchSelectionMethod;->fromStored(Ljava/lang/String;)Lcom/pikminx/helper/DispatchSelectionMethod;

    move-result-object v0

    return-object v0
.end method

.method expeditionDispatchCount()I
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "expedition_dispatch_count"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x63

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method expeditionTargetMode()Lcom/pikminx/helper/ExpeditionTargetMode;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT_AND_POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    .line 65
    invoke-virtual {v1}, Lcom/pikminx/helper/ExpeditionTargetMode;->name()Ljava/lang/String;

    move-result-object v1

    .line 64
    const-string v2, "expedition_target_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/ExpeditionTargetMode;->fromStored(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionTargetMode;

    move-result-object v0

    return-object v0
.end method

.method feedPetalLimit()I
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "feed_petal_limit"

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, "raw":I
    const/16 v2, 0x4b0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 197
    .local v1, "clamped":I
    add-int/lit8 v3, v1, -0x64

    div-int/lit8 v3, v3, 0x32

    mul-int/lit8 v3, v3, 0x32

    add-int/2addr v3, v2

    return v3
.end method

.method feedsPerSquad()I
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "feeds_per_squad"

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method flowersText()Ljava/lang/String;
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "flowers"

    const-string v2, "\u767d\u8272\u82b1\u74e3\n\u9ec3\u8272\u82b1\u74e3\n\u7d05\u8272\u82b1\u74e3\n\u85cd\u8272\u82b1\u74e3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method maxSquadSwitches()I
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "max_squad_switches"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x78

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method nectarMinimumThreshold()I
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "nectar_minimum_threshold"

    const/16 v2, 0x28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x4b0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method overlayVisible()Z
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "overlay_visible"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method postcardCollectionLimit()I
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    .line 36
    const-string v1, "postcard_collection_limit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 35
    const/16 v1, 0xf

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method postcardPetalPotName()Ljava/lang/String;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "postcard_petal_pot_name"

    const-string v2, "\u9ec3\u8272\u82b1\u74e3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "stored":Ljava/lang/String;
    invoke-static {v0}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "canonical":Ljava/lang/String;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method postcardPetalPotNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/pikminx/helper/PostcardPotCatalog;->allNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method postcardPikminCount()I
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    .line 55
    const-string v1, "postcard_pikmin_count"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method receiveReturnedPostcards()Z
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "return_reward_receive_postcard"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method recordConfirmedExpeditionDispatch()I
    .locals 3

    .line 173
    nop

    .line 174
    invoke-virtual {p0}, Lcom/pikminx/helper/SettingsStore;->expeditionDispatchCount()I

    move-result v0

    .line 173
    invoke-static {v0}, Lcom/pikminx/helper/ExpeditionRemainingCount;->afterConfirmedDispatch(I)I

    move-result v0

    .line 177
    .local v0, "remaining":I
    iget-object v1, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    .line 175
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 176
    const-string v2, "expedition_dispatch_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 177
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    move v1, v0

    goto :goto_0

    .line 179
    :cond_0
    const/4 v1, -0x1

    .line 175
    :goto_0
    return v1
.end method

.method recordConfirmedPostcardReceipt()I
    .locals 3

    .line 161
    nop

    .line 162
    invoke-virtual {p0}, Lcom/pikminx/helper/SettingsStore;->postcardCollectionLimit()I

    move-result v0

    .line 161
    invoke-static {v0}, Lcom/pikminx/helper/PostcardRemainingCount;->afterConfirmedReceipt(I)I

    move-result v0

    .line 165
    .local v0, "remaining":I
    iget-object v1, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 164
    const-string v2, "postcard_collection_limit"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 165
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    move v1, v0

    goto :goto_0

    .line 167
    :cond_0
    const/4 v1, -0x1

    .line 163
    :goto_0
    return v1
.end method

.method save(ILjava/lang/String;)V
    .locals 3
    .param p1, "threshold"    # I
    .param p2, "flowers"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    const/16 v1, 0x270f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "threshold"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flowers"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    return-void
.end method

.method save(ILjava/util/List;)V
    .locals 1
    .param p1, "threshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p2, "flowers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/pikminx/helper/SettingsStore;->save(ILjava/lang/String;)V

    .line 115
    return-void
.end method

.method saveExpeditionDispatchSettings(ILcom/pikminx/helper/ExpeditionTargetMode;Lcom/pikminx/helper/DispatchSelectionMethod;Lcom/pikminx/helper/DispatchPikminType;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "targetMode"    # Lcom/pikminx/helper/ExpeditionTargetMode;
    .param p3, "selectionMethod"    # Lcom/pikminx/helper/DispatchSelectionMethod;
    .param p4, "pikminType"    # Lcom/pikminx/helper/DispatchPikminType;

    .line 137
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    const/16 v1, 0x63

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "expedition_dispatch_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    if-nez p2, :cond_0

    .line 140
    sget-object v1, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT_AND_POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v1}, Lcom/pikminx/helper/ExpeditionTargetMode;->name()Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v2, "expedition_target_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    if-nez p3, :cond_1

    .line 142
    sget-object v1, Lcom/pikminx/helper/DispatchSelectionMethod;->AUTO:Lcom/pikminx/helper/DispatchSelectionMethod;

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    invoke-virtual {v1}, Lcom/pikminx/helper/DispatchSelectionMethod;->name()Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v2, "dispatch_selection_method"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    if-nez p4, :cond_2

    .line 144
    sget-object v1, Lcom/pikminx/helper/DispatchPikminType;->MIXED:Lcom/pikminx/helper/DispatchPikminType;

    goto :goto_2

    :cond_2
    move-object v1, p4

    :goto_2
    invoke-virtual {v1}, Lcom/pikminx/helper/DispatchPikminType;->name()Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string v2, "dispatch_pikmin_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    const-string v1, "reward_collection_mode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method

.method saveFeedSettings(IIII)V
    .locals 6
    .param p1, "feedsPerSquad"    # I
    .param p2, "maxSquadSwitches"    # I
    .param p3, "nectarMinimumThreshold"    # I
    .param p4, "feedPetalLimit"    # I

    .line 201
    const/16 v0, 0x4b0

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x32

    mul-int/lit8 v1, v1, 0x32

    add-int/2addr v1, v2

    .line 202
    .local v1, "clampedPetal":I
    iget-object v2, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 203
    const/16 v3, 0xa

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string v4, "feeds_per_squad"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 204
    const/16 v3, 0x78

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string v5, "max_squad_switches"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 205
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v3, "nectar_minimum_threshold"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    const-string v2, "feed_petal_limit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    return-void
.end method

.method savePostcardSettings(ILjava/lang/String;I)V
    .locals 3
    .param p1, "limit"    # I
    .param p2, "petalPotName"    # Ljava/lang/String;
    .param p3, "pikminCount"    # I

    .line 122
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    const/16 v1, 0xf

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "postcard_collection_limit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "postcard_petal_pot_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    const/4 v1, 0x5

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "postcard_pikmin_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    const-string v1, "postcard_petal_color"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    const-string v1, "postcard_petal_pots"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 129
    return-void
.end method

.method saveReturnRewardSettings(Z)V
    .locals 2
    .param p1, "receivePostcard"    # Z

    .line 150
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    const-string v1, "return_reward_receive_postcard"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void
.end method

.method setOverlayVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 85
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "overlay_visible"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method

.method threshold()I
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/pikminx/helper/SettingsStore;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "threshold"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
