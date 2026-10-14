.class final Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;
.super Lcom/android/tools/r8/RecordTag;
.source "PlantingFlowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PlantingFlowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LowCountDecision"
.end annotation


# instance fields
.field private final action:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

.field private final nextFlower:Ljava/lang/String;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;

    invoke-direct {p1}, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;->action:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    iget-object v1, p0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;->nextFlower:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;
    .param p2, "nextFlower"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "nextFlower"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;->action:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    iput-object p2, p0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;->nextFlower:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public action()Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;->action:Lcom/pikminx/helper/PlantingFlowPolicy$LowCountAction;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0, p1}, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public nextFlower()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;->nextFlower:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/PlantingFlowPolicy$LowCountDecision;

    const-string v2, "action;nextFlower"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
