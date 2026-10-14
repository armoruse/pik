.class final Lcom/pikminx/helper/PetalMatcher$PanelPull;
.super Lcom/android/tools/r8/RecordTag;
.source "PetalMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PanelPull"
.end annotation


# instance fields
.field private final endY:I

.field private final startY:I

.field private final x:I


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
    invoke-direct {p0}, Lcom/pikminx/helper/PetalMatcher$PanelPull;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/PetalMatcher$PanelPull;

    invoke-direct {p1}, Lcom/pikminx/helper/PetalMatcher$PanelPull;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$PanelPull;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/pikminx/helper/PetalMatcher$PanelPull;->startY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/PetalMatcher$PanelPull;->endY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "startY"    # I
    .param p3, "endY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "startY",
            "endY"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/PetalMatcher$PanelPull;->x:I

    iput p2, p0, Lcom/pikminx/helper/PetalMatcher$PanelPull;->startY:I

    iput p3, p0, Lcom/pikminx/helper/PetalMatcher$PanelPull;->endY:I

    return-void
.end method


# virtual methods
.method public endY()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$PanelPull;->endY:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 21
    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalMatcher$PanelPull;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/PetalMatcher$PanelPull;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public startY()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$PanelPull;->startY:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 21
    invoke-direct {p0}, Lcom/pikminx/helper/PetalMatcher$PanelPull;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/PetalMatcher$PanelPull;

    const-string v2, "x;startY;endY"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$PanelPull;->x:I

    return v0
.end method
