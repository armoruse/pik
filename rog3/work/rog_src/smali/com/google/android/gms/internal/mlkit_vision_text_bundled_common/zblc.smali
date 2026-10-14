.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zblc;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# direct methods
.method public static zba(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkf;)Ljava/util/List;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkz;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkz;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkf;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zblb;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zblb;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkf;)V

    .line 2
    :goto_0
    return-object v0
.end method
