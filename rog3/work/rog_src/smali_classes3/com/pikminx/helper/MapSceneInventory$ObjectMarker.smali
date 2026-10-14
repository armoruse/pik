.class final Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;
.super Lcom/android/tools/r8/RecordTag;
.source "MapSceneInventory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/MapSceneInventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObjectMarker"
.end annotation


# instance fields
.field private final kind:Lcom/pikminx/helper/MapSceneInventory$Kind;

.field private final x:I

.field private final y:I


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
    invoke-direct {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;

    invoke-direct {p1}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->kind:Lcom/pikminx/helper/MapSceneInventory$Kind;

    iget v1, p0, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/pikminx/helper/MapSceneInventory$Kind;II)V
    .locals 0
    .param p1, "kind"    # Lcom/pikminx/helper/MapSceneInventory$Kind;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "kind",
            "x",
            "y"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->kind:Lcom/pikminx/helper/MapSceneInventory$Kind;

    iput p2, p0, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->x:I

    iput p3, p0, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->y:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 21
    invoke-direct {p0, p1}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public kind()Lcom/pikminx/helper/MapSceneInventory$Kind;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->kind:Lcom/pikminx/helper/MapSceneInventory$Kind;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 21
    invoke-direct {p0}, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;

    const-string v2, "kind;x;y"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->x:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/pikminx/helper/MapSceneInventory$ObjectMarker;->y:I

    return v0
.end method
