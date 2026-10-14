.class final Lcom/pikminx/helper/PetalMatcher$Token;
.super Lcom/android/tools/r8/RecordTag;
.source "PetalMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Token"
.end annotation


# instance fields
.field private final bottom:I

.field private final left:I

.field private final right:I

.field private final text:Ljava/lang/String;

.field private final top:I


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
    invoke-direct {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/PetalMatcher$Token;

    invoke-direct {p1}, Lcom/pikminx/helper/PetalMatcher$Token;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/pikminx/helper/PetalMatcher$Token;->text:Ljava/lang/String;

    iget v1, p0, Lcom/pikminx/helper/PetalMatcher$Token;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/pikminx/helper/PetalMatcher$Token;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/pikminx/helper/PetalMatcher$Token;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/pikminx/helper/PetalMatcher$Token;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PetalMatcher$Token;->text:Ljava/lang/String;

    iput p2, p0, Lcom/pikminx/helper/PetalMatcher$Token;->left:I

    iput p3, p0, Lcom/pikminx/helper/PetalMatcher$Token;->top:I

    iput p4, p0, Lcom/pikminx/helper/PetalMatcher$Token;->right:I

    iput p5, p0, Lcom/pikminx/helper/PetalMatcher$Token;->bottom:I

    return-void
.end method


# virtual methods
.method public bottom()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Token;->bottom:I

    return v0
.end method

.method centerX()I
    .locals 2

    .line 13
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Token;->left:I

    iget v1, p0, Lcom/pikminx/helper/PetalMatcher$Token;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method centerY()I
    .locals 2

    .line 14
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Token;->top:I

    iget v1, p0, Lcom/pikminx/helper/PetalMatcher$Token;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 12
    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalMatcher$Token;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method height()I
    .locals 2

    .line 16
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Token;->bottom:I

    iget v1, p0, Lcom/pikminx/helper/PetalMatcher$Token;->top:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public left()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Token;->left:I

    return v0
.end method

.method public right()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Token;->right:I

    return v0
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/pikminx/helper/PetalMatcher$Token;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 12
    invoke-direct {p0}, Lcom/pikminx/helper/PetalMatcher$Token;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/PetalMatcher$Token;

    const-string v2, "text;left;top;right;bottom"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public top()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Token;->top:I

    return v0
.end method

.method width()I
    .locals 2

    .line 15
    iget v0, p0, Lcom/pikminx/helper/PetalMatcher$Token;->right:I

    iget v1, p0, Lcom/pikminx/helper/PetalMatcher$Token;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
