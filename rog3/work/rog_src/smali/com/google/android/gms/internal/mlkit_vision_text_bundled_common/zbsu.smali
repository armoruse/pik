.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsu;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsv;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# instance fields
.field final synthetic zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

.field private zbb:I

.field private final zbc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsv;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsu;->zbb:I

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsu;->zbc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsu;->zbb:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsu;->zbc:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zba()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsu;->zbb:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsu;->zbc:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsu;->zbb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbb(I)B

    move-result v0

    return v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
