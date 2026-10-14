.class final Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;
.super Lcom/android/tools/r8/RecordTag;
.source "FeedScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/FeedScreenAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DiscoveredFlower"
.end annotation


# instance fields
.field private final centerX:I

.field private final centerY:I

.field private final name:Ljava/lang/String;


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
    invoke-direct {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;

    invoke-direct {p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name:Ljava/lang/String;

    iget v1, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "centerX",
            "centerY"
        }
    .end annotation

    .line 515
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name:Ljava/lang/String;

    iput p2, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerX:I

    iput p3, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerY:I

    return-void
.end method


# virtual methods
.method public centerX()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerX:I

    return v0
.end method

.method public centerY()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->centerY:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 515
    invoke-direct {p0, p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 515
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 515
    invoke-direct {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/FeedScreenAnalyzer$DiscoveredFlower;

    const-string v2, "name;centerX;centerY"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
