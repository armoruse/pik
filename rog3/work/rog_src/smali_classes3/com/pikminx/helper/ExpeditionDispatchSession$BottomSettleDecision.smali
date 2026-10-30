.class final enum Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;
.super Ljava/lang/Enum;
.source "ExpeditionDispatchSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/ExpeditionDispatchSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BottomSettleDecision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

.field public static final enum FAILED:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

.field public static final enum READY:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

.field public static final enum SWIPE_UP:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;
    .locals 3

    .line 34
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->SWIPE_UP:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->READY:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    sget-object v2, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->FAILED:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    filled-new-array {v0, v1, v2}, [Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    const-string v1, "SWIPE_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->SWIPE_UP:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    .line 36
    new-instance v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    const-string v1, "READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->READY:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    .line 37
    new-instance v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    const-string v1, "FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->FAILED:Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    .line 34
    invoke-static {}, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->$values()[Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->$VALUES:[Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;
    .locals 1

    .line 34
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->$VALUES:[Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    invoke-virtual {v0}, [Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/ExpeditionDispatchSession$BottomSettleDecision;

    return-object v0
.end method
