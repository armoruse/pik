.class final Lcom/pikminx/helper/ExpeditionDispatchSession;
.super Ljava/lang/Object;
.source "ExpeditionDispatchSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;,
        Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;,
        Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;,
        Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    }
.end annotation


# static fields
.field private static final DETAIL_TAP_RETRY_DELAY_MILLIS:J = 0x708L

.field private static final MAX_BOTTOM_SETTLE_SWIPES:I = 0x4

.field static final MAX_DETAIL_TAP_ATTEMPTS:I = 0x4

.field private static final REQUIRED_DESTINATION_FRAMES:I = 0x2

.field private static final STAGE_TIMEOUT_MILLIS:J = 0x5dc0L


# instance fields
.field private bottomSettled:Z

.field private bottomSwipeAttempts:I

.field private completedCount:I

.field private detailTapAt:J

.field private detailTapAttempts:I

.field private listMissFrames:I

.field private matchingDestinationFrames:I

.field private matchingFrames:I

.field private pendingDestinationScreen:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

.field private pendingKey:Ljava/lang/String;

.field private postReturnRevealPending:Z

.field private final skippedTargetKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

.field private stageStartedAt:J

.field private final targetCount:I

.field private transitionPending:Z


# direct methods
.field private exploreRecoveryItem:I
.field private exploreRecoveryTaps:I
.field private exploreRecoveryAt:J

.method constructor <init>(IJ)V
    .locals 2
    .param p1, "targetCount"    # I
    .param p2, "nowMillis"    # J

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingKey:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->UNKNOWN:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingDestinationScreen:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    .line 258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->skippedTargetKeys:Ljava/util/Set;

    .line 64
    const/16 v0, 0x63

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->targetCount:I

    .line 65
    iput-wide p2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J

    .line 66
    return-void
.end method

