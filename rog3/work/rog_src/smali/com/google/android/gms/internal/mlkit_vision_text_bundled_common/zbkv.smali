.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkv;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkq;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# instance fields
.field private final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkv;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    return-void
.end method


# virtual methods
.method protected final zba(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkv;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
