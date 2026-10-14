.class final Lcom/pikminx/helper/MapSceneDetector$Component;
.super Lcom/android/tools/r8/RecordTag;
.source "MapSceneDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/MapSceneDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Component"
.end annotation


# instance fields
.field private final area:I

.field private final height:I

.field private final width:I

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
    invoke-direct {p0}, Lcom/pikminx/helper/MapSceneDetector$Component;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/MapSceneDetector$Component;

    invoke-direct {p1}, Lcom/pikminx/helper/MapSceneDetector$Component;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->area:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(IIIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "area"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "area",
            "width",
            "height"
        }
    .end annotation

    .line 587
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->x:I

    iput p2, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->y:I

    iput p3, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->area:I

    iput p4, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->width:I

    iput p5, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->height:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILcom/pikminx/helper/MapSceneDetector$Component-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/pikminx/helper/MapSceneDetector$Component;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public area()I
    .locals 1

    .line 587
    iget v0, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->area:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 587
    invoke-direct {p0, p1}, Lcom/pikminx/helper/MapSceneDetector$Component;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 587
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/MapSceneDetector$Component;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public height()I
    .locals 1

    .line 587
    iget v0, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->height:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 587
    invoke-direct {p0}, Lcom/pikminx/helper/MapSceneDetector$Component;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/MapSceneDetector$Component;

    const-string v2, "x;y;area;width;height"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 1

    .line 587
    iget v0, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->width:I

    return v0
.end method

.method public x()I
    .locals 1

    .line 587
    iget v0, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->x:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 587
    iget v0, p0, Lcom/pikminx/helper/MapSceneDetector$Component;->y:I

    return v0
.end method