.method private static allowed(Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;)Z
    .locals 3
    .param p0, "from"    # Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    .param p1, "to"    # Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 308
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$1;->$SwitchMap$com$pikminx$helper$ExpeditionDispatchSession$Stage:[I

    invoke-virtual {p0}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw v0

    .line 313
    :pswitch_0
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-ne p1, v0, :cond_3

    move v1, v2

    goto :goto_0

    .line 312
    :pswitch_1
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->VERIFY_RETURN:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-ne p1, v0, :cond_3

    move v1, v2

    goto :goto_0

    .line 311
    :pswitch_2
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->WAIT_RESULT:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-ne p1, v0, :cond_3

    :cond_0
    move v1, v2

    goto :goto_0

    .line 310
    :pswitch_3
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->SELECTION:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-ne p1, v0, :cond_3

    :cond_1
    move v1, v2

    goto :goto_0

    .line 309
    :pswitch_4
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->SELECTION:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-ne p1, v0, :cond_3

    :cond_2
    move v1, v2

    .line 308
    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetDestinationEvidence()V
    .locals 1

    .line 303
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->UNKNOWN:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingDestinationScreen:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingDestinationFrames:I

    .line 305
    return-void
.end method

.method private resetDetailTap()V
    .locals 2

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->detailTapAttempts:I

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->detailTapAt:J

    .line 224
    return-void
.end method

.method private resetListScan()V
    .locals 1

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->listMissFrames:I

    .line 217
    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->bottomSwipeAttempts:I

    .line 218
    iput-boolean v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->bottomSettled:Z

    .line 219
    return-void
.end method


# virtual methods
.method advance(Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;J)Z
    .locals 2
    .param p1, "expected"    # Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    .param p2, "next"    # Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    .param p3, "nowMillis"    # J

    .line 199
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    invoke-static {p1, p2}, Lcom/pikminx/helper/ExpeditionDispatchSession;->allowed(Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iput-object p2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 203
    iput-wide p3, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingKey:Ljava/lang/String;

    .line 205
    iput v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I

    .line 206
    iput-boolean v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->transitionPending:Z

    .line 207
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->resetDestinationEvidence()V

    .line 208
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->resetListScan()V

    .line 209
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-ne p1, v0, :cond_2

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->resetDetailTap()V

    .line 212
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_3
    :goto_0
    return v1
.end method

.method advanceForVerifiedScreen(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;J)Z
    .locals 5
    .param p1, "screen"    # Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;
    .param p2, "nowMillis"    # J

    .line 229
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$1;->$SwitchMap$com$pikminx$helper$ExpeditionDispatchSession$Stage:[I

    iget-object v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    invoke-virtual {v1}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw v0

    .line 242
    :pswitch_0
    goto :goto_0

    .line 240
    :pswitch_1
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->EXPLORE_LIST:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    if-ne p1, v0, :cond_0

    .line 241
    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->VERIFY_RETURN:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    goto :goto_0

    :cond_0
    goto :goto_0

    .line 236
    :pswitch_2
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->RESULT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    if-ne p1, v0, :cond_1

    .line 237
    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->WAIT_RESULT:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    goto :goto_0

    .line 238
    :cond_1
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->EXPLORE_LIST:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    if-ne p1, v0, :cond_2

    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    goto :goto_0

    .line 239
    :cond_2
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->DETAIL:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    if-ne p1, v0, :cond_5

    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    goto :goto_0

    .line 233
    :pswitch_3
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->PIKMIN_SELECTION:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    if-ne p1, v0, :cond_3

    .line 234
    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->SELECTION:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    goto :goto_0

    .line 235
    :cond_3
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->EXPLORE_LIST:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    if-ne p1, v0, :cond_5

    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    goto :goto_0

    .line 230
    :pswitch_4
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->DETAIL:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    if-ne p1, v0, :cond_4

    .line 231
    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    goto :goto_0

    .line 232
    :cond_4
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->PIKMIN_SELECTION:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    if-ne p1, v0, :cond_5

    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->SELECTION:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 242
    :cond_5
    :goto_0
    move-object v0, v1

    .line 244
    .local v0, "next":Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 245
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->resetDestinationEvidence()V

    .line 246
    return v1

    .line 248
    :cond_6
    iget-object v2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingDestinationScreen:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    const/4 v3, 0x1

    if-eq p1, v2, :cond_7

    .line 249
    iput-object p1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingDestinationScreen:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    .line 250
    iput v3, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingDestinationFrames:I

    .line 251
    return v1

    .line 253
    :cond_7
    iget v2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingDestinationFrames:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingDestinationFrames:I

    .line 254
    iget v2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingDestinationFrames:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_8

    iget-object v2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 255
    invoke-virtual {p0, v2, v0, p2, p3}, Lcom/pikminx/helper/ExpeditionDispatchSession;->advance(Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;J)Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v3

    goto :goto_1

    :cond_8
    nop

    .line 254
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method beginDetailTapTransition(J)Z
    .locals 2
    .param p1, "nowMillis"    # J

    .line 139
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->detailTapAttempts:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->detailTapAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->detailTapAttempts:I

    .line 143
    iput-wide p1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->detailTapAt:J

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/pikminx/helper/ExpeditionDispatchSession;->beginTransition(J)V

    .line 145
    return v1

    .line 140
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method beginTransition(J)V
    .locals 1
    .param p1, "nowMillis"    # J

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->transitionPending:Z

    .line 131
    iput-wide p1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingKey:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I

    .line 134
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->resetDestinationEvidence()V

    .line 135
    return-void
.end method

.method complete()Z
    .locals 2

    .line 81
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->completedCount:I

    iget v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->targetCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method completedCount()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->completedCount:I

    return v0
.end method

.method confirm(Ljava/lang/String;J)Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nowMillis"    # J

    .line 175
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->confirm(Ljava/lang/String;JI)Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;

    move-result-object v0

    return-object v0
.end method

.method confirm(Ljava/lang/String;JI)Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nowMillis"    # J
    .param p4, "requiredFrames"    # I

    .line 179
    iget-wide v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x5dc0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 180
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->STAGE_TIMEOUT:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;

    return-object v0

    .line 182
    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 183
    .local v1, "safeKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingKey:Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I

    .line 186
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->WAIT:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;

    return-object v0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 189
    iput-object v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingKey:Ljava/lang/String;

    .line 190
    iput v2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I

    .line 191
    if-gt p4, v2, :cond_3

    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->READY:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->WAIT:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;

    :goto_1
    return-object v0

    .line 193
    :cond_4
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I

    .line 194
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 195
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->READY:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->WAIT:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;

    .line 194
    :goto_2
    return-object v0
.end method

.method detailTapAt()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->detailTapAt:J

    return-wide v0
.end method

.method detailTapAttempts()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->detailTapAttempts:I

    return v0
.end method

.method isTargetSkipped(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetKey"    # Ljava/lang/String;

    .line 271
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->skippedTargetKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method observeListForBottom(ZJ)Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;
    .locals 3
    .param p1, "panelExpanded"    # Z
    .param p2, "nowMillis"    # J

    .line 87
    iget-boolean v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->postReturnRevealPending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    iput-boolean v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->postReturnRevealPending:Z

    .line 89
    iput-wide p2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J

    if-nez p1, :cond_0

    .line 90
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->SWIPE_UP:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    return-object v0

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->bottomSettled:Z

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->READY:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    return-object v0

    .line 95
    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 96
    iput-boolean v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->bottomSettled:Z

    .line 97
    iput v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->listMissFrames:I

    .line 98
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->READY:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    return-object v0

    .line 100
    :cond_2
    iget v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->bottomSwipeAttempts:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 101
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->FAILED:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    return-object v0

    .line 103
    :cond_3
    iget v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->bottomSwipeAttempts:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->bottomSwipeAttempts:I

    .line 104
    iput-wide p2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J

    .line 105
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->SWIPE_UP:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    return-object v0
.end method

.method recordCancelledBackToList(J)Z
    .locals 1
    .param p1, "nowMillis"    # J

    .line 275
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 276
    iput-wide p1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J

    .line 277
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingKey:Ljava/lang/String;

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I

    .line 279
    iput-boolean v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->transitionPending:Z

    .line 280
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->resetDestinationEvidence()V

    .line 281
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->resetListScan()V

    .line 282
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->resetDetailTap()V

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method recordListMiss(ZJ)Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;
    .locals 2
    .param p1, "listStartVisible"    # Z
    .param p2, "nowMillis"    # J

    .line 109
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->listMissFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->listMissFrames:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 110
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->WAIT:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->listMissFrames:I

    .line 113
    if-eqz p1, :cond_1

    .line 114
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->AT_LIST_START:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    return-object v0

    .line 116
    :cond_1
    iput-wide p2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J

    .line 117
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->SCROLL:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    return-object v0
.end method

.method recordListTargetFound()V
    .locals 1

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->listMissFrames:I

    .line 122
    return-void
.end method

.method recordProgress(J)V
    .locals 1
    .param p1, "nowMillis"    # J

    .line 169
    iput-wide p1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingKey:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I

    .line 172
    return-void
.end method

.method recordReturnedToList(J)Z
    .locals 3
    .param p1, "nowMillis"    # J

    .line 287
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->VERIFY_RETURN:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 288
    return v2

    .line 290
    :cond_0
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->completedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->completedCount:I

    .line 291
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 292
    iput-wide p1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J

    .line 293
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingKey:Ljava/lang/String;

    .line 294
    iput v2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I

    .line 295
    iput-boolean v2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->transitionPending:Z

    .line 296
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->resetDestinationEvidence()V

    .line 297
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->resetListScan()V

    .line 298
    iput-boolean v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->postReturnRevealPending:Z

    .line 299
    return v1
.end method

.method recordSkippedTarget(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetKey"    # Ljava/lang/String;

    .line 261
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->skippedTargetKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    return-void
.end method

.method shouldRetryDetailTap(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;J)Z
    .locals 4
    .param p1, "screen"    # Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;
    .param p2, "nowMillis"    # J

    .line 151
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->transitionPending:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->DETAIL:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->detailTapAttempts:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->detailTapAttempts:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->detailTapAt:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x708

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method skippedTargetKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->skippedTargetKeys:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method stage()Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    return-object v0
.end method

.method targetCount()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->targetCount:I

    return v0
.end method

.method transitionPending()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->transitionPending:Z

    return v0
.end method

.method confirmExploreTab(Ljava/lang/String;J)Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    .locals 6
    iget-wide v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stageStartedAt:J
    sub-long v0, p2, v0
    const-wide/16 v2, 0x5dc0
    cmp-long v0, v0, v2
    if-gez v0, :recovery_timeout
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    if-ne v0, v1, :recovery_wait
    iget-boolean v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->transitionPending:Z
    if-nez v0, :recovery_wait
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->completedCount:I
    iget v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryItem:I
    if-eq v0, v1, :recovery_budget
    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryItem:I
    const/4 v0, 0x0
    iput v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryTaps:I
    const-wide/16 v0, 0x0
    iput-wide v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryAt:J
    :recovery_budget
    iget v0, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryTaps:I
    if-eqz v0, :recovery_confirm
    iget-wide v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryAt:J
    sub-long v1, p2, v1
    const-wide/16 v3, 0xbb8
    cmp-long v1, v1, v3
    if-gez v1, :recovery_limit
    const-string v0, ""
    invoke-virtual {p0, v0, p2, p3}, Lcom/pikminx/helper/ExpeditionDispatchSession;->confirm(Ljava/lang/String;J)Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    goto :recovery_wait
    :recovery_limit
    const/4 v1, 0x2
    if-ge v0, v1, :recovery_timeout
    :recovery_confirm
    invoke-virtual {p0, p1, p2, p3}, Lcom/pikminx/helper/ExpeditionDispatchSession;->confirm(Ljava/lang/String;J)Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    move-result-object v0
    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->READY:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    if-ne v0, v1, :recovery_return
    iget v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryTaps:I
    add-int/lit8 v1, v1, 0x1
    iput v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryTaps:I
    iput-wide p2, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->exploreRecoveryAt:J
    const-string v1, ""
    iput-object v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->pendingKey:Ljava/lang/String;
    const/4 v1, 0x0
    iput v1, p0, Lcom/pikminx/helper/ExpeditionDispatchSession;->matchingFrames:I
    :recovery_return
    return-object v0
    :recovery_timeout
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->STAGE_TIMEOUT:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    return-object v0
    :recovery_wait
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;->WAIT:Lcom/pikminx/helper/ExpeditionDispatchSession$Confirmation;
    return-object v0
.end method
