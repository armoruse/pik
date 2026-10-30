.class final enum Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;
.super Ljava/lang/Enum;
.source "PlantingFlowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PlantingFlowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EntryAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

.field public static final enum BEGIN_POT_SEARCH:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

.field public static final enum OPEN_MAP_ENTRY:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

.field public static final enum WAIT_FOR_SCREEN:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;
    .locals 3

    .line 7
    sget-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->OPEN_MAP_ENTRY:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    sget-object v1, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->BEGIN_POT_SEARCH:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    sget-object v2, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->WAIT_FOR_SCREEN:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    filled-new-array {v0, v1, v2}, [Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    const-string v1, "OPEN_MAP_ENTRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->OPEN_MAP_ENTRY:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    .line 9
    new-instance v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    const-string v1, "BEGIN_POT_SEARCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->BEGIN_POT_SEARCH:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    .line 10
    new-instance v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    const-string v1, "WAIT_FOR_SCREEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->WAIT_FOR_SCREEN:Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    .line 7
    invoke-static {}, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->$values()[Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->$VALUES:[Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;
    .locals 1

    .line 7
    sget-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->$VALUES:[Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PlantingFlowPolicy$EntryAction;

    return-object v0
.end method
