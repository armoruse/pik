.class final Lcom/google/android/gms/internal/mlkit_vision_text_common/zziw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@19.1.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zziw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zziw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zziw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zziw;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zziw;

    const-string v0, "deviceInfos"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;-><init>()V

    .line 2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcx;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    .line 5
    const-string v0, "errorInfo"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;-><init>()V

    .line 6
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcx;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzte;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 2
    const/4 p1, 0x0

    throw p1
.end method
