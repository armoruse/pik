.class final Lcom/pikminx/helper/PlantingFlowPolicy;
.super Ljava/lang/Object;
.source "PlantingFlowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;,
        Lcom/pikminx/helper/PlantingFlowPolicy$StartAction;,
        Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;,
        Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static afterConfirmedLowCount(Ljava/util/List;Ljava/lang/String;)Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;
    .locals 4
    .param p1, "currentFlower"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;"
        }
    .end annotation

    .line 76
    .local p0, "sequence":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/pikminx/helper/PetalMatcher;->nextTarget(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "nextFlower":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 78
    new-instance v1, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;

    sget-object v2, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;->STOP_PLANTING:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;-><init>(Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;

    sget-object v2, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;->SEARCH_NEXT:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    invoke-direct {v1, v2, v0}, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;-><init>(Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-object v1
.end method

.method static entryAction(Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;)Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;
    .locals 2
    .param p0, "screen"    # Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    .line 29
    sget-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$1;->$SwitchMap$com$pikminx$helper$PlantingScreenAnalyzer$Screen:[I

    invoke-virtual {p0}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw v0

    .line 32
    :pswitch_0
    sget-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->WAIT_FOR_SCREEN:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    goto :goto_0

    .line 31
    :pswitch_1
    sget-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->BEGIN_POT_SEARCH:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    goto :goto_0

    .line 30
    :pswitch_2
    sget-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->OPEN_MAP_ENTRY:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    .line 29
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static hasActiveMapEvidence(Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;ZZZZ)Z
    .locals 1
    .param p0, "screen"    # Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;
    .param p1, "startVisible"    # Z
    .param p2, "startedNotice"    # Z
    .param p3, "plantingStatsHeader"    # Z
    .param p4, "boostVisible"    # Z

    .line 49
    sget-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->MAP_VISIBLE_NO_ENTRY:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    if-ne p0, v0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static monitoringSelection(Lcom/pikminx/helper/PetalMatcher$Selection;Lcom/pikminx/helper/PetalMatcher$Selection;)Lcom/pikminx/helper/PetalMatcher$Selection;
    .locals 1
    .param p0, "highlighted"    # Lcom/pikminx/helper/PetalMatcher$Selection;
    .param p1, "visibleCurrent"    # Lcom/pikminx/helper/PetalMatcher$Selection;

    .line 67
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method static shouldRecordPlantedFlower(ZZ)Z
    .locals 1
    .param p0, "newlyStarted"    # Z
    .param p1, "startTapped"    # Z

    .line 60
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static shouldReturnToMenuAfterConfirmedStart(Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;)Z
    .locals 1
    .param p0, "screen"    # Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    .line 56
    sget-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->PLANTING_MENU:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static shouldUseFocusedMonitorOcr(I)Z
    .locals 1
    .param p0, "consecutiveMisses"    # I

    .line 71
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static startAction(ZZ)Lcom/pikminx/helper/PlantingFlowPolicy$StartAction;
    .locals 1
    .param p0, "startVisible"    # Z
    .param p1, "stopVisible"    # Z

    .line 37
    if-eqz p1, :cond_0

    .line 38
    sget-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$StartAction;->ALREADY_ACTIVE:Lcom/pikminx/helper/PlantingFlowPolicy$StartAction;

    return-object v0

    .line 40
    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$StartAction;->TAP_START:Lcom/pikminx/helper/PlantingFlowPolicy$StartAction;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$StartAction;->WAIT_FOR_CONTROL:Lcom/pikminx/helper/PlantingFlowPolicy$StartAction;

    :goto_0
    return-object v0
.end method
