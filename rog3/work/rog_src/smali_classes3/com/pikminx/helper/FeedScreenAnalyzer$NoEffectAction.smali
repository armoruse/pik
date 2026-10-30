.class final enum Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;
.super Ljava/lang/Enum;
.source "FeedScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/FeedScreenAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NoEffectAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

.field public static final enum GIVE_UP:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

.field public static final enum RETRY:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

.field public static final enum WAIT:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;
    .locals 3

    .line 17
    sget-object v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->WAIT:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    sget-object v1, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->RETRY:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    sget-object v2, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->GIVE_UP:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    filled-new-array {v0, v1, v2}, [Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    const-string v1, "WAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->WAIT:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    .line 19
    new-instance v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    const-string v1, "RETRY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->RETRY:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    .line 20
    new-instance v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    const-string v1, "GIVE_UP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->GIVE_UP:Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    .line 17
    invoke-static {}, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->$values()[Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->$VALUES:[Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;
    .locals 1

    .line 17
    sget-object v0, Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->$VALUES:[Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    invoke-virtual {v0}, [Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/FeedScreenAnalyzer$NoEffectAction;

    return-object v0
.end method
