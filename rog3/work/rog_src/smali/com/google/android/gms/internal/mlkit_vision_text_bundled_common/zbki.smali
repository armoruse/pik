.class public abstract Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbjy;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbjy;

    return-object v0
.end method

.method public static zbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkk;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
.end method

.method public abstract hashCode()I
.end method

.method public abstract zba()Ljava/lang/Object;
.end method

.method public abstract zbb(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract zbc()Z
.end method
