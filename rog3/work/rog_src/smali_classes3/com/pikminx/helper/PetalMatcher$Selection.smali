.class final Lcom/pikminx/helper/PetalMatcher$Selection;
.super Lcom/android/tools/r8/RecordTag;
.source "PetalMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Selection"
.end annotation


# instance fields
.field private final count:I

.field private final name:Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/pikminx/helper/PetalMatcher$Selection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/PetalMatcher$Selection;

    invoke-direct {p1}, Lcom/pikminx/helper/PetalMatcher$Selection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->name:Ljava/lang/String;

    iget v1, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->tapY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "tapY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "count",
            "x",
            "y",
            "tapY"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->name:Ljava/lang/String;

    iput p2, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->count:I

    iput p3, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->x:I

    iput p4, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->y:I

    iput p5, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->tapY:I

    return-void
.end method


# virtual methods
.method public count()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->count:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 19
    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalMatcher$Selection;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/PetalMatcher$Selection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->name:Ljava/lang/String;

    return-object v0
.end method

.method public tapY()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->tapY:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/pikminx/helper/PetalMatcher$Selection;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/PetalMatcher$Selection;

    const-string v2, "name;count;x;y;tapY"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->x:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Selection;->y:I

    return v0
.end method
