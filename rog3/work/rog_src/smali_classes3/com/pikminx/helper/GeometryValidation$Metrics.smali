.class final Lcom/pikminx/helper/GeometryValidation$Metrics;
.super Lcom/android/tools/r8/RecordTag;
.source "GeometryValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/GeometryValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Metrics"
.end annotation


# instance fields
.field private final targetOffsetBottomRatio:F

.field private final targetOffsetLeftRatio:F

.field private final targetOffsetRightRatio:F

.field private final targetOffsetTopRatio:F

.field private final targetWindowCoverageX:F

.field private final targetWindowCoverageY:F


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
    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$Metrics;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/GeometryValidation$Metrics;

    invoke-direct {p1}, Lcom/pikminx/helper/GeometryValidation$Metrics;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetWindowCoverageX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetWindowCoverageY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetTopRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetBottomRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetLeftRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetRightRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "targetWindowCoverageX"    # F
    .param p2, "targetWindowCoverageY"    # F
    .param p3, "targetOffsetTopRatio"    # F
    .param p4, "targetOffsetBottomRatio"    # F
    .param p5, "targetOffsetLeftRatio"    # F
    .param p6, "targetOffsetRightRatio"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetWindowCoverageX",
            "targetWindowCoverageY",
            "targetOffsetTopRatio",
            "targetOffsetBottomRatio",
            "targetOffsetLeftRatio",
            "targetOffsetRightRatio"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetWindowCoverageX:F

    iput p2, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetWindowCoverageY:F

    iput p3, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetTopRatio:F

    iput p4, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetBottomRatio:F

    iput p5, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetLeftRatio:F

    iput p6, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetRightRatio:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0, p1}, Lcom/pikminx/helper/GeometryValidation$Metrics;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$Metrics;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public targetOffsetBottomRatio()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetBottomRatio:F

    return v0
.end method

.method public targetOffsetLeftRatio()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetLeftRatio:F

    return v0
.end method

.method public targetOffsetRightRatio()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetRightRatio:F

    return v0
.end method

.method public targetOffsetTopRatio()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetOffsetTopRatio:F

    return v0
.end method

.method public targetWindowCoverageX()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetWindowCoverageX:F

    return v0
.end method

.method public targetWindowCoverageY()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/pikminx/helper/GeometryValidation$Metrics;->targetWindowCoverageY:F

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$Metrics;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/GeometryValidation$Metrics;

    const-string v2, "targetWindowCoverageX;targetWindowCoverageY;targetOffsetTopRatio;targetOffsetBottomRatio;targetOffsetLeftRatio;targetOffsetRightRatio"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
