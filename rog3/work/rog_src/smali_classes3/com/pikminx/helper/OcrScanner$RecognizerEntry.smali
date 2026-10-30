.class final Lcom/pikminx/helper/OcrScanner$RecognizerEntry;
.super Lcom/android/tools/r8/RecordTag;
.source "OcrScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/OcrScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecognizerEntry"
.end annotation


# instance fields
.field private final recognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

.field private final script:Lcom/pikminx/helper/OcrScanner$Script;


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
    invoke-direct {p0}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    invoke-direct {p1}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->script:Lcom/pikminx/helper/OcrScanner$Script;

    iget-object v1, p0, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->recognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Lcom/pikminx/helper/OcrScanner$Script;Lcom/google/mlkit/vision/text/TextRecognizer;)V
    .locals 0
    .param p1, "script"    # Lcom/pikminx/helper/OcrScanner$Script;
    .param p2, "recognizer"    # Lcom/google/mlkit/vision/text/TextRecognizer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "script",
            "recognizer"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->script:Lcom/pikminx/helper/OcrScanner$Script;

    iput-object p2, p0, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->recognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pikminx/helper/OcrScanner$Script;Lcom/google/mlkit/vision/text/TextRecognizer;Lcom/pikminx/helper/OcrScanner$RecognizerEntry-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;-><init>(Lcom/pikminx/helper/OcrScanner$Script;Lcom/google/mlkit/vision/text/TextRecognizer;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    invoke-direct {p0, p1}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord1;->m(Ljava/lang/Class;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public recognizer()Lcom/google/mlkit/vision/text/TextRecognizer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->recognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

    return-object v0
.end method

.method public script()Lcom/pikminx/helper/OcrScanner$Script;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->script:Lcom/pikminx/helper/OcrScanner$Script;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    const-string v2, "script;recognizer"

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Bounds$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
