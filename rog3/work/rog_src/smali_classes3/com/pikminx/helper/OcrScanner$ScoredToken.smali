.class final Lcom/pikminx/helper/OcrScanner$ScoredToken;
.super Lcom/android/tools/r8/RecordTag;
.source "OcrScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/OcrScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScoredToken"
.end annotation


# instance fields
.field private final score:I

.field private final token:Lcom/pikminx/helper/PetalMatcher$Token;


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
    invoke-direct {p0}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/OcrScanner$ScoredToken;

    invoke-direct {p1}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/pikminx/helper/OcrScanner$ScoredToken;->token:Lcom/pikminx/helper/PetalMatcher$Token;

    iget v1, p0, Lcom/pikminx/helper/OcrScanner$ScoredToken;->score:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Lcom/pikminx/helper/PetalMatcher$Token;I)V
    .locals 0
    .param p1, "token"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .param p2, "score"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "score"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/OcrScanner$ScoredToken;->token:Lcom/pikminx/helper/PetalMatcher$Token;

    iput p2, p0, Lcom/pikminx/helper/OcrScanner$ScoredToken;->score:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/pikminx/helper/PetalMatcher$Token;ILcom/pikminx/helper/OcrScanner$ScoredToken-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pikminx/helper/OcrScanner$ScoredToken;-><init>(Lcom/pikminx/helper/PetalMatcher$Token;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    invoke-direct {p0, p1}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public score()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/pikminx/helper/OcrScanner$ScoredToken;->score:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 43
    invoke-direct {p0}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/OcrScanner$ScoredToken;

    const-string v2, "token;score"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public token()Lcom/pikminx/helper/PetalMatcher$Token;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/pikminx/helper/OcrScanner$ScoredToken;->token:Lcom/pikminx/helper/PetalMatcher$Token;

    return-object v0
.end method
