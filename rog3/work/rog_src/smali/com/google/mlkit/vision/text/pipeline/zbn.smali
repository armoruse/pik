.class public abstract Lcom/google/mlkit/vision/text/pipeline/zbn;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zbe(Lcom/google/mlkit/vision/text/pipeline/zbo;)Lcom/google/mlkit/vision/text/pipeline/zbn;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/text/pipeline/zba;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/mlkit/vision/text/pipeline/zba;-><init>(Lcom/google/mlkit/vision/text/pipeline/zbo;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;
.end method

.method public abstract zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;
.end method

.method public abstract zbc()Lcom/google/mlkit/vision/text/pipeline/zbo;
.end method

.method public abstract zbd()Z
.end method
