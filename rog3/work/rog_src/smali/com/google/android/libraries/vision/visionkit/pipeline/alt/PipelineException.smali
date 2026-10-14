.class public Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
.super Ljava/lang/Exception;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# static fields
.field private static final ROOT_CAUSE_DELIMITER:Ljava/lang/String; = "#vk "


# instance fields
.field private final statusCode:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;

.field private final statusMessage:Ljava/lang/String;

.field private final visionkitStatus:Lcom/google/android/libraries/vision/visionkit/pipeline/zber;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "statusMessage"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
    .end local p1    # "statusCode":I
    .end local p2    # "statusMessage":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;->values()[Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;->zba()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;->values()[Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->statusCode:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;

    iput-object p2, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->statusMessage:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->visionkitStatus:Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zber;)V
    .locals 3
    .param p1, "status"    # Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    .line 3
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;->values()[Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;

    move-result-object v0

    .end local p0    # "this":Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
    .end local p1    # "status":Lcom/google/android/libraries/vision/visionkit/pipeline/zber;
    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zba()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;->zba()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbe()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;->values()[Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zba()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->statusCode:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbe()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->statusMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->visionkitStatus:Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .param p1, "serializedStatus"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;
        }
    .end annotation

    .line 6
    nop

    .end local p0    # "this":Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
    .end local p1    # "serializedStatus":[B
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbd([BLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zber;)V

    return-void
.end method


# virtual methods
.method public getComponentStatuses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/vision/visionkit/pipeline/zbad;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->visionkitStatus:Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbf()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v0

    return-object v0
.end method

.method public getRootCauseMessage()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;
    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->statusMessage:Ljava/lang/String;

    const-string v1, "#vk "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->statusMessage:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbko;->zba(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbko;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbko;->zbb(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 7
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 11
    :goto_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbe(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0

    return-object v0

    .line 7
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbki;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->statusCode:Lcom/google/android/libraries/vision/visionkit/pipeline/alt/zbd;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/alt/PipelineException;->statusMessage:Ljava/lang/String;

    return-object v0
.end method
