.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwa;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwg;)V

    return-void
.end method


# virtual methods
.method public final zba()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbj()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwb;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwb;->zba()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    goto :goto_1

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zba()V

    return-void
.end method
