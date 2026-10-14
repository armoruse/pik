.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zber;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zber;


# instance fields
.field private zbd:I

.field private zbe:I

.field private zbf:Ljava/lang/String;

.field private zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    .line 2
    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    return-void
.end method

.method static synthetic zbc()Lcom/google/android/libraries/vision/visionkit/pipeline/zber;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    return-object v0
.end method

.method public static zbd([BLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)Lcom/google/android/libraries/vision/visionkit/pipeline/zber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbu(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;[BLcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    return-object p0
.end method


# virtual methods
.method public final zba()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbe:I

    return v0
.end method

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
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbeq;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbeq;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbep;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    .line 4
    invoke-direct {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string/jumbo p1, "zbg"

    const-class p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zbad;

    const-string/jumbo p3, "zbd"

    const-string/jumbo v0, "zbe"

    const-string/jumbo v1, "zbf"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zber;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final zbe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbf:Ljava/lang/String;

    return-object v0
.end method

.method public final zbf()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zber;->zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    return-object v0
.end method
