.class final Lcom/pikminx/helper/PlantingControlEvidence;
.super Lcom/android/tools/r8/RecordTag;
.source "PlantingControlEvidence.java"


# instance fields
.field private final accessibilityStartVisible:Z

.field private final accessibilityStopVisible:Z

.field private final detection:Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;

.field private final ocrStartControl:Lcom/pikminx/helper/PetalMatcher$Token;


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
    invoke-direct {p0}, Lcom/pikminx/helper/PlantingControlEvidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/PlantingControlEvidence;

    invoke-direct {p1}, Lcom/pikminx/helper/PlantingControlEvidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/pikminx/helper/PlantingControlEvidence;->detection:Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;

    iget-object v1, p0, Lcom/pikminx/helper/PlantingControlEvidence;->ocrStartControl:Lcom/pikminx/helper/PetalMatcher$Token;

    iget-boolean v2, p0, Lcom/pikminx/helper/PlantingControlEvidence;->accessibilityStartVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pikminx/helper/PlantingControlEvidence;->accessibilityStopVisible:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;Lcom/pikminx/helper/PetalMatcher$Token;ZZ)V
    .locals 0
    .param p1, "detection"    # Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;
    .param p2, "ocrStartControl"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p3, "accessibilityStartVisible"    # Z
    .param p4, "accessibilityStopVisible"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "detection",
            "ocrStartControl",
            "accessibilityStartVisible",
            "accessibilityStopVisible"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PlantingControlEvidence;->detection:Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;

    iput-object p2, p0, Lcom/pikminx/helper/PlantingControlEvidence;->ocrStartControl:Lcom/pikminx/helper/PetalMatcher$Token;

    iput-boolean p3, p0, Lcom/pikminx/helper/PlantingControlEvidence;->accessibilityStartVisible:Z

    iput-boolean p4, p0, Lcom/pikminx/helper/PlantingControlEvidence;->accessibilityStopVisible:Z

    return-void
.end method


# virtual methods
.method public accessibilityStartVisible()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/pikminx/helper/PlantingControlEvidence;->accessibilityStartVisible:Z

    return v0
.end method

.method public accessibilityStopVisible()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/pikminx/helper/PlantingControlEvidence;->accessibilityStopVisible:Z

    return v0
.end method

.method public detection()Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/pikminx/helper/PlantingControlEvidence;->detection:Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Lcom/pikminx/helper/PlantingControlEvidence;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/PlantingControlEvidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ocrStartControl()Lcom/pikminx/helper/PetalMatcher$Token;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/pikminx/helper/PlantingControlEvidence;->ocrStartControl:Lcom/pikminx/helper/PetalMatcher$Token;

    return-object v0
.end method

.method startVisible()Z
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/pikminx/helper/PlantingControlEvidence;->visualStartControl()Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pikminx/helper/PlantingControlEvidence;->ocrStartControl:Lcom/pikminx/helper/PetalMatcher$Token;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/pikminx/helper/PlantingControlEvidence;->accessibilityStartVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method stopVisible()Z
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/pikminx/helper/PlantingControlEvidence;->visualStopControl()Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/pikminx/helper/PlantingControlEvidence;->accessibilityStopVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/pikminx/helper/PlantingControlEvidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/PlantingControlEvidence;

    const-string v2, "detection;ocrStartControl;accessibilityStartVisible;accessibilityStopVisible"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visualStartControl()Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/pikminx/helper/PlantingControlEvidence;->detection:Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;

    invoke-virtual {v0}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->startControl()Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    move-result-object v0

    return-object v0
.end method

.method visualStopControl()Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/pikminx/helper/PlantingControlEvidence;->detection:Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;

    invoke-virtual {v0}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->stopControl()Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    move-result-object v0

    return-object v0
.end method
