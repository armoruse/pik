.class final Lcom/google/mlkit/vision/text/pipeline/zba;
.super Lcom/google/mlkit/vision/text/pipeline/zbn;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# instance fields
.field private final zba:Lcom/google/mlkit/vision/text/pipeline/zbo;

.field private final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

.field private final zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

.field private final zbd:Z


# direct methods
.method constructor <init>(Lcom/google/mlkit/vision/text/pipeline/zbo;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/vision/text/pipeline/zbn;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zba:Lcom/google/mlkit/vision/text/pipeline/zbo;

    iput-object p2, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    iput-boolean p4, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbd:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null lineBoxParcels"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/text/pipeline/zbn;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/mlkit/vision/text/pipeline/zbn;

    iget-object v1, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zba:Lcom/google/mlkit/vision/text/pipeline/zbo;

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zbc()Lcom/google/mlkit/vision/text/pipeline/zbo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbd:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zbd()Z

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zba:Lcom/google/mlkit/vision/text/pipeline/zbo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    mul-int/2addr v0, v1

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbd:Z

    if-eq v2, v3, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    iget-object v1, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    iget-object v2, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zba:Lcom/google/mlkit/vision/text/pipeline/zbo;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VkpResults{status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", textParcel="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lineBoxParcels="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fromColdCall="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbd:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    return-object v0
.end method

.method public final zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    return-object v0
.end method

.method public final zbc()Lcom/google/mlkit/vision/text/pipeline/zbo;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zba:Lcom/google/mlkit/vision/text/pipeline/zbo;

    return-object v0
.end method

.method public final zbd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mlkit/vision/text/pipeline/zba;->zbd:Z

    return v0
.end method
