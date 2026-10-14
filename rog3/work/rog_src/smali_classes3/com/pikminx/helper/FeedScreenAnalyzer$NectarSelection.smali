.class final Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;
.super Lcom/android/tools/r8/RecordTag;
.source "FeedScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/FeedScreenAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NectarSelection"
.end annotation


# instance fields
.field private final count:I

.field private final name:Ljava/lang/String;

.field private final petalCount:I

.field private final tapY:I

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
    invoke-direct {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;

    invoke-direct {p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->name:Ljava/lang/String;

    iget v1, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->petalCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->tapY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "petalCount"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "tapY"    # I
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
            "name",
            "count",
            "petalCount",
            "x",
            "y",
            "tapY"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->name:Ljava/lang/String;

    iput p2, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->count:I

    iput p3, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->petalCount:I

    iput p4, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->x:I

    iput p5, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->y:I

    iput p6, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->tapY:I

    return-void
.end method


# virtual methods
.method public count()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->count:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0, p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->name:Ljava/lang/String;

    return-object v0
.end method

.method public petalCount()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->petalCount:I

    return v0
.end method

.method public tapY()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->tapY:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;

    const-string v2, "name;count;petalCount;x;y;tapY"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->x:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarSelection;->y:I

    return v0
.end method
