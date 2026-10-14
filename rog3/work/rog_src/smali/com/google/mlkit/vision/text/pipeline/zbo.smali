.class public abstract Lcom/google/mlkit/vision/text/pipeline/zbo;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zbc(ILandroid/os/RemoteException;)Lcom/google/mlkit/vision/text/pipeline/zbo;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/text/pipeline/zbb;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/mlkit/vision/text/pipeline/zbb;-><init>(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;)V

    return-object v0
.end method


# virtual methods
.method public abstract zba()I
.end method

.method public abstract zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
.end method

.method public final zbd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/pipeline/zbo;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbc()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
