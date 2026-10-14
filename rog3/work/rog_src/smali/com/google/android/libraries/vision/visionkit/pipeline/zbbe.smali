.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# instance fields
.field private final zba:[B

.field private final zbb:J

.field private final zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

.field private final zbd:I

.field private final zbe:I


# direct methods
.method constructor <init>([BJLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zba:[B

    iput-wide p2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbb:J

    iput-object p4, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    iput p5, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbd:I

    iput p6, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbe:I

    return-void
.end method


# virtual methods
.method public final zba()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbb:J

    return-wide v0
.end method

.method public final zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    return-object v0
.end method

.method public final zbc()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zba:[B

    return-object v0
.end method

.method public final zbd()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbd:I

    return v0
.end method

.method public final zbe()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbe:I

    return v0
.end method
