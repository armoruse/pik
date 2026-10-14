.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;


# instance fields
.field private zbd:I

.field private zbe:Z

.field private zbf:Z

.field private zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaii;

.field private zbh:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbjs;

.field private zbi:F

.field private zbj:F

.field private zbk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;->zbe:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;->zbf:Z

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;->zbi:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;->zbj:F

    return-void
.end method

.method static synthetic zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;

    return-object v0
.end method


# virtual methods
.method protected final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbg;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbf;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string/jumbo v0, "zbd"

    const-string/jumbo v1, "zbe"

    const-string/jumbo v2, "zbg"

    const-string/jumbo v3, "zbh"

    const-string/jumbo v4, "zbf"

    const-string/jumbo v5, "zbi"

    const-string/jumbo v6, "zbj"

    const-string/jumbo v7, "zbk"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1009\u0002\u0003\u1009\u0003\u0004\u1007\u0001\u0005\u1001\u0004\u0006\u1001\u0005\u0007\u1007\u0006"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbbh;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_5
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
