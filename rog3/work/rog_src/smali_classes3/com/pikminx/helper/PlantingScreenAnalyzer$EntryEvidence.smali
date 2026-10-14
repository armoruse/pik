.class final Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;
.super Lcom/android/tools/r8/RecordTag;
.source "PlantingScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PlantingScreenAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryEvidence"
.end annotation


# instance fields
.field private final source:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

.field private final whistleAnchor:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

.field private final whistleScore:I

.field private final whistleSearchBounds:Lcom/pikminx/helper/CardHighlight$Bounds;


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
    invoke-direct {p0}, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;

    invoke-direct {p1}, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->source:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    iget-object v1, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->whistleAnchor:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    iget-object v2, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->whistleSearchBounds:Lcom/pikminx/helper/CardHighlight$Bounds;

    iget v3, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->whistleScore:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;Lcom/pikminx/helper/CardHighlight$Bounds;I)V
    .locals 0
    .param p1, "source"    # Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;
    .param p2, "whistleAnchor"    # Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    .param p3, "whistleSearchBounds"    # Lcom/pikminx/helper/CardHighlight$Bounds;
    .param p4, "whistleScore"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "whistleAnchor",
            "whistleSearchBounds",
            "whistleScore"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->source:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    iput-object p2, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->whistleAnchor:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    iput-object p3, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->whistleSearchBounds:Lcom/pikminx/helper/CardHighlight$Bounds;

    iput p4, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->whistleScore:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0, p1}, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public source()Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->source:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;

    const-string v2, "source;whistleAnchor;whistleSearchBounds;whistleScore"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whistleAnchor()Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->whistleAnchor:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    return-object v0
.end method

.method public whistleScore()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->whistleScore:I

    return v0
.end method

.method public whistleSearchBounds()Lcom/pikminx/helper/CardHighlight$Bounds;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;->whistleSearchBounds:Lcom/pikminx/helper/CardHighlight$Bounds;

    return-object v0
.end method
