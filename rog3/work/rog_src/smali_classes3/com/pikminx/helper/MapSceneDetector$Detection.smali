.class final Lcom/pikminx/helper/MapSceneDetector$Detection;
.super Lcom/android/tools/r8/RecordTag;
.source "MapSceneDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/MapSceneDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Detection"
.end annotation


# instance fields
.field private final flowers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapFlowerDetector$Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mushrooms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapFlowerDetector$Point;",
            ">;"
        }
    .end annotation
.end field


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
    invoke-direct {p0}, Lcom/pikminx/helper/MapSceneDetector$Detection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/MapSceneDetector$Detection;

    invoke-direct {p1}, Lcom/pikminx/helper/MapSceneDetector$Detection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/pikminx/helper/MapSceneDetector$Detection;->flowers:Ljava/util/List;

    iget-object v1, p0, Lcom/pikminx/helper/MapSceneDetector$Detection;->mushrooms:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flowers",
            "mushrooms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapFlowerDetector$Point;",
            ">;",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapFlowerDetector$Point;",
            ">;)V"
        }
    .end annotation

    .line 11
    .local p1, "flowers":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    .local p2, "mushrooms":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/MapFlowerDetector$Point;>;"
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/MapSceneDetector$Detection;->flowers:Ljava/util/List;

    iput-object p2, p0, Lcom/pikminx/helper/MapSceneDetector$Detection;->mushrooms:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 11
    invoke-direct {p0, p1}, Lcom/pikminx/helper/MapSceneDetector$Detection;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public flowers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapFlowerDetector$Point;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/pikminx/helper/MapSceneDetector$Detection;->flowers:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/MapSceneDetector$Detection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public mushrooms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/MapFlowerDetector$Point;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/pikminx/helper/MapSceneDetector$Detection;->mushrooms:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 11
    invoke-direct {p0}, Lcom/pikminx/helper/MapSceneDetector$Detection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/MapSceneDetector$Detection;

    const-string v2, "flowers;mushrooms"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
