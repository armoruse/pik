.class final enum Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;
.super Ljava/lang/Enum;
.source "PlantingFlowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PlantingFlowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LowCountAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

.field public static final enum SEARCH_NEXT:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

.field public static final enum STOP_PLANTING:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;
    .locals 2

    .line 19
    sget-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;->SEARCH_NEXT:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    sget-object v1, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;->STOP_PLANTING:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    filled-new-array {v0, v1}, [Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    const-string v1, "SEARCH_NEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;->SEARCH_NEXT:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    .line 21
    new-instance v0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    const-string v1, "STOP_PLANTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;->STOP_PLANTING:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    .line 19
    invoke-static {}, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;->$values()[Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;->$VALUES:[Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;
    .locals 1

    .line 19
    sget-object v0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;->$VALUES:[Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    return-object v0
.end method
