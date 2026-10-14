.class public final Lcom/google/mlkit/vision/text/pipeline/zbi;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# instance fields
.field zba:Lcom/google/mlkit/vision/text/pipeline/zbh;

.field zbb:Z

.field private final zbc:Landroid/content/Context;

.field private final zbd:Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;

.field private zbe:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbe:Z

    iput-object p1, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbc:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbd:Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;

    return-void
.end method

.method public static zba(Landroid/content/Context;Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;)Lcom/google/mlkit/vision/text/pipeline/zbi;
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/text/pipeline/zbi;

    invoke-direct {v0, p0, p1}, Lcom/google/mlkit/vision/text/pipeline/zbi;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;)V

    return-object v0
.end method


# virtual methods
.method public final zbb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;Z)Lcom/google/mlkit/vision/text/pipeline/zbn;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbc()Lcom/google/mlkit/vision/text/pipeline/zbo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/mlkit/vision/text/pipeline/zbo;->zbd()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2
    invoke-static {v2}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zbe(Lcom/google/mlkit/vision/text/pipeline/zbo;)Lcom/google/mlkit/vision/text/pipeline/zbn;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbb()I

    move-result v3
    :try_end_0
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x3

    const-string v8, "PipelineManager"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v3, v4, :cond_2

    :try_start_1
    const-string v3, "Start process bitmap"

    .line 4
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v4, v11, :cond_1

    .line 7
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input bitmap is not ARGB_8888 config. Converting it to ARGB_8888 from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v11

    invoke-virtual {v3, v4, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    iget-object v4, v0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zba:Lcom/google/mlkit/vision/text/pipeline/zbh;

    .line 10
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/text/pipeline/zbh;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    mul-long/2addr v11, v5

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbc()I

    move-result v5

    invoke-static {v5}, Lcom/google/mlkit/vision/text/pipeline/zbj;->zbb(I)I

    move-result v5

    .line 13
    invoke-virtual {v4, v11, v12, v3, v5}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbi(JLandroid/graphics/Bitmap;I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v2

    goto/16 :goto_0

    .line 14
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbb()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_3

    const-string v3, "Start process YUV"

    .line 15
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    iget-object v4, v0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zba:Lcom/google/mlkit/vision/text/pipeline/zbh;

    .line 17
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/google/mlkit/vision/text/pipeline/zbh;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    mul-long/2addr v12, v5

    aget-object v4, v3, v9

    .line 19
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image$Plane;

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    aget-object v4, v3, v10

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image$Plane;

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    aget-object v4, v3, v2

    .line 21
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image$Plane;

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 22
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbd()I

    move-result v17

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zba()I

    move-result v18

    aget-object v4, v3, v9

    .line 24
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image$Plane;

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v19

    aget-object v4, v3, v10

    .line 25
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image$Plane;

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v20

    aget-object v3, v3, v10

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image$Plane;

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v21

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbc()I

    move-result v3

    invoke-static {v3}, Lcom/google/mlkit/vision/text/pipeline/zbj;->zbb(I)I

    move-result v22

    .line 28
    invoke-virtual/range {v11 .. v22}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbj(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v2

    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbb()I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_4

    const-string v3, "Start process NV21"

    .line 30
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 32
    invoke-static {v3}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->bufferWithBackingArray(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zba:Lcom/google/mlkit/vision/text/pipeline/zbh;

    .line 33
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/text/pipeline/zbh;

    .line 34
    invoke-static {v3, v1}, Lcom/google/mlkit/vision/text/pipeline/zbj;->zba(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbe(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v2

    goto :goto_0

    .line 35
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbb()I

    move-result v3

    const v4, 0x32315659

    if-ne v3, v4, :cond_16

    const-string v3, "Start process YV12"

    .line 36
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 38
    invoke-static {v3, v10}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->yv12ToNv21Buffer(Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, v0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zba:Lcom/google/mlkit/vision/text/pipeline/zbh;

    .line 39
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/text/pipeline/zbh;

    .line 40
    invoke-static {v3, v1}, Lcom/google/mlkit/vision/text/pipeline/zbj;->zba(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbe(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbc()Z

    move-result v3

    if-nez v3, :cond_5

    .line 41
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "VisionKit pipeline returns empty result."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {v7, v0}, Lcom/google/mlkit/vision/text/pipeline/zbo;->zbc(ILandroid/os/RemoteException;)Lcom/google/mlkit/vision/text/pipeline/zbo;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zbe(Lcom/google/mlkit/vision/text/pipeline/zbo;)Lcom/google/mlkit/vision/text/pipeline/zbn;

    move-result-object v0

    return-object v0

    :cond_5
    nop

    .line 43
    const-string v3, "OCR process succeeded via visionkit pipeline."

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zba()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;

    .line 45
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v3

    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbd()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zba()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbc()I

    move-result v1

    .line 47
    invoke-virtual {v3, v4, v5, v1}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getUprightRotationMatrix(III)Landroid/graphics/Matrix;

    move-result-object v1

    iget-boolean v3, v0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbe:Z

    new-instance v4, Lcom/google/mlkit/vision/text/pipeline/zba;

    new-instance v5, Lcom/google/mlkit/vision/text/pipeline/zbb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lcom/google/mlkit/vision/text/pipeline/zbb;-><init>(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;)V

    .line 48
    invoke-virtual {v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;->zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabl;->zbf()Ljava/util/List;

    move-result-object v2

    .line 49
    new-instance v6, Ljava/util/HashMap;

    .line 50
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    .line 51
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    .line 52
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;

    .line 54
    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbI()I

    move-result v14

    const/4 v15, 0x6

    if-ne v14, v15, :cond_7

    .line 55
    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbf()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    move-result-object v14

    invoke-static {v14}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    move-result-object v14

    .line 56
    invoke-static {v14}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zbc(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;)Ljava/util/List;

    move-result-object v15

    .line 57
    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboo;

    .line 58
    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbH()Ljava/lang/String;

    move-result-object v16

    .line 59
    invoke-static {v15, v1}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zba(Ljava/util/List;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v17

    .line 60
    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbc()F

    move-result v19

    .line 61
    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zba()F

    move-result v20

    move-object v14, v15

    move-object v15, v9

    move-object/from16 v18, v14

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboo;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;FF)V

    .line 62
    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbe()I

    move-result v13

    .line 63
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 64
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    goto :goto_2

    .line 65
    :cond_6
    new-instance v14, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-direct {v14}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;-><init>()V

    .line 66
    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v14

    .line 67
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;->zba(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    const/4 v9, 0x0

    goto :goto_1

    .line 54
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 66
    :cond_8
    const/4 v9, 0x0

    .line 68
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_c

    .line 69
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;

    .line 70
    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbI()I

    move-result v13

    if-eq v13, v10, :cond_9

    goto/16 :goto_6

    .line 71
    :cond_9
    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbf()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    move-result-object v13

    invoke-static {v13}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    move-result-object v13

    .line 72
    invoke-static {v13}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zbc(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;)Ljava/util/List;

    move-result-object v15

    .line 73
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 74
    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v14

    goto :goto_4

    .line 75
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v14

    .line 76
    :goto_4
    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbog;

    .line 77
    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbH()Ljava/lang/String;

    move-result-object v16

    .line 78
    invoke-static {v15, v1}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zba(Ljava/util/List;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v17

    .line 79
    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaax;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaax;->zbf()Ljava/util/List;

    move-result-object v18

    .line 80
    invoke-static/range {v18 .. v18}, Lcom/google/mlkit/vision/text/pipeline/zbg;->zba(Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    .line 81
    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbc()F

    move-result v19

    .line 82
    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zba()F

    move-result v20

    .line 83
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v21, v13

    check-cast v21, Ljava/util/List;

    move-object v14, v10

    move-object v13, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v13

    invoke-direct/range {v14 .. v21}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbog;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;FFLjava/util/List;)V

    .line 84
    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbe()I

    move-result v12

    .line 85
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 86
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    goto :goto_5

    .line 87
    :cond_b
    new-instance v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-direct {v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;-><init>()V

    .line 88
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v13

    .line 89
    :goto_5
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;->zba(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    .line 70
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 75
    :cond_c
    const/4 v8, 0x0

    .line 90
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_10

    .line 91
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;

    .line 92
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbI()I

    move-result v10

    if-eq v10, v7, :cond_d

    goto/16 :goto_a

    .line 93
    :cond_d
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbf()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    move-result-object v10

    invoke-static {v10}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    move-result-object v10

    .line 94
    invoke-static {v10}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zbc(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;)Ljava/util/List;

    move-result-object v15

    .line 95
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 96
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v12

    goto :goto_8

    .line 97
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v12

    .line 98
    :goto_8
    new-instance v14, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboi;

    .line 99
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbH()Ljava/lang/String;

    move-result-object v13

    .line 100
    invoke-static {v15, v1}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zba(Ljava/util/List;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v16

    .line 101
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaax;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaax;->zbf()Ljava/util/List;

    move-result-object v17

    .line 102
    invoke-static/range {v17 .. v17}, Lcom/google/mlkit/vision/text/pipeline/zbg;->zba(Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    .line 103
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v12

    check-cast v18, Ljava/util/List;

    .line 104
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbc()F

    move-result v19

    .line 105
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zba()F

    move-result v10

    move-object v12, v14

    move-object v7, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v10

    invoke-direct/range {v12 .. v19}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboi;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Ljava/util/List;FF)V

    .line 106
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbe()I

    move-result v10

    .line 107
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 108
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    goto :goto_9

    .line 109
    :cond_f
    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-direct {v10}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;-><init>()V

    .line 110
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbe()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v10

    .line 111
    :goto_9
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;->zba(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    .line 92
    :goto_a
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x3

    goto/16 :goto_7

    .line 112
    :cond_10
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-direct {v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;-><init>()V

    const/4 v7, 0x0

    .line 113
    :goto_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_13

    .line 114
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;

    .line 115
    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbI()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_11

    goto :goto_c

    .line 116
    :cond_11
    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbf()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    move-result-object v9

    invoke-static {v9}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    move-result-object v9

    .line 117
    invoke-static {v9}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zbc(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;)Ljava/util/List;

    move-result-object v15

    .line 118
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v9

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 120
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v9

    .line 121
    invoke-interface {v11, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_12
    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboe;

    sget-object v12, Lcom/google/mlkit/vision/text/pipeline/zbm;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkg;

    new-instance v13, Lcom/google/mlkit/vision/text/pipeline/zbk;

    invoke-direct {v13}, Lcom/google/mlkit/vision/text/pipeline/zbk;-><init>()V

    .line 123
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zblc;->zba(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkf;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkg;->zbb(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    .line 124
    invoke-static {v15, v1}, Lcom/google/mlkit/vision/text/pipeline/zbf;->zba(Ljava/util/List;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v14

    .line 125
    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabj;->zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaax;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaax;->zbf()Ljava/util/List;

    move-result-object v8

    .line 126
    invoke-static {v8}, Lcom/google/mlkit/vision/text/pipeline/zbg;->zba(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    .line 127
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Ljava/util/List;

    move-object v12, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboe;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 128
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;->zba(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    .line 115
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 129
    :cond_13
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v2

    .line 131
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v7, :cond_14

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 130
    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboi;

    .line 132
    new-instance v15, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboe;

    .line 133
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboi;->zbc()Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboi;->zba()Landroid/graphics/Rect;

    move-result-object v12

    .line 135
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboi;->zbd()Ljava/util/List;

    move-result-object v13

    .line 136
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboi;->zbb()Ljava/lang/String;

    move-result-object v14

    .line 137
    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->zbi(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v9

    move-object v10, v15

    move-object/from16 p1, v1

    move-object v1, v15

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboe;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 138
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;->zba(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    goto :goto_e

    .line 131
    :cond_14
    move-object/from16 p1, v1

    goto :goto_d

    .line 139
    :cond_15
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbku;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v1

    .line 140
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    sget-object v6, Lcom/google/mlkit/vision/text/pipeline/zbm;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkg;

    new-instance v7, Lcom/google/mlkit/vision/text/pipeline/zbl;

    invoke-direct {v7}, Lcom/google/mlkit/vision/text/pipeline/zbl;-><init>()V

    .line 141
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zblc;->zba(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkf;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkg;->zbb(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v1

    invoke-direct {v4, v5, v2, v1, v3}, Lcom/google/mlkit/vision/text/pipeline/zba;-><init>(Lcom/google/mlkit/vision/text/pipeline/zbo;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;Z)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbe:Z

    return-object v4

    .line 143
    :cond_16
    :try_start_2
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 144
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnx;->zbb()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported image format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Landroid/os/RemoteException;

    .line 146
    invoke-virtual {v0}, Lcom/google/mlkit/common/MlKitException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to process input image."

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-static {v2, v1}, Lcom/google/mlkit/vision/text/pipeline/zbo;->zbc(ILandroid/os/RemoteException;)Lcom/google/mlkit/vision/text/pipeline/zbo;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zbe(Lcom/google/mlkit/vision/text/pipeline/zbo;)Lcom/google/mlkit/vision/text/pipeline/zbn;

    move-result-object v0

    return-object v0
.end method

.method public final zbc()Lcom/google/mlkit/vision/text/pipeline/zbo;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/mlkit/vision/text/pipeline/zbb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/vision/text/pipeline/zbb;-><init>(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zba:Lcom/google/mlkit/vision/text/pipeline/zbh;

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/AndroidAssetUtil;->zba(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    const-string v0, "PipelineManager"

    const-string v3, "Failed to initiate native asset manager."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbd:Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;

    new-instance v3, Lcom/google/mlkit/vision/text/pipeline/zbh;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;->zba()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;->zbc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;->zbb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;->zbd()Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbc()Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;

    move-result-object v7

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 27
    :cond_2
    move v0, v1

    .line 4
    :goto_0
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdo;->zba()Lcom/google/android/libraries/vision/visionkit/pipeline/zbdl;

    move-result-object v8

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbe;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;

    move-result-object v9

    .line 6
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;->zbd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;

    .line 7
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;->zba(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;

    .line 8
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;->zbe(Z)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;

    .line 9
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;->zbb(Z)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;

    .line 10
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpg;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpf;

    move-result-object v4

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpk;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpi;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpi;->zba(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpi;

    .line 13
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpf;->zba(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpi;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpf;

    .line 14
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;->zbc(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpf;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;

    .line 15
    :cond_3
    invoke-virtual {v8, v9}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdl;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbb;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbdl;

    invoke-static {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcv;->zba(I)I

    move-result v0

    .line 16
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zba()Lcom/google/android/libraries/vision/visionkit/pipeline/zbct;

    move-result-object v4

    .line 17
    invoke-virtual {v4, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbct;->zba(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zbct;

    .line 18
    invoke-virtual {v8, v4}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdl;->zbc(Lcom/google/android/libraries/vision/visionkit/pipeline/zbct;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbdl;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbix;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbiu;

    move-result-object v0

    .line 20
    const-string v4, "PassThroughCoarseClassifier"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbiu;->zba(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbiu;

    .line 21
    invoke-virtual {v8, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdl;->zba(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbiu;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbdl;

    .line 22
    invoke-virtual {v7, v8}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;->zba(Lcom/google/android/libraries/vision/visionkit/pipeline/zbdl;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;

    .line 23
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbfc;->zba()Lcom/google/android/libraries/vision/visionkit/pipeline/zbfb;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbfb;->zba(I)Lcom/google/android/libraries/vision/visionkit/pipeline/zbfb;

    .line 24
    invoke-virtual {v7, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;->zbb(Lcom/google/android/libraries/vision/visionkit/pipeline/zbfb;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;

    .line 25
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;->zbi()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    iget-object v4, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbd:Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;

    invoke-virtual {v4}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;->zba()Ljava/lang/String;

    move-result-object v4

    .line 26
    const-string v5, "mlkit_google_ocr_pipeline"

    invoke-direct {v3, v0, v4, v5}, Lcom/google/mlkit/vision/text/pipeline/zbh;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zba:Lcom/google/mlkit/vision/text/pipeline/zbh;

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zba:Lcom/google/mlkit/vision/text/pipeline/zbh;

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/text/pipeline/zbh;

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbg()V
    :try_end_0
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v2, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbb:Z

    new-instance v0, Lcom/google/mlkit/vision/text/pipeline/zbb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/vision/text/pipeline/zbb;-><init>(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Landroid/os/RemoteException;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->getRootCauseMessage()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "Failed to initialize detector. "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {v2, v1}, Lcom/google/mlkit/vision/text/pipeline/zbo;->zbc(ILandroid/os/RemoteException;)Lcom/google/mlkit/vision/text/pipeline/zbo;

    move-result-object v0

    return-object v0
.end method

.method public final zbd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zba:Lcom/google/mlkit/vision/text/pipeline/zbh;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbb:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbh()V

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zba:Lcom/google/mlkit/vision/text/pipeline/zbh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbf()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zba:Lcom/google/mlkit/vision/text/pipeline/zbh;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbb:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/vision/text/pipeline/zbi;->zbe:Z

    return-void
.end method
