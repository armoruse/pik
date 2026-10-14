.class Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zba;


# instance fields
.field private zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

.field private zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;

.field private zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;

.field private zbd:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;

    iput-object p2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;

    iput-object p3, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zbd:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;

    iput-object p4, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)V

    .line 2
    const-string p1, "mlkit_google_ocr_pipeline"

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native close(JJJJJ)V
.end method

.method public closeFileDescriptor(I)V
    .locals 1
    .param p1, "fd"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;
    .end local p1    # "fd":I
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zbd:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;->zbc(I)V

    return-void
.end method

.method public native initialize([BJJJJJ)J
.end method

.method public native initializeFrameBufferReleaseCallback(J)J
.end method

.method public native initializeFrameManager()J
.end method

.method public native initializeIsolationCallback()J
.end method

.method public native initializeResultsCallback()J
.end method

.method public onReleaseAtTimestampUs(J)V
    .locals 1
    .param p1, "timestampUs"    # J

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;
    .end local p1    # "timestampUs":J
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;->zba(J)V

    return-void
.end method

.method public onResult([B)V
    .locals 3
    .param p1, "resultsBytes"    # [B

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;
    .end local p1    # "resultsBytes":[B
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    invoke-static {p1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;->zbd([BLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;->zbd(Lcom/google/android/libraries/vision/visionkit/pipeline/zbcz;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcq;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcq;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    const-string v2, "Error in result from JNI layer"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcq;->zba(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public openFileDescriptor(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;
    .end local p1    # "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zbd:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;->zbb(Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public native process(JJJ[BIIII)[B
.end method

.method public native processBitmap(JJLandroid/graphics/Bitmap;IIII)[B
.end method

.method public native processYuvFrame(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)[B
.end method

.method public native start(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
        }
    .end annotation
.end method

.method public native stop(J)Z
.end method

.method public native waitUntilIdle(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
        }
    .end annotation
.end method

.method public final zba()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbx;

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zbc:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcc;

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/NativePipelineImpl;->zbd:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcb;

    return-void
.end method
