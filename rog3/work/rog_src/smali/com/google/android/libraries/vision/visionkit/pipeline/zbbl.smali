.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;


# instance fields
.field private zbd:I

.field private zbe:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zblm;

.field private zbf:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbnw;

.field private zbg:Z

.field private zbh:Ljava/lang/String;

.field private zbi:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;->zbi:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;->zbh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zba()Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;

    return-object v0
.end method


# virtual methods
.method protected final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbk;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbk;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbbj;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;

    invoke-direct {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;-><init>()V

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

    sget-object p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0001\u0001\u1009\u0000\u0002\u1409\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-byte p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;->zbi:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-byte p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbl;->zbi:B

    return-object p3

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
