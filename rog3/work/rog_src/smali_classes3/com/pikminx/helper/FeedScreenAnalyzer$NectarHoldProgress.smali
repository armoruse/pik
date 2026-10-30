.class final Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;
.super Lcom/android/tools/r8/RecordTag;
.source "FeedScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/FeedScreenAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NectarHoldProgress"
.end annotation


# instance fields
.field private final count:Ljava/lang/Integer;

.field private final shouldRelease:Z

.field private final stableReads:I


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
    invoke-direct {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;

    invoke-direct {p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->count:Ljava/lang/Integer;

    iget v1, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->stableReads:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->shouldRelease:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/lang/Integer;IZ)V
    .locals 0
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "stableReads"    # I
    .param p3, "shouldRelease"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "stableReads",
            "shouldRelease"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->count:Ljava/lang/Integer;

    iput p2, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->stableReads:I

    iput-boolean p3, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->shouldRelease:Z

    return-void
.end method


# virtual methods
.method public count()Ljava/lang/Integer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 39
    invoke-direct {p0, p1}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public shouldRelease()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->shouldRelease:Z

    return v0
.end method

.method public stableReads()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->stableReads:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/FeedScreenAnalyzer$NectarHoldProgress;

    const-string v2, "count;stableReads;shouldRelease"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
