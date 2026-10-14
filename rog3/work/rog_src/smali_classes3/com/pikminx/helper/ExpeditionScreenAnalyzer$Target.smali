.class final Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;
.super Lcom/android/tools/r8/RecordTag;
.source "ExpeditionScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/ExpeditionScreenAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Target"
.end annotation


# instance fields
.field private final kind:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

.field private final label:Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;

    invoke-direct {p1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->kind:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    iget-object v1, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->label:Ljava/lang/String;

    iget v2, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;Ljava/lang/String;II)V
    .locals 0
    .param p1, "kind"    # Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kind",
            "label",
            "x",
            "y"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->kind:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    iput-object p2, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->label:Ljava/lang/String;

    iput p3, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->x:I

    iput p4, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->y:I

    return-void
.end method


# virtual methods
.method confirmationKey(II)Ljava/lang/String;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 33
    iget v0, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    const/4 v2, 0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 34
    .local v0, "xBucket":I
    iget v3, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 35
    .local v1, "yBucket":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->kind:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    invoke-virtual {v3}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0, p1}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public kind()Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->kind:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    return-object v0
.end method

.method public label()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;

    const-string v2, "kind;label;x;y"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->x:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;->y:I

    return v0
.end method
