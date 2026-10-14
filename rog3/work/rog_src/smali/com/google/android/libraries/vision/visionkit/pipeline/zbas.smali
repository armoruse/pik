.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;


# instance fields
.field private zbd:I

.field private zbe:F

.field private zbf:J

.field private zbg:J

.field private zbh:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    return-void
.end method

.method static synthetic zba()Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    return-object v0
.end method


# virtual methods
.method protected final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbar;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbar;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zban;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    invoke-direct {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string/jumbo p1, "zbg"

    const-string/jumbo p2, "zbh"

    const-string/jumbo p3, "zbd"

    const-string/jumbo v0, "zbe"

    const-string/jumbo v1, "zbf"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
