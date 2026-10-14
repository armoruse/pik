.class final Lcom/pikminx/helper/GeometryValidation$Evidence;
.super Lcom/android/tools/r8/RecordTag;
.source "GeometryValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/GeometryValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Evidence"
.end annotation


# instance fields
.field private final minor:Z

.field private final roiContentMismatch:Z

.field private final scaleMismatch:Z

.field private final systematicOffset:Z

.field private final unknown:Z

.field private final windowBoundsMismatch:Z


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
    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$Evidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/GeometryValidation$Evidence;

    invoke-direct {p1}, Lcom/pikminx/helper/GeometryValidation$Evidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 7

    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->minor:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->systematicOffset:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->scaleMismatch:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->windowBoundsMismatch:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->roiContentMismatch:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->unknown:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(ZZZZZZ)V
    .locals 0
    .param p1, "minor"    # Z
    .param p2, "systematicOffset"    # Z
    .param p3, "scaleMismatch"    # Z
    .param p4, "windowBoundsMismatch"    # Z
    .param p5, "roiContentMismatch"    # Z
    .param p6, "unknown"    # Z
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
            "minor",
            "systematicOffset",
            "scaleMismatch",
            "windowBoundsMismatch",
            "roiContentMismatch",
            "unknown"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-boolean p1, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->minor:Z

    iput-boolean p2, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->systematicOffset:Z

    iput-boolean p3, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->scaleMismatch:Z

    iput-boolean p4, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->windowBoundsMismatch:Z

    iput-boolean p5, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->roiContentMismatch:Z

    iput-boolean p6, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->unknown:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    invoke-direct {p0, p1}, Lcom/pikminx/helper/GeometryValidation$Evidence;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$Evidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public minor()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->minor:Z

    return v0
.end method

.method public roiContentMismatch()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->roiContentMismatch:Z

    return v0
.end method

.method public scaleMismatch()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->scaleMismatch:Z

    return v0
.end method

.method public systematicOffset()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->systematicOffset:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 60
    invoke-direct {p0}, Lcom/pikminx/helper/GeometryValidation$Evidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/GeometryValidation$Evidence;

    const-string v2, "minor;systematicOffset;scaleMismatch;windowBoundsMismatch;roiContentMismatch;unknown"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unknown()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->unknown:Z

    return v0
.end method

.method public windowBoundsMismatch()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/pikminx/helper/GeometryValidation$Evidence;->windowBoundsMismatch:Z

    return v0
.end method
