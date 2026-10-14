.class final Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;
.super Lcom/android/tools/r8/RecordTag;
.source "PlantingScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PlantingScreenAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Detection"
.end annotation


# instance fields
.field private final entryEvidence:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;

.field private final mapEntry:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

.field private final screen:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

.field private final startControl:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

.field private final stopControl:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;


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
    invoke-direct {p0}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;

    invoke-direct {p1}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->screen:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    iget-object v1, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->mapEntry:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    iget-object v2, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->startControl:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    iget-object v3, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->stopControl:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    iget-object v4, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->entryEvidence:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;)V
    .locals 0
    .param p1, "screen"    # Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;
    .param p2, "mapEntry"    # Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    .param p3, "startControl"    # Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    .param p4, "stopControl"    # Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    .param p5, "entryEvidence"    # Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screen",
            "mapEntry",
            "startControl",
            "stopControl",
            "entryEvidence"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->screen:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    iput-object p2, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->mapEntry:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    iput-object p3, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->startControl:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    iput-object p4, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->stopControl:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    iput-object p5, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->entryEvidence:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;

    return-void
.end method


# virtual methods
.method public entryEvidence()Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->entryEvidence:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntryEvidence;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0, p1}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public mapEntry()Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->mapEntry:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    return-object v0
.end method

.method public screen()Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->screen:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    return-object v0
.end method

.method public startControl()Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->startControl:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    return-object v0
.end method

.method public stopControl()Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->stopControl:Lcom/pikminx/helper/PlantingScreenAnalyzer$Point;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/PlantingScreenAnalyzer$Detection;

    const-string v2, "screen;mapEntry;startControl;stopControl;entryEvidence"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
