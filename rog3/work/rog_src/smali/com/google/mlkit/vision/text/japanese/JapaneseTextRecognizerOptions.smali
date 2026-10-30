.class public final Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-japanese@@16.0.1"

# interfaces
.implements Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions$Builder;
    }
.end annotation


# instance fields
.field final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/mlkit/vision/text/japanese/zza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;
    .end local p1    # "o":Ljava/lang/Object;
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;

    iget-object v0, p0, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;->zzb:Ljava/util/concurrent/Executor;

    .line 2
    iget-object p1, p1, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getConfigLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "taser_tflite_gocrjapanese_and_latin_mbv2_aksara_layout_gcn_mobile"

    return-object v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;->zzb:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getIsThickClient()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "com.google.mlkit.dynamite.text.japanese"

    invoke-static {v0, v1}, Lcom/google/mlkit/vision/text/internal/TextRecognizerOptionsUtils;->isThickClient(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getLanguageHint()Ljava/lang/String;
    .locals 1

    const-string v0, "ja"

    return-object v0
.end method

.method public final getLoggingEventId()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;->getIsThickClient()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5efe

    return v0

    :cond_0
    const/16 v0, 0x5f0c

    return v0
.end method

.method public final getLoggingLanguageOption()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final getLoggingLibraryName()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;->getIsThickClient()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "play-services-mlkit-text-recognition-japanese"

    return-object v0

    :cond_0
    const-string v0, "text-recognition-japanese"

    return-object v0
.end method

.method public final getLoggingLibraryNameForOptionalModule()Ljava/lang/String;
    .locals 1

    const-string v0, "optional-module-text-japanese"

    return-object v0
.end method

.method public final getModuleId()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;->getIsThickClient()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "com.google.android.gms.mlkit_ocr_japanese"

    return-object v0

    :cond_0
    const-string v0, "com.google.mlkit.dynamite.text.japanese"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    nop

    .end local p0    # "this":Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;
    iget-object v0, p0, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;->zzb:Ljava/util/concurrent/Executor;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
