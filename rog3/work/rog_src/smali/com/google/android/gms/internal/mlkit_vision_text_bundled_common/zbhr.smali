.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;


# instance fields
.field private zbd:I

.field private zbe:I

.field private zbf:Ljava/lang/Object;

.field private zbg:Z

.field private zbh:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbi:J

.field private zbj:Z

.field private zbk:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuk;

.field private zbl:F

.field private zbm:F

.field private zbn:F

.field private zbo:F

.field private zbp:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;

    .line 2
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbe:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbp:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbh:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbj:Z

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbv()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbk:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuk;

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbl:F

    return-void
.end method

.method static synthetic zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;

    return-object v0
.end method


# virtual methods
.method protected final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 2
    move-object v0, p0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhq;

    .line 3
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhp;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;-><init>()V

    return-object v0

    .line 2
    :pswitch_4
    const-string/jumbo v1, "zbf"

    const-string/jumbo v2, "zbe"

    const-string/jumbo v3, "zbd"

    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbim;

    const-string/jumbo v5, "zbg"

    const-string/jumbo v6, "zbh"

    const-class v7, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhi;

    const-string/jumbo v8, "zbk"

    const-string/jumbo v9, "zbl"

    const-string/jumbo v10, "zbm"

    const-string/jumbo v11, "zbn"

    const-string/jumbo v12, "zbo"

    const-string/jumbo v13, "zbi"

    const-string/jumbo v14, "zbj"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;

    const-string v2, "\u0001\n\u0001\u0001\u0002\r\n\u0000\u0002\u0001\u0002\u043c\u0000\u0003\u1007\u0000\u0004\u001b\u0005\u0013\u0006\u1001\u0003\u0007\u1001\u0004\u0008\u1001\u0005\u000b\u1001\u0006\u000c\u1002\u0001\r\u1007\u0002"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-byte v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbp:B

    .line 1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-byte v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbhr;->zbp:B

    return-object v2

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
