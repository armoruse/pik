.class final Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;
.super Lcom/android/tools/r8/RecordTag;
.source "CardHighlight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/CardHighlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlantingMenuControls"
.end annotation


# instance fields
.field private final startControl:Lcom/pikminx/helper/CardHighlight$Point;

.field private final stopControl:Lcom/pikminx/helper/CardHighlight$Point;


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
    invoke-direct {p0}, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;

    invoke-direct {p1}, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->startControl:Lcom/pikminx/helper/CardHighlight$Point;

    iget-object v1, p0, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->stopControl:Lcom/pikminx/helper/CardHighlight$Point;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/pikminx/helper/CardHighlight$Point;Lcom/pikminx/helper/CardHighlight$Point;)V
    .locals 0
    .param p1, "startControl"    # Lcom/pikminx/helper/CardHighlight$Point;
    .param p2, "stopControl"    # Lcom/pikminx/helper/CardHighlight$Point;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startControl",
            "stopControl"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->startControl:Lcom/pikminx/helper/CardHighlight$Point;

    iput-object p2, p0, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->stopControl:Lcom/pikminx/helper/CardHighlight$Point;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 23
    invoke-direct {p0, p1}, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public startControl()Lcom/pikminx/helper/CardHighlight$Point;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->startControl:Lcom/pikminx/helper/CardHighlight$Point;

    return-object v0
.end method

.method public stopControl()Lcom/pikminx/helper/CardHighlight$Point;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->stopControl:Lcom/pikminx/helper/CardHighlight$Point;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/CardHighlight$PlantingMenuControls;

    const-string v2, "startControl;stopControl"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
