.class final Lcom/pikminx/helper/OcrScan$Frame;
.super Lcom/android/tools/r8/RecordTag;
.source "OcrScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/OcrScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Frame"
.end annotation


# instance fields
.field private final analysisPixels:Lcom/pikminx/helper/OcrScan$PixelReader;

.field private final captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

.field private final elapsedMillis:J

.field private final profile:Lcom/pikminx/helper/OcrScan$Profile;

.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final transform:Lcom/pikminx/helper/OcrScan$Transform;


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
    invoke-direct {p0}, Lcom/pikminx/helper/OcrScan$Frame;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/OcrScan$Frame;

    invoke-direct {p1}, Lcom/pikminx/helper/OcrScan$Frame;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->profile:Lcom/pikminx/helper/OcrScan$Profile;

    iget-object v1, p0, Lcom/pikminx/helper/OcrScan$Frame;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    iget-object v2, p0, Lcom/pikminx/helper/OcrScan$Frame;->tokens:Ljava/util/List;

    iget-wide v3, p0, Lcom/pikminx/helper/OcrScan$Frame;->elapsedMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/pikminx/helper/OcrScan$Frame;->analysisPixels:Lcom/pikminx/helper/OcrScan$PixelReader;

    iget-object v5, p0, Lcom/pikminx/helper/OcrScan$Frame;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Ljava/util/List;JLcom/pikminx/helper/OcrScan$PixelReader;Lcom/pikminx/helper/CaptureGeometry;)V
    .locals 2
    .param p1, "profile"    # Lcom/pikminx/helper/OcrScan$Profile;
    .param p2, "transform"    # Lcom/pikminx/helper/OcrScan$Transform;
    .param p4, "elapsedMillis"    # J
    .param p6, "analysisPixels"    # Lcom/pikminx/helper/OcrScan$PixelReader;
    .param p7, "captureGeometry"    # Lcom/pikminx/helper/CaptureGeometry;
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
            "profile",
            "transform",
            "tokens",
            "elapsedMillis",
            "analysisPixels",
            "captureGeometry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pikminx/helper/OcrScan$Profile;",
            "Lcom/pikminx/helper/OcrScan$Transform;",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;J",
            "Lcom/pikminx/helper/OcrScan$PixelReader;",
            "Lcom/pikminx/helper/CaptureGeometry;",
            ")V"
        }
    .end annotation

    .line 212
    .local p3, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    .line 213
    invoke-static {p3}, Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p3

    .line 214
    if-eqz p7, :cond_0

    .line 212
    iput-object p1, p0, Lcom/pikminx/helper/OcrScan$Frame;->profile:Lcom/pikminx/helper/OcrScan$Profile;

    iput-object p2, p0, Lcom/pikminx/helper/OcrScan$Frame;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    iput-object p3, p0, Lcom/pikminx/helper/OcrScan$Frame;->tokens:Ljava/util/List;

    iput-wide p4, p0, Lcom/pikminx/helper/OcrScan$Frame;->elapsedMillis:J

    iput-object p6, p0, Lcom/pikminx/helper/OcrScan$Frame;->analysisPixels:Lcom/pikminx/helper/OcrScan$PixelReader;

    iput-object p7, p0, Lcom/pikminx/helper/OcrScan$Frame;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    .line 217
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Capture geometry is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public analysisPixels()Lcom/pikminx/helper/OcrScan$PixelReader;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->analysisPixels:Lcom/pikminx/helper/OcrScan$PixelReader;

    return-object v0
.end method

.method public captureGeometry()Lcom/pikminx/helper/CaptureGeometry;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->captureGeometry:Lcom/pikminx/helper/CaptureGeometry;

    return-object v0
.end method

.method public elapsedMillis()J
    .locals 2

    .line 204
    iget-wide v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->elapsedMillis:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 204
    invoke-direct {p0, p1}, Lcom/pikminx/helper/OcrScan$Frame;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/OcrScan$Frame;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method pixelAtSource(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 223
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->analysisPixels:Lcom/pikminx/helper/OcrScan$PixelReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v0, p1, p2}, Lcom/pikminx/helper/OcrScan$Transform;->containsSource(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->analysisPixels:Lcom/pikminx/helper/OcrScan$PixelReader;

    iget-object v1, p0, Lcom/pikminx/helper/OcrScan$Frame;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v1, p1}, Lcom/pikminx/helper/OcrScan$Transform;->analysisX(I)I

    move-result v1

    iget-object v2, p0, Lcom/pikminx/helper/OcrScan$Frame;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v2, p2}, Lcom/pikminx/helper/OcrScan$Transform;->analysisY(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pikminx/helper/OcrScan$PixelReader;->get(II)I

    move-result v0

    return v0

    .line 224
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public profile()Lcom/pikminx/helper/OcrScan$Profile;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->profile:Lcom/pikminx/helper/OcrScan$Profile;

    return-object v0
.end method

.method sourceHeight()I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v0}, Lcom/pikminx/helper/OcrScan$Transform;->sourceHeight()I

    move-result v0

    return v0
.end method

.method sourceWidth()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    invoke-virtual {v0}, Lcom/pikminx/helper/OcrScan$Transform;->sourceWidth()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 204
    invoke-direct {p0}, Lcom/pikminx/helper/OcrScan$Frame;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/OcrScan$Frame;

    const-string v2, "profile;transform;tokens;elapsedMillis;analysisPixels;captureGeometry"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public transform()Lcom/pikminx/helper/OcrScan$Transform;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Frame;->transform:Lcom/pikminx/helper/OcrScan$Transform;

    return-object v0
.end method
