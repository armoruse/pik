.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@19.1.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zza()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
