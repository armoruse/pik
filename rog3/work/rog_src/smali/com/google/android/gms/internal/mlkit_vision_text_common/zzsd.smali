.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@19.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

.field private final zzb:Ljava/lang/Boolean;

.field private final zzc:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;->zzb(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsa;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;->zzb:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;->zzb:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;->zzc:Ljava/lang/String;

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    const/4 v1, 0x0

    filled-new-array {v0, v1, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsb;

    return-object v0
.end method
