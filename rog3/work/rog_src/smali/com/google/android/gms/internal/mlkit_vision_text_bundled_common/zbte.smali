.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbte;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# instance fields
.field private zbb:I

.field private zbc:I

.field private zbd:I


# direct methods
.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtd;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtf;)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbte;->zbd:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbte;->zbb:I

    return-void
.end method


# virtual methods
.method public final zba(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;
        }
    .end annotation

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbte;->zbd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbte;->zbd:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbte;->zbb:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbte;->zbc:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbte;->zbb:I

    if-lez v1, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbte;->zbc:I

    sub-int/2addr v1, v1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbte;->zbb:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbte;->zbc:I

    :goto_0
    return p1
.end method
