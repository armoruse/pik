.class final enum Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;
.super Ljava/lang/Enum;
.source "ExpeditionDispatchSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/ExpeditionDispatchSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ListScanDecision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

.field public static final enum AT_LIST_START:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

.field public static final enum SCROLL:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

.field public static final enum WAIT:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;
    .locals 3

    .line 28
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->WAIT:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->SCROLL:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    sget-object v2, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->AT_LIST_START:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    filled-new-array {v0, v1, v2}, [Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    const-string v1, "WAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->WAIT:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    .line 30
    new-instance v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    const-string v1, "SCROLL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->SCROLL:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    .line 31
    new-instance v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    const-string v1, "AT_LIST_START"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->AT_LIST_START:Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    .line 28
    invoke-static {}, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->$values()[Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->$VALUES:[Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;
    .locals 1

    .line 28
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->$VALUES:[Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    invoke-virtual {v0}, [Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/ExpeditionDispatchSession$ListScanDecision;

    return-object v0
.end method
