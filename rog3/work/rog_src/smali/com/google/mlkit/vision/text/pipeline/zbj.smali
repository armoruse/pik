.class final Lcom/google/mlkit/vision/text/pipeline/zbj;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# direct methods
.method static zba(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zba([B)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbc()I

    move-result p0

    invoke-static {p0}, Lcom/google/mlkit/vision/text/pipeline/zbj;->zbb(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zbf(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbd()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zba()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbe()J

    move-result-wide p0

    const-wide/16 v1, 0x3e8

    mul-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zbc(J)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    .line 5
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zbe(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbd;->zbd()Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;

    move-result-object p0

    return-object p0
.end method

.method static zbb(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
