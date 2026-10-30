.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;


# instance fields
.field private zbd:I

.field private zbe:I

.field private zbf:Ljava/lang/Object;

.field private zbg:Lcom/google/android/libraries/vision/visionkit/pipeline/zbdo;

.field private zbh:Z

.field private zbi:Lcom/google/android/libraries/vision/visionkit/pipeline/zbg;

.field private zbj:Lcom/google/android/libraries/vision/visionkit/pipeline/zbfc;

.field private zbk:Lcom/google/android/libraries/vision/visionkit/pipeline/zbd;

.field private zbl:I

.field private zbm:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbe:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbm:B

    return-void
.end method

.method public static zbc()Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbq()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;

    return-object v0
.end method

.method static synthetic zbd()Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    return-object v0
.end method

.method static synthetic zbe(Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;Lcom/google/android/libraries/vision/visionkit/pipeline/zbfc;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbj:Lcom/google/android/libraries/vision/visionkit/pipeline/zbfc;

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbd:I

    return-void
.end method

.method static synthetic zbf(Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;Lcom/google/android/libraries/vision/visionkit/pipeline/zbdo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbg:Lcom/google/android/libraries/vision/visionkit/pipeline/zbdo;

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbd:I

    return-void
.end method


# virtual methods
.method public final zba()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbl:I

    return v0
.end method

.method protected final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;-><init>(Lcom/google/android/libraries/vision/visionkit/pipeline/zbby;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    invoke-direct {p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string/jumbo v0, "zbf"

    const-string/jumbo v1, "zbe"

    const-string/jumbo v2, "zbd"

    const-string/jumbo v3, "zbg"

    const-string/jumbo v4, "zbh"

    const-string/jumbo v5, "zbj"

    const-string/jumbo v6, "zbi"

    const-string/jumbo v7, "zbk"

    const-string/jumbo v8, "zbl"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    const-string p3, "\u0001\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0001\u0001\u1409\u0000\u0002\u1007\u0001\u0003\u1009\u0003\u0004\u1009\u0002\u0005:\u0000\u0006:\u0000\u0007\u1009\u0004\u0008\u1004\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-byte p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbm:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-byte p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbm:B

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

.method public final zbg()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbe:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbf:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zbh()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbe:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbf:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zbi()Z
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbd:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
