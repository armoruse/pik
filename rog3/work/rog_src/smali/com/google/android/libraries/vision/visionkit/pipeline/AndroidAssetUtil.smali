.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/AndroidAssetUtil;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# direct methods
.method private static native nativeInitializeAssetManager(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public static declared-synchronized zba(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Lcom/google/android/libraries/vision/visionkit/pipeline/AndroidAssetUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {p0, v1}, Lcom/google/android/libraries/vision/visionkit/pipeline/AndroidAssetUtil;->nativeInitializeAssetManager(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
