.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@19.1.0"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# static fields
.field public static final zza:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;->zza:Lcom/google/firebase/encoders/config/Configurator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoy;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzio;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzio;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzst;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmg;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoz;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzip;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzip;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpc;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzir;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzir;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpa;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zziq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpb;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzis;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzis;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznk;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhi;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznj;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhh;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoj;

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzid;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsf;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlq;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzni;

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhg;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznh;

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhf;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqi;

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzka;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzka;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztn;

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhw;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzod;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhz;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzny;

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhv;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqj;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrz;

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzln;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzln;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlo;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrw;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlm;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpg;

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zziy;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zziy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztm;

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgp;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzph;

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zziz;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zziz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqr;

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqu;

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkm;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqt;

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkl;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqs;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkk;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrd;

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkv;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzre;

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkw;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrg;

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzky;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzky;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrf;

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkx;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpf;

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzix;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzix;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrh;

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkz;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzla;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzla;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzri;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrj;

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlb;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrk;

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzro;

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlf;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrn;

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlg;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrc;

    .line 39
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzon;

    .line 40
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzii;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzii;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzra;

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqz;

    .line 42
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrb;

    .line 43
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzse;

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlp;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsz;

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmw;

    .line 46
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgu;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmu;

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgs;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmt;

    .line 48
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmv;

    .line 49
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgt;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmy;

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgw;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmx;

    .line 51
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgv;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmz;

    .line 52
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgx;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzna;

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgy;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznb;

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgz;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznc;

    .line 55
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzha;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzha;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznd;

    .line 56
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzev;

    .line 57
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgl;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzex;

    .line 58
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgn;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzew;

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgm;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzol;

    .line 60
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzig;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzig;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznl;

    .line 61
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhj;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdg;

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzez;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzez;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdf;

    .line 63
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfa;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfa;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdi;

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfb;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdh;

    .line 66
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfc;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdu;

    .line 67
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfn;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfo;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfo;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdt;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdk;

    .line 69
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfd;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdj;

    .line 70
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfe;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfe;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzea;

    .line 71
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzft;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdz;

    .line 72
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzee;

    .line 73
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzed;

    .line 74
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeu;

    .line 75
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgj;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;

    .line 76
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgk;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeg;

    .line 77
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfz;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzef;

    .line 78
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzga;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzga;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzei;

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgb;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeh;

    .line 80
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgc;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzth;

    .line 81
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlt;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzta;

    .line 82
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhk;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzte;

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zziw;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zziw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztd;

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zziv;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zziv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztb;

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztg;

    .line 86
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzls;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzls;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztf;

    .line 87
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzti;

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlu;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztc;

    .line 89
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzie;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzie;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztl;

    .line 90
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztk;

    .line 91
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmp;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztj;

    .line 92
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsh;

    .line 93
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlw;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzok;

    .line 94
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzif;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzif;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoo;

    .line 95
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzij;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzij;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzms;

    .line 96
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgq;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoe;

    .line 97
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzia;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzia;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzom;

    .line 98
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzih;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzih;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznx;

    .line 99
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhu;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznn;

    .line 100
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhm;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzno;

    .line 101
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhn;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhl;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhl;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznm;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznp;

    .line 103
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzho;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzho;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpe;

    .line 104
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zziu;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zziu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpd;

    .line 105
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzit;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzit;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzde;

    .line 106
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzey;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzey;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsw;

    .line 107
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmj;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsy;

    .line 108
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzml;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzml;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsx;

    .line 109
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmr;

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgo;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzng;

    .line 111
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhe;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhe;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznf;

    .line 112
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhd;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzne;

    .line 113
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhc;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqf;

    .line 114
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjx;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqh;

    .line 115
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjz;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqg;

    .line 116
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzds;

    .line 117
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdr;

    .line 118
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfm;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqk;

    .line 119
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkc;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqn;

    .line 120
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzql;

    .line 121
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkd;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqm;

    .line 122
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzke;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzke;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdw;

    .line 123
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfp;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdv;

    .line 124
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsm;

    .line 125
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmb;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsl;

    .line 126
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzma;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzma;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsu;

    .line 127
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmh;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsv;

    .line 128
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmi;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqv;

    .line 129
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkn;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqy;

    .line 130
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkq;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqw;

    .line 131
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzko;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzko;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqx;

    .line 132
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkp;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    .line 133
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzic;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzic;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzec;

    .line 134
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;

    .line 135
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 136
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzib;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzib;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzof;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznz;

    .line 137
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhy;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqo;

    .line 138
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkg;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqq;

    .line 139
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzki;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzki;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqp;

    .line 140
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkh;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdy;

    .line 141
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdx;

    .line 142
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfs;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpv;

    .line 143
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjn;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpw;

    .line 144
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjo;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpx;

    .line 145
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjp;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdo;

    .line 146
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfh;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdn;

    .line 147
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfi;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzps;

    .line 148
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjk;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpt;

    .line 149
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjl;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpu;

    .line 150
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjm;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdm;

    .line 151
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzff;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzff;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdl;

    .line 152
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpy;

    .line 153
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjq;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpz;

    .line 154
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqa;

    .line 155
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjs;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqb;

    .line 156
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjt;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdq;

    .line 157
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfj;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdp;

    .line 158
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzfk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsj;

    .line 159
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlx;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsi;

    .line 160
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzly;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzly;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzop;

    .line 161
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzik;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzik;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzor;

    .line 162
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzim;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzim;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoq;

    .line 163
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzil;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzil;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzos;

    .line 164
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzin;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzin;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrp;

    .line 165
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlh;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrq;

    .line 166
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzli;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzli;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzem;

    .line 167
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgf;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzel;

    .line 168
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgg;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsn;

    .line 169
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmc;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 170
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzld;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzld;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrl;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrm;

    .line 171
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzle;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzle;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzek;

    .line 172
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgd;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzej;

    .line 173
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzge;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzge;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsk;

    .line 174
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlz;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpr;

    .line 175
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjb;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpq;

    .line 176
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjj;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpn;

    .line 177
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjg;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpm;

    .line 178
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjf;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpo;

    .line 179
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjh;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpp;

    .line 180
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzji;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzji;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpl;

    .line 181
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzje;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzje;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpi;

    .line 182
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzja;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzja;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpk;

    .line 183
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjd;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpj;

    .line 184
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjc;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqd;

    .line 185
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjv;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzns;

    .line 186
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqc;

    .line 187
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzju;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzju;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzqe;

    .line 188
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjw;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzjw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznr;

    .line 189
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhq;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznt;

    .line 190
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhs;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsg;

    .line 191
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrr;

    .line 192
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlj;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsq;

    .line 193
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmf;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrt;

    .line 194
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzll;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzll;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrs;

    .line 195
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlk;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzlk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzso;

    .line 196
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmd;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeo;

    .line 197
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgh;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzen;

    .line 198
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgi;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzgi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsp;

    .line 199
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzme;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzme;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznq;

    .line 200
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhp;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
