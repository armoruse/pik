.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# static fields
.field static final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;


# instance fields
.field final transient zbb:[Ljava/lang/Object;

.field private final transient zbc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;->zbb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;->zbc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;->zbc:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkj;->zba(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;->zbb:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;->zbc:I

    return v0
.end method

.method final zba([Ljava/lang/Object;I)I
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;->zbb:[Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;->zbc:I

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;->zbc:I

    return p1
.end method

.method final zbb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;->zbc:I

    return v0
.end method

.method final zbc()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zbe()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbld;->zbb:[Ljava/lang/Object;

    return-object v0
.end method
