.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;


# instance fields
.field private zbd:I

.field private zbe:Lcom/google/android/libraries/vision/visionkit/pipeline/zbco;

.field private zbf:Lcom/google/android/libraries/vision/visionkit/pipeline/zbat;

.field private zbg:Lcom/google/android/libraries/vision/visionkit/pipeline/zbag;

.field private zbh:Lcom/google/android/libraries/vision/visionkit/pipeline/zbez;

.field private zbi:Z

.field private zbj:Lcom/google/android/libraries/vision/visionkit/pipeline/zbaw;

.field private zbk:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcr;

.field private zbl:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    return-void
.end method

.method static synthetic zba()Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;

    return-object v0
.end method


# virtual methods
.method protected final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdv;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdv;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbdu;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;

    invoke-direct {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string/jumbo v0, "zbd"

    const-string/jumbo v1, "zbf"

    const-string/jumbo v2, "zbj"

    const-string/jumbo v3, "zbe"

    const-string/jumbo v4, "zbg"

    const-string/jumbo v5, "zbh"

    const-string/jumbo v6, "zbi"

    const-string/jumbo v7, "zbk"

    const-string/jumbo v8, "zbl"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0000\u0000\u0000\u0001\u1009\u0001\u0003\u1009\u0005\u0004\u1009\u0000\u0005\u1009\u0002\u0006\u1009\u0003\u0007\u1007\u0004\u0008\u1009\u0006\t\u1009\u0007"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbdw;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_5
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

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
