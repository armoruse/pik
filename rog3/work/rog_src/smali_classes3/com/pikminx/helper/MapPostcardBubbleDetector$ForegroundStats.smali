.class final Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;
.super Lcom/android/tools/r8/RecordTag;
.source "MapPostcardBubbleDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/MapPostcardBubbleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForegroundStats"
.end annotation


# instance fields
.field private final heightCoverage:F

.field private final ratio:F

.field private final widthCoverage:F


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
    invoke-direct {p0}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;

    invoke-direct {p1}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->ratio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->widthCoverage:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->heightCoverage:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(FFF)V
    .locals 0
    .param p1, "ratio"    # F
    .param p2, "widthCoverage"    # F
    .param p3, "heightCoverage"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ratio",
            "widthCoverage",
            "heightCoverage"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->ratio:F

    iput p2, p0, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->widthCoverage:F

    iput p3, p0, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->heightCoverage:F

    return-void
.end method

.method synthetic constructor <init>(FFFLcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 139
    invoke-direct {p0, p1}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public heightCoverage()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->heightCoverage:F

    return v0
.end method

.method public ratio()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->ratio:F

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 139
    invoke-direct {p0}, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;

    const-string v2, "ratio;widthCoverage;heightCoverage"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widthCoverage()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/pikminx/helper/MapPostcardBubbleDetector$ForegroundStats;->widthCoverage:F

    return v0
.end method
