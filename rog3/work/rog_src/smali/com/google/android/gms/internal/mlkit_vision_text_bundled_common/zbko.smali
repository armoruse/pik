.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbko;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# instance fields
.field private final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkm;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkc;->zbb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbko;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkm;

    return-void
.end method

.method public static zba(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbko;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbko;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkm;

    const-string v1, "#vk "

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkm;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbko;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkm;)V

    return-object p0
.end method


# virtual methods
.method public final zbb(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbko;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkm;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkl;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbko;Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    nop

    .line 5
    const/4 p1, 0x0

    throw p1
.end method
