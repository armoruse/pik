.class public abstract Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;
    .locals 1
    .param p0, "configLabel"    # Ljava/lang/String;
    .param p1, "modelDir"    # Ljava/lang/String;
    .param p2, "languageHint"    # Ljava/lang/String;

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/text/pipeline/zbc;

    .end local p0    # "configLabel":Ljava/lang/String;
    .end local p1    # "modelDir":Ljava/lang/String;
    .end local p2    # "languageHint":Ljava/lang/String;
    invoke-direct {v0}, Lcom/google/mlkit/vision/text/pipeline/zbc;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/mlkit/vision/text/pipeline/zbc;->setConfigLabel(Ljava/lang/String;)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;

    if-nez p1, :cond_0

    const-string p1, "mlkit-google-ocr-models"

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;->setModelDir(Ljava/lang/String;)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;->setLanguageHint(Ljava/lang/String;)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;

    .line 4
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;->setEnableLowLatencyInBackground(Z)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;

    return-object v0
.end method


# virtual methods
.method abstract zba()Ljava/lang/String;
.end method

.method abstract zbb()Ljava/lang/String;
.end method

.method abstract zbc()Ljava/lang/String;
.end method

.method abstract zbd()Z
.end method
