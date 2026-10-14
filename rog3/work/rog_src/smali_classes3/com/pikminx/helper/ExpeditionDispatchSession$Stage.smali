.class final enum Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
.super Ljava/lang/Enum;
.source "ExpeditionDispatchSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/ExpeditionDispatchSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

.field public static final enum DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

.field public static final enum LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

.field public static final enum SELECTION:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

.field public static final enum VERIFY_RETURN:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

.field public static final enum WAIT_RESULT:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    .locals 5

    .line 14
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    sget-object v2, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->SELECTION:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    sget-object v3, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->WAIT_RESULT:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    sget-object v4, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->VERIFY_RETURN:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    const-string v1, "LIST_SEARCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 16
    new-instance v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    const-string v1, "DETAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->DETAIL:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 17
    new-instance v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    const-string v1, "SELECTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->SELECTION:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 18
    new-instance v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    const-string v1, "WAIT_RESULT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->WAIT_RESULT:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 19
    new-instance v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    const-string v1, "VERIFY_RETURN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->VERIFY_RETURN:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    .line 14
    invoke-static {}, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->$values()[Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->$VALUES:[Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;
    .locals 1

    .line 14
    sget-object v0, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->$VALUES:[Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    invoke-virtual {v0}, [Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    return-object v0
.end method
