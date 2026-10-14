.class final Lcom/pikminx/helper/GeometryValidation$RoiSanity;
.super Lcom/android/tools/r8/RecordTag;
.source "GeometryValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/GeometryValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RoiSanity"
.end annotation


# instance fields
.field private final positiveHeight:Z

.field private final positiveWidth:Z

.field private final withinBitmap:Z

.field private final withinTargetWindow:Z


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
    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    invoke-direct {p1}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinBitmap:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinTargetWindow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveWidth:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveHeight:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(ZZZZ)V
    .locals 0
    .param p1, "withinBitmap"    # Z
    .param p2, "withinTargetWindow"    # Z
    .param p3, "positiveWidth"    # Z
    .param p4, "positiveHeight"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "withinBitmap",
            "withinTargetWindow",
            "positiveWidth",
            "positiveHeight"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-boolean p1, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinBitmap:Z

    iput-boolean p2, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinTargetWindow:Z

    iput-boolean p3, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveWidth:Z

    iput-boolean p4, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveHeight:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0, p1}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public positiveHeight()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveHeight:Z

    return v0
.end method

.method public positiveWidth()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveWidth:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/GeometryValidation$RoiSanity;

    const-string v2, "withinBitmap;withinTargetWindow;positiveWidth;positiveHeight"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valid()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinBitmap:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinTargetWindow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveWidth:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveHeight:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method warnings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .local v0, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinBitmap:Z

    if-nez v1, :cond_0

    .line 45
    const-string v1, "ROI_OUTSIDE_BITMAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    iget-boolean v1, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinTargetWindow:Z

    if-nez v1, :cond_1

    .line 48
    const-string v1, "ROI_OUTSIDE_TARGET_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    iget-boolean v1, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveWidth:Z

    if-nez v1, :cond_2

    .line 51
    const-string v1, "ROI_NON_POSITIVE_WIDTH"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2
    iget-boolean v1, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->positiveHeight:Z

    if-nez v1, :cond_3

    .line 54
    const-string v1, "ROI_NON_POSITIVE_HEIGHT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_3
    invoke-static {v0}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public withinBitmap()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinBitmap:Z

    return v0
.end method

.method public withinTargetWindow()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$RoiSanity;->withinTargetWindow:Z

    return v0
.end method
