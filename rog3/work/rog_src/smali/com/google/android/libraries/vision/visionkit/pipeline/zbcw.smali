.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;


# instance fields
.field private zbd:I

.field private zbe:I

.field private zbf:I

.field private zbg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zbf:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zbg:Ljava/lang/String;

    return-void
.end method

.method public static zba()Lcom/google/android/libraries/vision/visionkit/pipeline/zbct;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbq()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbct;

    return-object v0
.end method

.method static synthetic zbc()Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;

    return-object v0
.end method

.method static synthetic zbd(Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zbe:I

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zbd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zbd:I

    return-void
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
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbct;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbct;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbcs;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;

    invoke-direct {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    const-string/jumbo p2, "zbf"

    const-string/jumbo p3, "zbg"

    const-string/jumbo v0, "zbd"

    const-string/jumbo v1, "zbe"

    filled-new-array {v0, v1, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1004\u0001\u0003\u1008\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbcw;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
