.class final Lcom/pikminx/helper/OcrScanner;
.super Ljava/lang/Object;
.source "OcrScanner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/OcrScanner$RecognizerEntry;,
        Lcom/pikminx/helper/OcrScanner$Script;,
        Lcom/pikminx/helper/OcrScanner$FrameCallback;,
        Lcom/pikminx/helper/OcrScanner$ScoredToken;
    }
.end annotation


# instance fields
.field private final recognizers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pikminx/helper/OcrScanner$RecognizerEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9fDdLmoUAJ24-orzLu2nb-oKKwo(Lcom/pikminx/helper/OcrScanner;Ljava/util/List;Lcom/pikminx/helper/OcrScanner$RecognizerEntry;Lcom/google/mlkit/vision/text/Text;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/pikminx/helper/OcrScanner;->lambda$scan$1(Ljava/util/List;Lcom/pikminx/helper/OcrScanner$RecognizerEntry;Lcom/google/mlkit/vision/text/Text;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qgu987jTumWlYBujjq1-Z1_mxVQ(Lcom/pikminx/helper/OcrScanner;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/pikminx/helper/OcrScan$Transform;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/CaptureGeometry;Lcom/pikminx/helper/OcrScanner$FrameCallback;ZLandroid/graphics/Bitmap;JLcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/pikminx/helper/OcrScanner;->lambda$scan$3(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/pikminx/helper/OcrScan$Transform;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/CaptureGeometry;Lcom/pikminx/helper/OcrScanner$FrameCallback;ZLandroid/graphics/Bitmap;JLcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o7r7x1Yj3UL5uNZO5XlD_hfF9KM(Landroid/graphics/Bitmap;II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    return p0
.end method

.method constructor <init>()V
    .locals 8

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    sget-object v1, Lcom/pikminx/helper/OcrScanner$Script;->LATIN:Lcom/pikminx/helper/OcrScanner$Script;

    new-instance v2, Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions$Builder;

    invoke-direct {v2}, Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions$Builder;-><init>()V

    .line 47
    invoke-virtual {v2}, Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;

    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/google/mlkit/vision/text/TextRecognition;->getClient(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;-><init>(Lcom/pikminx/helper/OcrScanner$Script;Lcom/google/mlkit/vision/text/TextRecognizer;Lcom/pikminx/helper/OcrScanner$RecognizerEntry-IA;)V

    new-instance v1, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    sget-object v2, Lcom/pikminx/helper/OcrScanner$Script;->CHINESE:Lcom/pikminx/helper/OcrScanner$Script;

    new-instance v4, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions$Builder;

    invoke-direct {v4}, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions$Builder;-><init>()V

    .line 49
    invoke-virtual {v4}, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;

    move-result-object v4

    .line 48
    invoke-static {v4}, Lcom/google/mlkit/vision/text/TextRecognition;->getClient(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;-><init>(Lcom/pikminx/helper/OcrScanner$Script;Lcom/google/mlkit/vision/text/TextRecognizer;Lcom/pikminx/helper/OcrScanner$RecognizerEntry-IA;)V

    new-instance v2, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    sget-object v4, Lcom/pikminx/helper/OcrScanner$Script;->DEVANAGARI:Lcom/pikminx/helper/OcrScanner$Script;

    new-instance v5, Lcom/google/mlkit/vision/text/devanagari/DevanagariTextRecognizerOptions$Builder;

    invoke-direct {v5}, Lcom/google/mlkit/vision/text/devanagari/DevanagariTextRecognizerOptions$Builder;-><init>()V

    .line 51
    invoke-virtual {v5}, Lcom/google/mlkit/vision/text/devanagari/DevanagariTextRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/text/devanagari/DevanagariTextRecognizerOptions;

    move-result-object v5

    .line 50
    invoke-static {v5}, Lcom/google/mlkit/vision/text/TextRecognition;->getClient(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object v5

    invoke-direct {v2, v4, v5, v3}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;-><init>(Lcom/pikminx/helper/OcrScanner$Script;Lcom/google/mlkit/vision/text/TextRecognizer;Lcom/pikminx/helper/OcrScanner$RecognizerEntry-IA;)V

    new-instance v4, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    sget-object v5, Lcom/pikminx/helper/OcrScanner$Script;->JAPANESE:Lcom/pikminx/helper/OcrScanner$Script;

    new-instance v6, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions$Builder;

    invoke-direct {v6}, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions$Builder;-><init>()V

    .line 53
    invoke-virtual {v6}, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;

    move-result-object v6

    .line 52
    invoke-static {v6}, Lcom/google/mlkit/vision/text/TextRecognition;->getClient(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;-><init>(Lcom/pikminx/helper/OcrScanner$Script;Lcom/google/mlkit/vision/text/TextRecognizer;Lcom/pikminx/helper/OcrScanner$RecognizerEntry-IA;)V

    new-instance v5, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    sget-object v6, Lcom/pikminx/helper/OcrScanner$Script;->KOREAN:Lcom/pikminx/helper/OcrScanner$Script;

    new-instance v7, Lcom/google/mlkit/vision/text/korean/KoreanTextRecognizerOptions$Builder;

    invoke-direct {v7}, Lcom/google/mlkit/vision/text/korean/KoreanTextRecognizerOptions$Builder;-><init>()V

    .line 55
    invoke-virtual {v7}, Lcom/google/mlkit/vision/text/korean/KoreanTextRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/text/korean/KoreanTextRecognizerOptions;

    move-result-object v7

    .line 54
    invoke-static {v7}, Lcom/google/mlkit/vision/text/TextRecognition;->getClient(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object v7

    invoke-direct {v5, v6, v7, v3}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;-><init>(Lcom/pikminx/helper/OcrScanner$Script;Lcom/google/mlkit/vision/text/TextRecognizer;Lcom/pikminx/helper/OcrScanner$RecognizerEntry-IA;)V

    .line 45
    invoke-static {v0, v1, v2, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/OcrScanner;->recognizers:Ljava/util/List;

    return-void
.end method

.method private analysisBitmap(Landroid/graphics/Bitmap;Lcom/pikminx/helper/OcrScan$Transform;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "transform"    # Lcom/pikminx/helper/OcrScan$Transform;

    .line 183
    invoke-virtual {p2}, Lcom/pikminx/helper/OcrScan$Transform;->usesSourceBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    return-object p1

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 188
    .local v0, "crop":Landroid/graphics/Bitmap;
    nop

    .line 190
    :try_start_0
    invoke-virtual {p2}, Lcom/pikminx/helper/OcrScan$Transform;->cropLeft()I

    move-result v1

    .line 191
    invoke-virtual {p2}, Lcom/pikminx/helper/OcrScan$Transform;->cropTop()I

    move-result v2

    .line 192
    invoke-virtual {p2}, Lcom/pikminx/helper/OcrScan$Transform;->cropWidth()I

    move-result v3

    .line 193
    invoke-virtual {p2}, Lcom/pikminx/helper/OcrScan$Transform;->cropHeight()I

    move-result v4

    .line 188
    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    .line 194
    nop

    .line 195
    invoke-virtual {p2}, Lcom/pikminx/helper/OcrScan$Transform;->analysisWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/pikminx/helper/OcrScan$Transform;->analysisHeight()I

    move-result v2

    .line 194
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 196
    .local v1, "scaled":Landroid/graphics/Bitmap;
    if-eq v1, v0, :cond_1

    .line 197
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_1
    return-object v1

    .line 200
    .end local v1    # "scaled":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "error":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    :cond_2
    throw v1
.end method

.method private duplicateIndex(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;)I
    .locals 12
    .param p2, "candidate"    # Lcom/pikminx/helper/PetalMatcher$Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/OcrScanner$ScoredToken;",
            ">;",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ")I"
        }
    .end annotation

    .line 251
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$ScoredToken;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 252
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/OcrScanner$ScoredToken;

    invoke-virtual {v1}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->token()Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v1

    .line 253
    .local v1, "existing":Lcom/pikminx/helper/PetalMatcher$Token;
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v2

    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 254
    .local v2, "overlapLeft":I
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v3

    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 255
    .local v3, "overlapTop":I
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v4

    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 256
    .local v4, "overlapRight":I
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v5

    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 257
    .local v5, "overlapBottom":I
    sub-int v6, v4, v2

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v8, v5, v3

    .line 258
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int/2addr v6, v7

    .line 259
    .local v6, "overlap":I
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v7

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 260
    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v9

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    mul-int/2addr v7, v9

    .line 261
    .local v7, "existingArea":I
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->right()I

    move-result v9

    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 262
    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->bottom()I

    move-result v10

    invoke-virtual {p2}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    mul-int/2addr v9, v8

    .line 263
    .local v9, "candidateArea":I
    add-int v8, v7, v9

    sub-int/2addr v8, v6

    .line 264
    .local v8, "union":I
    mul-int/lit8 v10, v6, 0x64

    mul-int/lit8 v11, v8, 0x48

    if-lt v10, v11, :cond_0

    .line 265
    return v0

    .line 251
    .end local v1    # "existing":Lcom/pikminx/helper/PetalMatcher$Token;
    .end local v2    # "overlapLeft":I
    .end local v3    # "overlapTop":I
    .end local v4    # "overlapRight":I
    .end local v5    # "overlapBottom":I
    .end local v6    # "overlap":I
    .end local v7    # "existingArea":I
    .end local v8    # "union":I
    .end local v9    # "candidateArea":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 268
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic lambda$merge$4(Lcom/pikminx/helper/OcrScanner$ScoredToken;)I
    .locals 1
    .param p0, "value"    # Lcom/pikminx/helper/OcrScanner$ScoredToken;

    .line 228
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->token()Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$merge$5(Lcom/pikminx/helper/OcrScanner$ScoredToken;)I
    .locals 1
    .param p0, "value"    # Lcom/pikminx/helper/OcrScanner$ScoredToken;

    .line 229
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->token()Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$merge$6(Lcom/pikminx/helper/OcrScanner$ScoredToken;)I
    .locals 1
    .param p0, "value"    # Lcom/pikminx/helper/OcrScanner$ScoredToken;

    .line 241
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->token()Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pikminx/helper/PetalMatcher$Token;->top()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$merge$7(Lcom/pikminx/helper/OcrScanner$ScoredToken;)I
    .locals 1
    .param p0, "value"    # Lcom/pikminx/helper/OcrScanner$ScoredToken;

    .line 242
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->token()Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pikminx/helper/PetalMatcher$Token;->left()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$scan$0(Lcom/pikminx/helper/OcrScanner$RecognizerEntry;)Z
    .locals 2
    .param p0, "entry"    # Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    .line 100
    invoke-virtual {p0}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->script()Lcom/pikminx/helper/OcrScanner$Script;

    move-result-object v0

    sget-object v1, Lcom/pikminx/helper/OcrScanner$Script;->CHINESE:Lcom/pikminx/helper/OcrScanner$Script;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$scan$1(Ljava/util/List;Lcom/pikminx/helper/OcrScanner$RecognizerEntry;Lcom/google/mlkit/vision/text/Text;)V
    .locals 1
    .param p1, "recognized"    # Ljava/util/List;
    .param p2, "entry"    # Lcom/pikminx/helper/OcrScanner$RecognizerEntry;
    .param p3, "text"    # Lcom/google/mlkit/vision/text/Text;

    .line 112
    invoke-virtual {p2}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->script()Lcom/pikminx/helper/OcrScanner$Script;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/pikminx/helper/OcrScanner;->tokens(Lcom/google/mlkit/vision/text/Text;Lcom/pikminx/helper/OcrScanner$Script;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$scan$2(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "firstFailure"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p1, "error"    # Ljava/lang/Exception;

    .line 113
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$scan$3(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/pikminx/helper/OcrScan$Transform;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/CaptureGeometry;Lcom/pikminx/helper/OcrScanner$FrameCallback;ZLandroid/graphics/Bitmap;JLcom/google/android/gms/tasks/Task;)V
    .locals 16
    .param p1, "pending"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "transform"    # Lcom/pikminx/helper/OcrScan$Transform;
    .param p3, "recognized"    # Ljava/util/List;
    .param p4, "firstFailure"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p5, "profile"    # Lcom/pikminx/helper/OcrScan$Profile;
    .param p6, "captureGeometry"    # Lcom/pikminx/helper/CaptureGeometry;
    .param p7, "callback"    # Lcom/pikminx/helper/OcrScanner$FrameCallback;
    .param p8, "ownsAnalysis"    # Z
    .param p9, "analysis"    # Landroid/graphics/Bitmap;
    .param p10, "startedAt"    # J
    .param p12, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 115
    move-object/from16 v1, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p7

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    move-object/from16 v12, p3

    invoke-direct {v1, v12}, Lcom/pikminx/helper/OcrScanner;->merge(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/pikminx/helper/OcrScan$Transform;->toSourceTokens(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 119
    .local v13, "merged":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/Exception;

    .line 120
    .local v14, "failure":Ljava/lang/Exception;
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v14, :cond_3

    .line 123
    move-object/from16 v15, p5

    move-object/from16 v9, p6

    :try_start_0
    invoke-direct {v1, v15, v10, v9, v14}, Lcom/pikminx/helper/OcrScanner;->recordGeometryFailure(Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/CaptureGeometry;Ljava/lang/Exception;)V

    .line 126
    invoke-interface {v11, v14}, Lcom/pikminx/helper/OcrScanner$FrameCallback;->onFailure(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    if-eqz p8, :cond_1

    .line 129
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    :cond_1
    return-void

    .line 128
    :catchall_0
    move-exception v0

    if-eqz p8, :cond_2

    .line 129
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    :cond_2
    throw v0

    .line 120
    :cond_3
    move-object/from16 v15, p5

    move-object/from16 v9, p6

    .line 134
    new-instance v0, Lcom/pikminx/helper/OcrScan$Frame;

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v6, v2, p10

    .line 139
    invoke-static/range {p9 .. p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda2;

    move-object/from16 v5, p9

    invoke-direct {v8, v5}, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v0

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-object v5, v13

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/pikminx/helper/OcrScan$Frame;-><init>(Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Ljava/util/List;JLcom/pikminx/helper/OcrScan$PixelReader;Lcom/pikminx/helper/CaptureGeometry;)V

    .line 143
    .local v2, "frame":Lcom/pikminx/helper/OcrScan$Frame;
    :try_start_1
    invoke-direct {v1, v2}, Lcom/pikminx/helper/OcrScanner;->recordGeometrySuccess(Lcom/pikminx/helper/OcrScan$Frame;)V

    .line 145
    invoke-interface {v11, v2}, Lcom/pikminx/helper/OcrScanner$FrameCallback;->onSuccess(Lcom/pikminx/helper/OcrScan$Frame;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    if-eqz p8, :cond_4

    .line 148
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    :cond_4
    return-void

    .line 147
    :catchall_1
    move-exception v0

    if-eqz p8, :cond_5

    .line 148
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    :cond_5
    throw v0
.end method

.method private merge(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/OcrScanner$ScoredToken;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/PetalMatcher$Token;",
            ">;"
        }
    .end annotation

    .line 226
    .local p1, "recognized":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$ScoredToken;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    .local v0, "ordered":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$ScoredToken;>;"
    new-instance v1, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda7;-><init>()V

    .line 228
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda8;-><init>()V

    .line 229
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda9;-><init>()V

    .line 230
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "merged":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$ScoredToken;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pikminx/helper/OcrScanner$ScoredToken;

    .line 233
    .local v3, "candidate":Lcom/pikminx/helper/OcrScanner$ScoredToken;
    invoke-virtual {v3}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->token()Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/pikminx/helper/OcrScanner;->duplicateIndex(Ljava/util/List;Lcom/pikminx/helper/PetalMatcher$Token;)I

    move-result v4

    .line 234
    .local v4, "duplicateIndex":I
    if-gez v4, :cond_0

    .line 235
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_0
    invoke-virtual {v3}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->score()I

    move-result v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pikminx/helper/OcrScanner$ScoredToken;

    invoke-virtual {v6}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->score()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 237
    invoke-interface {v1, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v3    # "candidate":Lcom/pikminx/helper/OcrScanner$ScoredToken;
    .end local v4    # "duplicateIndex":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 240
    :cond_2
    new-instance v2, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda10;-><init>()V

    .line 241
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda1;-><init>()V

    .line 242
    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    .line 240
    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalMatcher$Token;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pikminx/helper/OcrScanner$ScoredToken;

    .line 245
    .local v4, "value":Lcom/pikminx/helper/OcrScanner$ScoredToken;
    invoke-virtual {v4}, Lcom/pikminx/helper/OcrScanner$ScoredToken;->token()Lcom/pikminx/helper/PetalMatcher$Token;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v4    # "value":Lcom/pikminx/helper/OcrScanner$ScoredToken;
    goto :goto_2

    .line 247
    :cond_3
    return-object v2
.end method

.method private recordGeometryFailure(Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/CaptureGeometry;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "profile"    # Lcom/pikminx/helper/OcrScan$Profile;
    .param p2, "transform"    # Lcom/pikminx/helper/OcrScan$Transform;
    .param p3, "captureGeometry"    # Lcom/pikminx/helper/CaptureGeometry;
    .param p4, "error"    # Ljava/lang/Exception;

    .line 175
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/pikminx/helper/GeometryValidation;->failure(ILcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/CaptureGeometry;Ljava/lang/Exception;)Lcom/pikminx/helper/GeometryValidation$Snapshot;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/GeometryValidation;->log(Lcom/pikminx/helper/GeometryValidation$Snapshot;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 180
    :goto_0
    return-void
.end method

.method private recordGeometrySuccess(Lcom/pikminx/helper/OcrScan$Frame;)V
    .locals 1
    .param p1, "frame"    # Lcom/pikminx/helper/OcrScan$Frame;

    .line 160
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, p1}, Lcom/pikminx/helper/GeometryValidation;->success(ILcom/pikminx/helper/OcrScan$Frame;)Lcom/pikminx/helper/GeometryValidation$Snapshot;

    move-result-object v0

    invoke-static {v0}, Lcom/pikminx/helper/GeometryValidation;->log(Lcom/pikminx/helper/GeometryValidation$Snapshot;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 164
    :goto_0
    return-void
.end method

.method private score(Lcom/pikminx/helper/OcrScanner$Script;Ljava/lang/String;)I
    .locals 12
    .param p1, "script"    # Lcom/pikminx/helper/OcrScanner$Script;
    .param p2, "text"    # Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "letters":I
    const/4 v1, 0x0

    .line 274
    .local v1, "han":Z
    const/4 v2, 0x0

    .line 275
    .local v2, "kana":Z
    const/4 v3, 0x0

    .line 276
    .local v3, "hangul":Z
    const/4 v4, 0x0

    .line 277
    .local v4, "devanagari":Z
    const/4 v5, 0x0

    .line 278
    .local v5, "latin":Z
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    if-ge v6, v7, :cond_7

    .line 279
    invoke-virtual {p2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 280
    .local v7, "codePoint":I
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v6, v9

    .line 281
    invoke-static {v7}, Ljava/lang/Character;->isLetter(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 282
    add-int/lit8 v0, v0, 0x1

    .line 284
    :cond_0
    invoke-static {v7}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v9

    .line 285
    .local v9, "unicodeScript":Ljava/lang/Character$UnicodeScript;
    sget-object v10, Ljava/lang/Character$UnicodeScript;->HAN:Ljava/lang/Character$UnicodeScript;

    const/4 v11, 0x1

    if-ne v9, v10, :cond_1

    move v10, v11

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    or-int/2addr v1, v10

    .line 286
    sget-object v10, Ljava/lang/Character$UnicodeScript;->HIRAGANA:Ljava/lang/Character$UnicodeScript;

    if-eq v9, v10, :cond_3

    sget-object v10, Ljava/lang/Character$UnicodeScript;->KATAKANA:Ljava/lang/Character$UnicodeScript;

    if-ne v9, v10, :cond_2

    goto :goto_2

    :cond_2
    move v10, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v10, v11

    :goto_3
    or-int/2addr v2, v10

    .line 288
    sget-object v10, Ljava/lang/Character$UnicodeScript;->HANGUL:Ljava/lang/Character$UnicodeScript;

    if-ne v9, v10, :cond_4

    move v10, v11

    goto :goto_4

    :cond_4
    move v10, v8

    :goto_4
    or-int/2addr v3, v10

    .line 289
    sget-object v10, Ljava/lang/Character$UnicodeScript;->DEVANAGARI:Ljava/lang/Character$UnicodeScript;

    if-ne v9, v10, :cond_5

    move v10, v11

    goto :goto_5

    :cond_5
    move v10, v8

    :goto_5
    or-int/2addr v4, v10

    .line 290
    sget-object v10, Ljava/lang/Character$UnicodeScript;->LATIN:Ljava/lang/Character$UnicodeScript;

    if-ne v9, v10, :cond_6

    move v8, v11

    :cond_6
    or-int/2addr v5, v8

    .line 291
    .end local v7    # "codePoint":I
    .end local v9    # "unicodeScript":Ljava/lang/Character$UnicodeScript;
    goto :goto_0

    .line 292
    .end local v6    # "index":I
    :cond_7
    sget-object v6, Lcom/pikminx/helper/OcrScanner$1;->$SwitchMap$com$pikminx$helper$OcrScanner$Script:[I

    invoke-virtual {p1}, Lcom/pikminx/helper/OcrScanner$Script;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0xdc

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v6}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw v6

    .line 297
    :pswitch_0
    if-eqz v3, :cond_9

    move v8, v7

    goto :goto_6

    .line 296
    :pswitch_1
    if-eqz v2, :cond_8

    move v8, v7

    goto :goto_6

    :cond_8
    if-eqz v1, :cond_9

    const/16 v8, 0x8c

    goto :goto_6

    .line 295
    :pswitch_2
    if-eqz v4, :cond_9

    move v8, v7

    goto :goto_6

    .line 294
    :pswitch_3
    if-eqz v1, :cond_9

    if-nez v2, :cond_9

    const/16 v8, 0xb4

    goto :goto_6

    .line 293
    :pswitch_4
    if-eqz v5, :cond_9

    const/16 v8, 0xc8

    .line 297
    :cond_9
    :goto_6
    move v6, v8

    .line 299
    .local v6, "scriptMatch":I
    const/16 v7, 0x28

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v6

    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static supportedScriptNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    const-string v0, "Japanese"

    const-string v1, "Korean"

    const-string v2, "Latin"

    const-string v3, "Chinese"

    const-string v4, "Devanagari"

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private tokens(Lcom/google/mlkit/vision/text/Text;Lcom/pikminx/helper/OcrScanner$Script;)Ljava/util/List;
    .locals 13
    .param p1, "text"    # Lcom/google/mlkit/vision/text/Text;
    .param p2, "script"    # Lcom/pikminx/helper/OcrScanner$Script;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/text/Text;",
            "Lcom/pikminx/helper/OcrScanner$Script;",
            ")",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/OcrScanner$ScoredToken;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$ScoredToken;>;"
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text;->getTextBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/vision/text/Text$TextBlock;

    .line 212
    .local v2, "block":Lcom/google/mlkit/vision/text/Text$TextBlock;
    invoke-virtual {v2}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getLines()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/text/Text$Line;

    .line 213
    .local v4, "line":Lcom/google/mlkit/vision/text/Text$Line;
    invoke-virtual {v4}, Lcom/google/mlkit/vision/text/Text$Line;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v5

    .line 214
    .local v5, "box":Landroid/graphics/Rect;
    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/google/mlkit/vision/text/Text$Line;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pikminx/helper/MainActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 215
    new-instance v6, Lcom/pikminx/helper/PetalMatcher$Token;

    .line 216
    invoke-virtual {v4}, Lcom/google/mlkit/vision/text/Text$Line;->getText()Ljava/lang/String;

    move-result-object v8

    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->right:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/pikminx/helper/PetalMatcher$Token;-><init>(Ljava/lang/String;IIII)V

    .line 217
    .local v6, "token":Lcom/pikminx/helper/PetalMatcher$Token;
    new-instance v7, Lcom/pikminx/helper/OcrScanner$ScoredToken;

    invoke-virtual {v4}, Lcom/google/mlkit/vision/text/Text$Line;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p2, v8}, Lcom/pikminx/helper/OcrScanner;->score(Lcom/pikminx/helper/OcrScanner$Script;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v7, v6, v8, v9}, Lcom/pikminx/helper/OcrScanner$ScoredToken;-><init>(Lcom/pikminx/helper/PetalMatcher$Token;ILcom/pikminx/helper/OcrScanner$ScoredToken-IA;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v4    # "line":Lcom/google/mlkit/vision/text/Text$Line;
    .end local v5    # "box":Landroid/graphics/Rect;
    .end local v6    # "token":Lcom/pikminx/helper/PetalMatcher$Token;
    :cond_0
    goto :goto_1

    .line 220
    .end local v2    # "block":Lcom/google/mlkit/vision/text/Text$TextBlock;
    :cond_1
    goto :goto_0

    .line 221
    :cond_2
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/pikminx/helper/OcrScanner;->recognizers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    .line 306
    .local v1, "entry":Lcom/pikminx/helper/OcrScanner$RecognizerEntry;
    invoke-virtual {v1}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->recognizer()Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizer;->close()V

    .line 307
    .end local v1    # "entry":Lcom/pikminx/helper/OcrScanner$RecognizerEntry;
    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method scan(Landroid/graphics/Bitmap;Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/CaptureGeometry;Ljava/util/concurrent/Executor;Lcom/pikminx/helper/OcrScanner$FrameCallback;)V
    .locals 28
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "profile"    # Lcom/pikminx/helper/OcrScan$Profile;
    .param p3, "captureGeometry"    # Lcom/pikminx/helper/CaptureGeometry;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Lcom/pikminx/helper/OcrScanner$FrameCallback;

    .line 68
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p5

    if-nez v13, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Capture geometry is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v0}, Lcom/pikminx/helper/OcrScanner$FrameCallback;->onFailure(Ljava/lang/Exception;)V

    .line 70
    return-void

    .line 72
    :cond_0
    nop

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 72
    invoke-static {v12, v0, v1, v13}, Lcom/pikminx/helper/OcrScan$Transform;->create(Lcom/pikminx/helper/OcrScan$Profile;IILcom/pikminx/helper/CaptureGeometry;)Lcom/pikminx/helper/OcrScan$Transform;

    move-result-object v9

    .line 76
    .local v9, "transform":Lcom/pikminx/helper/OcrScan$Transform;
    :try_start_0
    invoke-direct {v14, v15, v9}, Lcom/pikminx/helper/OcrScanner;->analysisBitmap(Landroid/graphics/Bitmap;Lcom/pikminx/helper/OcrScan$Transform;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, v0

    .line 83
    .local v8, "analysis":Landroid/graphics/Bitmap;
    nop

    .line 84
    const/4 v0, 0x0

    if-eq v8, v15, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    move/from16 v16, v1

    .line 87
    .local v16, "ownsAnalysis":Z
    :try_start_1
    invoke-static {v8, v0}, Lcom/google/mlkit/vision/common/InputImage;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .local v0, "image":Lcom/google/mlkit/vision/common/InputImage;
    nop

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 99
    .local v7, "recognized":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$ScoredToken;>;"
    iget-object v1, v14, Lcom/pikminx/helper/OcrScanner;->recognizers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda3;-><init>()V

    .line 100
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    .line 104
    .local v17, "chineseRecognizer":Lcom/pikminx/helper/OcrScanner$RecognizerEntry;
    nop

    .line 103
    invoke-virtual/range {p2 .. p2}, Lcom/pikminx/helper/OcrScan$Profile;->scriptMode()Lcom/pikminx/helper/OcrScan$ScriptMode;

    move-result-object v1

    sget-object v2, Lcom/pikminx/helper/OcrScan$ScriptMode;->CHINESE:Lcom/pikminx/helper/OcrScan$ScriptMode;

    if-ne v1, v2, :cond_2

    .line 105
    invoke-static/range {v17 .. v17}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 106
    :cond_2
    iget-object v1, v14, Lcom/pikminx/helper/OcrScanner;->recognizers:Ljava/util/List;

    :goto_1
    move-object/from16 v18, v1

    .line 107
    .local v18, "selectedRecognizers":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$RecognizerEntry;>;"
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 108
    .local v3, "pending":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v6, v1

    .line 109
    .local v6, "firstFailure":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Exception;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 110
    .local v19, "startedAt":J
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    .line 111
    .local v5, "entry":Lcom/pikminx/helper/OcrScanner$RecognizerEntry;
    invoke-virtual {v5}, Lcom/pikminx/helper/OcrScanner$RecognizerEntry;->recognizer()Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/mlkit/vision/text/TextRecognizer;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda4;

    invoke-direct {v2, v14, v7, v5}, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda4;-><init>(Lcom/pikminx/helper/OcrScanner;Ljava/util/List;Lcom/pikminx/helper/OcrScanner$RecognizerEntry;)V

    .line 112
    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda5;

    invoke-direct {v2, v6}, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 113
    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    new-instance v2, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;

    move-object v1, v2

    move-object/from16 v22, v0

    move-object v0, v2

    .end local v0    # "image":Lcom/google/mlkit/vision/common/InputImage;
    .local v22, "image":Lcom/google/mlkit/vision/common/InputImage;
    move-object/from16 v2, p0

    move-object v15, v4

    move-object v4, v9

    move-object/from16 v23, v5

    .end local v5    # "entry":Lcom/pikminx/helper/OcrScanner$RecognizerEntry;
    .local v23, "entry":Lcom/pikminx/helper/OcrScanner$RecognizerEntry;
    move-object v5, v7

    move-object/from16 v24, v6

    .end local v6    # "firstFailure":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Exception;>;"
    .local v24, "firstFailure":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Exception;>;"
    move-object/from16 v25, v7

    .end local v7    # "recognized":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$ScoredToken;>;"
    .local v25, "recognized":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$ScoredToken;>;"
    move-object/from16 v7, p2

    move-object/from16 v26, v8

    .end local v8    # "analysis":Landroid/graphics/Bitmap;
    .local v26, "analysis":Landroid/graphics/Bitmap;
    move-object/from16 v8, p3

    move-object/from16 v27, v9

    .end local v9    # "transform":Lcom/pikminx/helper/OcrScan$Transform;
    .local v27, "transform":Lcom/pikminx/helper/OcrScan$Transform;
    move-object/from16 v9, p5

    move/from16 v10, v16

    move-object v14, v11

    move-object/from16 v11, v26

    move-wide/from16 v12, v19

    invoke-direct/range {v1 .. v13}, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;-><init>(Lcom/pikminx/helper/OcrScanner;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/pikminx/helper/OcrScan$Transform;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/CaptureGeometry;Lcom/pikminx/helper/OcrScanner$FrameCallback;ZLandroid/graphics/Bitmap;J)V

    .line 114
    invoke-virtual {v15, v14, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 152
    .end local v23    # "entry":Lcom/pikminx/helper/OcrScanner$RecognizerEntry;
    move-object/from16 v15, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v10, p5

    move-object v11, v14

    move-object/from16 v0, v22

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v14, p0

    goto :goto_2

    .line 153
    .end local v22    # "image":Lcom/google/mlkit/vision/common/InputImage;
    .end local v24    # "firstFailure":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Exception;>;"
    .end local v25    # "recognized":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$ScoredToken;>;"
    .end local v26    # "analysis":Landroid/graphics/Bitmap;
    .end local v27    # "transform":Lcom/pikminx/helper/OcrScan$Transform;
    .restart local v0    # "image":Lcom/google/mlkit/vision/common/InputImage;
    .restart local v6    # "firstFailure":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Exception;>;"
    .restart local v7    # "recognized":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$ScoredToken;>;"
    .restart local v8    # "analysis":Landroid/graphics/Bitmap;
    .restart local v9    # "transform":Lcom/pikminx/helper/OcrScan$Transform;
    :cond_3
    return-void

    .line 88
    .end local v0    # "image":Lcom/google/mlkit/vision/common/InputImage;
    .end local v3    # "pending":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v6    # "firstFailure":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Exception;>;"
    .end local v7    # "recognized":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$ScoredToken;>;"
    .end local v17    # "chineseRecognizer":Lcom/pikminx/helper/OcrScanner$RecognizerEntry;
    .end local v18    # "selectedRecognizers":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/OcrScanner$RecognizerEntry;>;"
    .end local v19    # "startedAt":J
    :catch_0
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object v14, v11

    move-object v1, v0

    .end local v8    # "analysis":Landroid/graphics/Bitmap;
    .end local v9    # "transform":Lcom/pikminx/helper/OcrScan$Transform;
    .restart local v26    # "analysis":Landroid/graphics/Bitmap;
    .restart local v27    # "transform":Lcom/pikminx/helper/OcrScan$Transform;
    move-object v0, v1

    .line 89
    .local v0, "error":Ljava/lang/RuntimeException;
    if-eqz v16, :cond_4

    .line 90
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    :cond_4
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v27

    .end local v27    # "transform":Lcom/pikminx/helper/OcrScan$Transform;
    .local v4, "transform":Lcom/pikminx/helper/OcrScan$Transform;
    invoke-direct {v1, v2, v4, v3, v0}, Lcom/pikminx/helper/OcrScanner;->recordGeometryFailure(Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/CaptureGeometry;Ljava/lang/Exception;)V

    .line 95
    move-object/from16 v5, p5

    invoke-interface {v5, v0}, Lcom/pikminx/helper/OcrScanner$FrameCallback;->onFailure(Ljava/lang/Exception;)V

    .line 96
    return-void

    .line 77
    .end local v0    # "error":Ljava/lang/RuntimeException;
    .end local v4    # "transform":Lcom/pikminx/helper/OcrScan$Transform;
    .end local v16    # "ownsAnalysis":Z
    .end local v26    # "analysis":Landroid/graphics/Bitmap;
    .restart local v9    # "transform":Lcom/pikminx/helper/OcrScan$Transform;
    :catch_1
    move-exception v0

    move-object v4, v9

    move-object v5, v10

    move-object v2, v12

    move-object v3, v13

    move-object v1, v14

    move-object v6, v0

    .end local v9    # "transform":Lcom/pikminx/helper/OcrScan$Transform;
    .restart local v4    # "transform":Lcom/pikminx/helper/OcrScan$Transform;
    move-object v0, v6

    .line 79
    .restart local v0    # "error":Ljava/lang/RuntimeException;
    invoke-direct {v1, v2, v4, v3, v0}, Lcom/pikminx/helper/OcrScanner;->recordGeometryFailure(Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/OcrScan$Transform;Lcom/pikminx/helper/CaptureGeometry;Ljava/lang/Exception;)V

    .line 81
    invoke-interface {v5, v0}, Lcom/pikminx/helper/OcrScanner$FrameCallback;->onFailure(Ljava/lang/Exception;)V

    .line 82
    return-void
.end method
