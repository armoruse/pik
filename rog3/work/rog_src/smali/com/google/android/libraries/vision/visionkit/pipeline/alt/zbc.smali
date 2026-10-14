.class public Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;


# instance fields
.field protected final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

.field private final zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

.field private final zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

.field private zbd:J

.field private final zbe:J

.field private final zbf:J

.field private final zbg:J

.field private final zbh:J


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 1
    :cond_0
    move-object v7, v0

    .line 2
    :goto_0
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbh()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbb;

    invoke-direct {v0, v6}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbb;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbg()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;

    invoke-direct {v0, v6, v6, v6, v7}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    goto :goto_1

    :cond_2
    new-instance v8, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;

    const-string v1, "mlkit_google_ocr_pipeline"

    .line 5
    move-object v0, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;-><init>(Ljava/lang/String;Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)V

    iput-object v8, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    .line 6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbi()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zba()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;-><init>(I)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    goto :goto_2

    .line 14
    :cond_3
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    .line 8
    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;-><init>(I)V

    iput-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    .line 7
    :goto_2
    iput-object v7, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    iget-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    .line 9
    invoke-interface {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->initializeFrameManager()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbe:J

    iget-object v2, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    .line 10
    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->initializeFrameBufferReleaseCallback(J)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbf:J

    iget-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    .line 11
    invoke-interface {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->initializeResultsCallback()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbg:J

    iget-object v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    .line 12
    invoke-interface {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->initializeIsolationCallback()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbh:J

    iget-object v7, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsj;->zbl()[B

    move-result-object v8

    iget-wide v9, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbf:J

    iget-wide v11, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbg:J

    iget-wide v13, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbh:J

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    .line 14
    invoke-interface/range {v7 .. v18}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->initialize([BJJJJJ)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    return-void
.end method


# virtual methods
.method public final zba(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;->zba(J)V

    return-void
.end method

.method public final zbb(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string p1, "VKP"

    const-string v0, "openFileDescriptor called but is not available for this pipeline. Ignoring call."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public final zbc(I)V
    .locals 1

    .line 1
    const-string p1, "VKP"

    const-string v0, "closeFileDescriptor called but is not available for this pipeline. Ignoring call."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final zbd(Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcq;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Pipeline received results: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcq;->zbb(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zbe(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zba()J

    move-result-wide v1

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbf;->zbb(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    iget-wide v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    iget-wide v4, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbe:J

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zba()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbc()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zbb()I

    move-result v9

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcr;->zba()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbd()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbe;->zbe()I

    move-result p1

    add-int/lit8 v12, p1, -0x1

    .line 5
    invoke-interface/range {v1 .. v12}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->process(JJJ[BIIII)[B

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;->zbd([BLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 6
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    const-string v1, "Could not parse results"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object p1

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Pipeline has been closed or was not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized zbf()V
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v2, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    invoke-interface {v0, v2, v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->stop(J)Z

    iget-object v6, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    iget-wide v7, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    iget-wide v9, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbe:J

    iget-wide v11, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbf:J

    iget-wide v13, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbg:J

    iget-wide v2, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbh:J

    .line 2
    move-wide v15, v2

    invoke-interface/range {v6 .. v16}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->close(JJJJJ)V

    iput-wide v4, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    iget-object v0, v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->zba()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zbg()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    .line 3
    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->start(J)V

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    iget-wide v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->waitUntilIdle(J)V
    :try_end_0
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    iget-wide v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    .line 5
    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->stop(J)Z

    .line 6
    throw v0

    .line 1
    :cond_0
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;

    sget-object v1, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;->zbj:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;->ordinal()I

    move-result v1

    const-string v2, "Pipeline has been closed or was not initialized"

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final zbh()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    .line 2
    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->stop(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "Pipeline did not stop successfully."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pipeline has been closed or was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zbi(JLandroid/graphics/Bitmap;I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
    .locals 13

    .line 1
    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v3, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    iget-wide v4, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    .line 4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    add-int/lit8 v12, p4, -0x1

    .line 6
    move-wide v6, p1

    move-object/from16 v8, p3

    invoke-interface/range {v3 .. v12}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->processBitmap(JJLandroid/graphics/Bitmap;IIII)[B

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;->zbd([BLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object v0

    .line 7
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 8
    const-string v2, "Could not parse results"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported bitmap config "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pipeline has been closed or was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zbj(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;

    iget-wide v3, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zbd:J

    add-int/lit8 v15, p11, -0x1

    .line 4
    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-interface/range {v2 .. v15}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;->processYuvFrame(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)[B

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbc;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;->zbd([BLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object v0

    .line 5
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 6
    const-string v2, "Could not parse results"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "Byte buffers are not direct."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pipeline has been closed or was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
