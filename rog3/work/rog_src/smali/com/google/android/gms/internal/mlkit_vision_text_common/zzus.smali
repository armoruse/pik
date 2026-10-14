.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzus;
.super Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuu;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.mlkit.vision.text.aidls.ICommonTextRecognizerCreator"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvh;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->zza()Landroid/os/Parcel;

    move-result-object p2

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzc;->zzb(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzc;->zzb(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    const/4 p3, 0x1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    nop

    .line 7
    const-string p1, "com.google.mlkit.vision.text.aidls.ITextRecognizer"

    invoke-interface {p3, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;-><init>(Landroid/os/IBinder;)V

    .line 9
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
