.class final Lcom/pikminx/helper/CardHighlight$MapEntryMatch;
.super Lcom/android/tools/r8/RecordTag;
.source "CardHighlight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/CardHighlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapEntryMatch"
.end annotation


# instance fields
.field private final anchor:Lcom/pikminx/helper/CardHighlight$Point;

.field private final point:Lcom/pikminx/helper/CardHighlight$Point;

.field private final score:I

.field private final searchBounds:Lcom/pikminx/helper/CardHighlight$Bounds;


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
    invoke-direct {p0}, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;

    invoke-direct {p1}, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->point:Lcom/pikminx/helper/CardHighlight$Point;

    iget-object v1, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->anchor:Lcom/pikminx/helper/CardHighlight$Point;

    iget-object v2, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->searchBounds:Lcom/pikminx/helper/CardHighlight$Bounds;

    iget v3, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/pikminx/helper/CardHighlight$Point;Lcom/pikminx/helper/CardHighlight$Point;Lcom/pikminx/helper/CardHighlight$Bounds;I)V
    .locals 0
    .param p1, "point"    # Lcom/pikminx/helper/CardHighlight$Point;
    .param p2, "anchor"    # Lcom/pikminx/helper/CardHighlight$Point;
    .param p3, "searchBounds"    # Lcom/pikminx/helper/CardHighlight$Bounds;
    .param p4, "score"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "point",
            "anchor",
            "searchBounds",
            "score"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->point:Lcom/pikminx/helper/CardHighlight$Point;

    iput-object p2, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->anchor:Lcom/pikminx/helper/CardHighlight$Point;

    iput-object p3, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->searchBounds:Lcom/pikminx/helper/CardHighlight$Bounds;

    iput p4, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->score:I

    return-void
.end method


# virtual methods
.method public anchor()Lcom/pikminx/helper/CardHighlight$Point;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->anchor:Lcom/pikminx/helper/CardHighlight$Point;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 21
    invoke-direct {p0, p1}, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public point()Lcom/pikminx/helper/CardHighlight$Point;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->point:Lcom/pikminx/helper/CardHighlight$Point;

    return-object v0
.end method

.method public score()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->score:I

    return v0
.end method

.method public searchBounds()Lcom/pikminx/helper/CardHighlight$Bounds;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->searchBounds:Lcom/pikminx/helper/CardHighlight$Bounds;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 21
    invoke-direct {p0}, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/CardHighlight$MapEntryMatch;

    const-string v2, "point;anchor;searchBounds;score"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
