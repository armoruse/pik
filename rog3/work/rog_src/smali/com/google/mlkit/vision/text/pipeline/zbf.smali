.class final Lcom/google/mlkit/vision/text/pipeline/zbf;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# direct methods
.method static zba(Ljava/util/List;Landroid/graphics/Matrix;)Landroid/graphics/Rect;
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    move v2, v1

    move v3, v2

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 2
    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3
    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    iget v5, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5
    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    int-to-float p0, v2

    int-to-float v2, v3

    int-to-float v0, v0

    int-to-float v1, v1

    new-instance v3, Landroid/graphics/RectF;

    .line 6
    invoke-direct {v3, p0, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    .line 8
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    invoke-virtual {v3, p0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method static zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbow;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbf()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaai;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaai;->zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    move-result-object p0

    return-object p0
.end method

.method static zbc(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;)Ljava/util/List;
    .locals 15

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zba()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zba()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    new-instance v5, Landroid/graphics/Point;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbd()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbe()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    const/4 v6, 0x0

    aput-object v5, v0, v6

    new-instance v5, Landroid/graphics/Point;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbd()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbf()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbe()I

    move-result v11

    int-to-double v11, v11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbf()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v13, v1

    add-double/2addr v11, v13

    add-double/2addr v7, v9

    double-to-int v7, v7

    double-to-int v8, v11

    invoke-direct {v5, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    const/4 v7, 0x1

    aput-object v5, v0, v7

    new-instance v8, Landroid/graphics/Point;

    .line 6
    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v9, v5

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbc()I

    move-result v5

    int-to-double v11, v5

    mul-double/2addr v11, v1

    aget-object v1, v0, v7

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbc()I

    move-result p0

    int-to-double v13, p0

    mul-double/2addr v13, v3

    add-double/2addr v1, v13

    sub-double/2addr v9, v11

    double-to-int p0, v9

    double-to-int v1, v1

    invoke-direct {v8, p0, v1}, Landroid/graphics/Point;-><init>(II)V

    const/4 p0, 0x2

    aput-object v8, v0, p0

    new-instance v1, Landroid/graphics/Point;

    aget-object v2, v0, v6

    .line 9
    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, v0, p0

    iget v3, v3, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    aget-object v3, v0, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    aget-object p0, v0, p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    aget-object v4, v0, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, v4

    add-int/2addr v3, p0

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 p0, 0x3

    aput-object v1, v0, p0

    .line 10
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
