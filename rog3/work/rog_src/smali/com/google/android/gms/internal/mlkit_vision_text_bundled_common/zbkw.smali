.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# instance fields
.field final transient zba:I

.field final transient zbb:I

.field final synthetic zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zba:I

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zbb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zbb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkj;->zba(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zba:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zbb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->zbf(II)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object p1

    return-object p1
.end method

.method final zbb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkt;->zbc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zba:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zbb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zbc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkt;->zbc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zba:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zbe()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkt;->zbe()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zbf(II)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zbb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkj;->zbd(III)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zba:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkw;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->zbf(II)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object p1

    return-object p1
.end method
