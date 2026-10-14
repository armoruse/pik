.class final enum Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;
.super Ljava/lang/Enum;
.source "FeedTargetSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/FeedTargetSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MissingDecision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

.field public static final enum ADVANCED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

.field public static final enum EXHAUSTED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

.field public static final enum RETRY_CURRENT:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;
    .locals 3

    .line 12
    sget-object v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->RETRY_CURRENT:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    sget-object v1, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->ADVANCED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    sget-object v2, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->EXHAUSTED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    filled-new-array {v0, v1, v2}, [Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    const-string v1, "RETRY_CURRENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->RETRY_CURRENT:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    .line 14
    new-instance v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    const-string v1, "ADVANCED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->ADVANCED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    .line 15
    new-instance v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    const-string v1, "EXHAUSTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->EXHAUSTED:Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    .line 12
    invoke-static {}, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->$values()[Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->$VALUES:[Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;
    .locals 1

    .line 12
    sget-object v0, Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->$VALUES:[Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    invoke-virtual {v0}, [Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/FeedTargetSequence$MissingDecision;

    return-object v0
.end method
