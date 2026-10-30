.class final Lcom/pikminx/helper/FlowerDetailActionDetector$Target;
.super Lcom/android/tools/r8/RecordTag;
.source "FlowerDetailActionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/FlowerDetailActionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Target"
.end annotation


# instance fields
.field private final confidence:F

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
    invoke-direct {p0}, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;

    invoke-direct {p1}, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->confidence:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(IIIIF)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "confidence"    # F
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
            "width",
            "height",
            "confidence"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->x:I

    iput p2, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->y:I

    iput p3, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->width:I

    iput p4, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->height:I

    iput p5, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->confidence:F

    return-void
.end method


# virtual methods
.method public confidence()F
    .locals 1

    .line 7
    iget v0, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->confidence:F

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p1}, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public height()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->height:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;

    const-string v2, "x;y;width;height;confidence"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->width:I

    return v0
.end method

.method public x()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->x:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/pikminx/helper/FlowerDetailActionDetector$Target;->y:I

    return v0
.end method
