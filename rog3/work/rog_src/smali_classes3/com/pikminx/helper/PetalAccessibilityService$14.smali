.class synthetic Lcom/pikminx/helper/PetalAccessibilityService$14;
.super Ljava/lang/Object;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pikminx$helper$ExpeditionDispatchSession$Stage:[I

.field static final synthetic $SwitchMap$com$pikminx$helper$FeedTargetSequence$MissingDecision:[I

.field static final synthetic $SwitchMap$com$pikminx$helper$OverlayRunStatus$Kind:[I

.field static final synthetic $SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationMode:[I

.field static final synthetic $SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

.field static final synthetic $SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

.field static final synthetic $SwitchMap$com$pikminx$helper$PlantingFlowPolicy$EntryAction:[I

.field static final synthetic $SwitchMap$com$pikminx$helper$PostcardAutomation$Step:[I

.field static final synthetic $SwitchMap$com$pikminx$helper$PostcardMatcher$Page:[I

.field static final synthetic $SwitchMap$com$pikminx$helper$PostcardPotCatalog$Color:[I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 7748
    invoke-static {}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->values()[Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardPotCatalog$Color:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardPotCatalog$Color:[I

    sget-object v2, Lcom/pikminx/helper/PostcardPotCatalog$Color;->WHITE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    invoke-virtual {v2}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardPotCatalog$Color:[I

    sget-object v3, Lcom/pikminx/helper/PostcardPotCatalog$Color;->YELLOW:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    invoke-virtual {v3}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardPotCatalog$Color:[I

    sget-object v4, Lcom/pikminx/helper/PostcardPotCatalog$Color;->RED:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    invoke-virtual {v4}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardPotCatalog$Color:[I

    sget-object v5, Lcom/pikminx/helper/PostcardPotCatalog$Color;->BLUE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    invoke-virtual {v5}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 7239
    :goto_3
    invoke-static {}, Lcom/pikminx/helper/OverlayRunStatus$Kind;->values()[Lcom/pikminx/helper/OverlayRunStatus$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$OverlayRunStatus$Kind:[I

    :try_start_4
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$OverlayRunStatus$Kind:[I

    sget-object v5, Lcom/pikminx/helper/OverlayRunStatus$Kind;->IDLE:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    invoke-virtual {v5}, Lcom/pikminx/helper/OverlayRunStatus$Kind;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$OverlayRunStatus$Kind:[I

    sget-object v5, Lcom/pikminx/helper/OverlayRunStatus$Kind;->SEARCHING:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    invoke-virtual {v5}, Lcom/pikminx/helper/OverlayRunStatus$Kind;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$OverlayRunStatus$Kind:[I

    sget-object v5, Lcom/pikminx/helper/OverlayRunStatus$Kind;->RECOGNIZING:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    invoke-virtual {v5}, Lcom/pikminx/helper/OverlayRunStatus$Kind;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$OverlayRunStatus$Kind:[I

    sget-object v5, Lcom/pikminx/helper/OverlayRunStatus$Kind;->SUCCESS:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    invoke-virtual {v5}, Lcom/pikminx/helper/OverlayRunStatus$Kind;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    const/4 v5, 0x5

    :try_start_8
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$OverlayRunStatus$Kind:[I

    sget-object v6, Lcom/pikminx/helper/OverlayRunStatus$Kind;->ERROR:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    invoke-virtual {v6}, Lcom/pikminx/helper/OverlayRunStatus$Kind;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    .line 5163
    :goto_8
    invoke-static {}, Lcom/pikminx/helper/PostcardMatcher$Page;->values()[Lcom/pikminx/helper/PostcardMatcher$Page;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardMatcher$Page:[I

    :try_start_9
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardMatcher$Page:[I

    sget-object v6, Lcom/pikminx/helper/PostcardMatcher$Page;->POSTCARD_RECEIVED:Lcom/pikminx/helper/PostcardMatcher$Page;

    invoke-virtual {v6}, Lcom/pikminx/helper/PostcardMatcher$Page;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardMatcher$Page:[I

    sget-object v6, Lcom/pikminx/helper/PostcardMatcher$Page;->PIKMIN_SELECTION:Lcom/pikminx/helper/PostcardMatcher$Page;

    invoke-virtual {v6}, Lcom/pikminx/helper/PostcardMatcher$Page;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    :try_start_b
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardMatcher$Page:[I

    sget-object v6, Lcom/pikminx/helper/PostcardMatcher$Page;->PETAL_SELECTION:Lcom/pikminx/helper/PostcardMatcher$Page;

    invoke-virtual {v6}, Lcom/pikminx/helper/PostcardMatcher$Page;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    :try_start_c
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardMatcher$Page:[I

    sget-object v6, Lcom/pikminx/helper/PostcardMatcher$Page;->WARNING:Lcom/pikminx/helper/PostcardMatcher$Page;

    invoke-virtual {v6}, Lcom/pikminx/helper/PostcardMatcher$Page;->ordinal()I

    move-result v6

    aput v4, v0, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    :goto_c
    :try_start_d
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardMatcher$Page:[I

    sget-object v6, Lcom/pikminx/helper/PostcardMatcher$Page;->FLOWER_DETAIL:Lcom/pikminx/helper/PostcardMatcher$Page;

    invoke-virtual {v6}, Lcom/pikminx/helper/PostcardMatcher$Page;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    const/4 v6, 0x6

    :try_start_e
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardMatcher$Page:[I

    sget-object v7, Lcom/pikminx/helper/PostcardMatcher$Page;->MAP:Lcom/pikminx/helper/PostcardMatcher$Page;

    invoke-virtual {v7}, Lcom/pikminx/helper/PostcardMatcher$Page;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    .line 4003
    :goto_e
    invoke-static {}, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->values()[Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PlantingFlowPolicy$EntryAction:[I

    :try_start_f
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PlantingFlowPolicy$EntryAction:[I

    sget-object v7, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->OPEN_MAP_ENTRY:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    invoke-virtual {v7}, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    :try_start_10
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PlantingFlowPolicy$EntryAction:[I

    sget-object v7, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->BEGIN_POT_SEARCH:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    invoke-virtual {v7}, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->ordinal()I

    move-result v7

    aput v2, v0, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    :try_start_11
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PlantingFlowPolicy$EntryAction:[I

    sget-object v7, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->WAIT_FOR_SCREEN:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    invoke-virtual {v7}, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->ordinal()I

    move-result v7

    aput v3, v0, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    .line 3057
    :goto_11
    invoke-static {}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->values()[Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$ExpeditionDispatchSession$Stage:[I

    :try_start_12
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$ExpeditionDispatchSession$Stage:[I

    sget-object v7, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    invoke-virtual {v7}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    :try_start_13
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$ExpeditionDispatchSession$Stage:[I

    sget-object v7, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    invoke-virtual {v7}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->ordinal()I

    move-result v7

    aput v2, v0, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    :try_start_14
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$ExpeditionDispatchSession$Stage:[I

    sget-object v7, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->SELECTION:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    invoke-virtual {v7}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->ordinal()I

    move-result v7

    aput v3, v0, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    :goto_14
    :try_start_15
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$ExpeditionDispatchSession$Stage:[I

    sget-object v7, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->WAIT_RESULT:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    invoke-virtual {v7}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->ordinal()I

    move-result v7

    aput v4, v0, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v0

    :goto_15
    :try_start_16
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$ExpeditionDispatchSession$Stage:[I

    sget-object v7, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->VERIFY_RETURN:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    invoke-virtual {v7}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->ordinal()I

    move-result v7

    aput v5, v0, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v0

    .line 1648
    :goto_16
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->values()[Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    :try_start_17
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v7, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->WAITING_GAME_READY:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v0

    :goto_17
    :try_start_18
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v7, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->OPENING_NECTAR:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v7

    aput v2, v0, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v0

    :goto_18
    :try_start_19
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v7, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->OPENING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v7

    aput v3, v0, v7
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v0

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v7, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->CLEARING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v7

    aput v4, v0, v7
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v0

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v7, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ENTERING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v7

    aput v5, v0, v7
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v0

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v7, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->CONFIRMING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v7}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v0

    :goto_1c
    const/4 v7, 0x7

    :try_start_1d
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v8, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->CLOSING_NECTAR_KEYBOARD:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v8}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v8

    aput v7, v0, v8
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v0

    :goto_1d
    const/16 v8, 0x8

    :try_start_1e
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v9, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->SELECTING_NECTAR:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v9}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v9

    aput v8, v0, v9
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v0

    :goto_1e
    const/16 v9, 0x9

    :try_start_1f
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v10, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->WAITING_NECTAR_PANEL_CLOSE:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v10}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v10

    aput v9, v0, v10
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v0

    :goto_1f
    const/16 v10, 0xa

    :try_start_20
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v11, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->READING_NECTAR_COUNT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v11}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v11

    aput v10, v0, v11
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v0

    :goto_20
    const/16 v11, 0xb

    :try_start_21
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v12, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->READING_CONSUMED_COUNT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v12}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v12

    aput v11, v0, v12
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v0

    :goto_21
    const/16 v12, 0xc

    :try_start_22
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v13, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->COLLECTING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v13}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v13

    aput v12, v0, v13
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v0

    :goto_22
    const/16 v13, 0xd

    :try_start_23
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v14, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->FEEDING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v14}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v14

    aput v13, v0, v14
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v0

    :goto_23
    const/16 v14, 0xe

    :try_start_24
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v15, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ZOOMING_OUT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v15}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v15

    aput v14, v0, v15
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v0

    :goto_24
    const/16 v15, 0xf

    :try_start_25
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$FeedStep:[I

    sget-object v16, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->SWITCHING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ordinal()I

    move-result v16

    aput v15, v0, v16
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_25

    :catch_25
    move-exception v0

    .line 1746
    :goto_25
    invoke-static {}, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->values()[Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$FeedTargetSequence$MissingDecision:[I

    :try_start_26
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$FeedTargetSequence$MissingDecision:[I

    sget-object v16, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->RETRY_CURRENT:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->ordinal()I

    move-result v16

    aput v1, v0, v16
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_26

    :catch_26
    move-exception v0

    :goto_26
    :try_start_27
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$FeedTargetSequence$MissingDecision:[I

    sget-object v16, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->ADVANCED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->ordinal()I

    move-result v16

    aput v2, v0, v16
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_27

    :catch_27
    move-exception v0

    :goto_27
    :try_start_28
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$FeedTargetSequence$MissingDecision:[I

    sget-object v16, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->EXHAUSTED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->ordinal()I

    move-result v16

    aput v3, v0, v16
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_28

    :catch_28
    move-exception v0

    .line 993
    :goto_28
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->values()[Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    :try_start_29
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v16, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->CHECKING_PLANTING_ENTRY:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v16

    aput v1, v0, v16
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_29

    :catch_29
    move-exception v0

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v16, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_INITIAL_PLANTING_MENU:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v16

    aput v2, v0, v16
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_2a

    :catch_2a
    move-exception v0

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v16, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_MENU_AFTER_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v16

    aput v3, v0, v16
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_2b

    :catch_2b
    move-exception v0

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v16, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v16

    aput v4, v0, v16
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_2c

    :catch_2c
    move-exception v0

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v16, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->VERIFYING_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v16

    aput v5, v0, v16
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_2d

    :catch_2d
    move-exception v0

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v16, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_STOP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v16

    aput v6, v0, v16
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_2e

    :catch_2e
    move-exception v0

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v16, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->VERIFYING_STOP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v16

    aput v7, v0, v16
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    goto :goto_2f

    :catch_2f
    move-exception v0

    :goto_2f
    :try_start_30
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v16, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->VERIFYING_SELECTION:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v16

    aput v8, v0, v16
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    goto :goto_30

    :catch_30
    move-exception v0

    :goto_30
    :try_start_31
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v16, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->MONITORING:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v16

    aput v9, v0, v16
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    goto :goto_31

    :catch_31
    move-exception v0

    :goto_31
    :try_start_32
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v16, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->REVEALING_SEARCH_PANEL:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual/range {v16 .. v16}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v16

    aput v10, v0, v16
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    goto :goto_32

    :catch_32
    move-exception v0

    :goto_32
    :try_start_33
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v10, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->OPENING_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual {v10}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v10

    aput v11, v0, v10
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    goto :goto_33

    :catch_33
    move-exception v0

    :goto_33
    :try_start_34
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v10, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ENTERING_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual {v10}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v10

    aput v12, v0, v10
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    goto :goto_34

    :catch_34
    move-exception v0

    :goto_34
    :try_start_35
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v10, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->CLOSING_SEARCH_KEYBOARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual {v10}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v10

    aput v13, v0, v10
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    goto :goto_35

    :catch_35
    move-exception v0

    :goto_35
    :try_start_36
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v10, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->SELECTING_SEARCH_RESULT:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual {v10}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v10

    aput v14, v0, v10
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    goto :goto_36

    :catch_36
    move-exception v0

    :goto_36
    :try_start_37
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationStep:[I

    sget-object v10, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->CLOSING_SEARCH_AFTER_SELECTION:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual {v10}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ordinal()I

    move-result v10

    aput v15, v0, v10
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    goto :goto_37

    :catch_37
    move-exception v0

    .line 842
    :goto_37
    invoke-static {}, Lcom/pikminx/helper/PostcardAutomation$Step;->values()[Lcom/pikminx/helper/PostcardAutomation$Step;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardAutomation$Step:[I

    :try_start_38
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardAutomation$Step:[I

    sget-object v10, Lcom/pikminx/helper/PostcardAutomation$Step;->OPEN_PETAL_SEARCH:Lcom/pikminx/helper/PostcardAutomation$Step;

    invoke-virtual {v10}, Lcom/pikminx/helper/PostcardAutomation$Step;->ordinal()I

    move-result v10

    aput v1, v0, v10
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    goto :goto_38

    :catch_38
    move-exception v0

    :goto_38
    :try_start_39
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardAutomation$Step:[I

    sget-object v10, Lcom/pikminx/helper/PostcardAutomation$Step;->ENTER_PETAL_SEARCH:Lcom/pikminx/helper/PostcardAutomation$Step;

    invoke-virtual {v10}, Lcom/pikminx/helper/PostcardAutomation$Step;->ordinal()I

    move-result v10

    aput v2, v0, v10
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    goto :goto_39

    :catch_39
    move-exception v0

    :goto_39
    :try_start_3a
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardAutomation$Step:[I

    sget-object v10, Lcom/pikminx/helper/PostcardAutomation$Step;->CLOSE_PETAL_KEYBOARD:Lcom/pikminx/helper/PostcardAutomation$Step;

    invoke-virtual {v10}, Lcom/pikminx/helper/PostcardAutomation$Step;->ordinal()I

    move-result v10

    aput v3, v0, v10
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    goto :goto_3a

    :catch_3a
    move-exception v0

    :goto_3a
    :try_start_3b
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardAutomation$Step:[I

    sget-object v10, Lcom/pikminx/helper/PostcardAutomation$Step;->SELECT_PETAL:Lcom/pikminx/helper/PostcardAutomation$Step;

    invoke-virtual {v10}, Lcom/pikminx/helper/PostcardAutomation$Step;->ordinal()I

    move-result v10

    aput v4, v0, v10
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    goto :goto_3b

    :catch_3b
    move-exception v0

    :goto_3b
    :try_start_3c
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardAutomation$Step:[I

    sget-object v10, Lcom/pikminx/helper/PostcardAutomation$Step;->TAP_NEXT:Lcom/pikminx/helper/PostcardAutomation$Step;

    invoke-virtual {v10}, Lcom/pikminx/helper/PostcardAutomation$Step;->ordinal()I

    move-result v10

    aput v5, v0, v10
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    goto :goto_3c

    :catch_3c
    move-exception v0

    :goto_3c
    :try_start_3d
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardAutomation$Step:[I

    sget-object v10, Lcom/pikminx/helper/PostcardAutomation$Step;->GO:Lcom/pikminx/helper/PostcardAutomation$Step;

    invoke-virtual {v10}, Lcom/pikminx/helper/PostcardAutomation$Step;->ordinal()I

    move-result v10

    aput v6, v0, v10
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    goto :goto_3d

    :catch_3d
    move-exception v0

    :goto_3d
    :try_start_3e
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardAutomation$Step:[I

    sget-object v10, Lcom/pikminx/helper/PostcardAutomation$Step;->RECEIVE:Lcom/pikminx/helper/PostcardAutomation$Step;

    invoke-virtual {v10}, Lcom/pikminx/helper/PostcardAutomation$Step;->ordinal()I

    move-result v10

    aput v7, v0, v10
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    goto :goto_3e

    :catch_3e
    move-exception v0

    :goto_3e
    :try_start_3f
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardAutomation$Step:[I

    sget-object v10, Lcom/pikminx/helper/PostcardAutomation$Step;->WAIT_RECEIPT_EXIT:Lcom/pikminx/helper/PostcardAutomation$Step;

    invoke-virtual {v10}, Lcom/pikminx/helper/PostcardAutomation$Step;->ordinal()I

    move-result v10

    aput v8, v0, v10
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    goto :goto_3f

    :catch_3f
    move-exception v0

    :goto_3f
    :try_start_40
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardAutomation$Step:[I

    sget-object v8, Lcom/pikminx/helper/PostcardAutomation$Step;->FIND_FLOWER:Lcom/pikminx/helper/PostcardAutomation$Step;

    invoke-virtual {v8}, Lcom/pikminx/helper/PostcardAutomation$Step;->ordinal()I

    move-result v8

    aput v9, v0, v8
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    goto :goto_40

    :catch_40
    move-exception v0

    .line 646
    :goto_40
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->values()[Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationMode:[I

    :try_start_41
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationMode:[I

    sget-object v8, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->FEED:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    invoke-virtual {v8}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->ordinal()I

    move-result v8

    aput v1, v0, v8
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    goto :goto_41

    :catch_41
    move-exception v0

    :goto_41
    :try_start_42
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationMode:[I

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->FEED_STOCK_SCAN:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    goto :goto_42

    :catch_42
    move-exception v0

    :goto_42
    :try_start_43
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationMode:[I

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->RETURN_REWARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    goto :goto_43

    :catch_43
    move-exception v0

    :goto_43
    :try_start_44
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationMode:[I

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->SEEDLING_CLEANUP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    goto :goto_44

    :catch_44
    move-exception v0

    :goto_44
    :try_start_45
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationMode:[I

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->SEEDLING_INSPECT:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    goto :goto_45

    :catch_45
    move-exception v0

    :goto_45
    :try_start_46
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationMode:[I

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->DISPATCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    goto :goto_46

    :catch_46
    move-exception v0

    :goto_46
    :try_start_47
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PetalAccessibilityService$AutomationMode:[I

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->POSTCARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    goto :goto_47

    :catch_47
    move-exception v0

    :goto_47
    return-void
.end method
