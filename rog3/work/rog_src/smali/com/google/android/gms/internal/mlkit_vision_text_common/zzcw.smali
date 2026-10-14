.class public final enum Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@19.1.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    .line 2
    const-string v1, "SIGNED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    .line 3
    const-string v1, "FIXED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcw;

    return-object v0
.end method
