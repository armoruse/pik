.class final enum Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;
.super Ljava/lang/Enum;
.source "ExpeditionScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/ExpeditionScreenAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

.field public static final enum DETAIL:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

.field public static final enum EXPLORE_LIST:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

.field public static final enum PIKMIN_SELECTION:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

.field public static final enum RESULT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

.field public static final enum UNKNOWN:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;
    .locals 5

    .line 17
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->EXPLORE_LIST:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    sget-object v1, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->DETAIL:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    sget-object v2, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->PIKMIN_SELECTION:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    sget-object v3, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->RESULT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    sget-object v4, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->UNKNOWN:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    const-string v1, "EXPLORE_LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->EXPLORE_LIST:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    .line 19
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    const-string v1, "DETAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->DETAIL:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    .line 20
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    const-string v1, "PIKMIN_SELECTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->PIKMIN_SELECTION:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    .line 21
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    const-string v1, "RESULT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->RESULT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    .line 22
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->UNKNOWN:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    .line 17
    invoke-static {}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->$values()[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->$VALUES:[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;
    .locals 1

    .line 17
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->$VALUES:[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    invoke-virtual {v0}, [Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Screen;

    return-object v0
.end method
