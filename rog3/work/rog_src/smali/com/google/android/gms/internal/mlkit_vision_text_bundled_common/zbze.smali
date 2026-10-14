.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;


# instance fields
.field private zbd:I

.field private zbe:Ljava/lang/String;

.field private zbf:Ljava/lang/String;

.field private zbg:Ljava/lang/String;

.field private zbh:I

.field private zbi:I

.field private zbj:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbyg;

.field private zbk:Z

.field private zbl:I

.field private zbm:Z

.field private zbn:Z

.field private zbo:Z

.field private zbp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;->zbe:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;->zbf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;->zbg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;

    return-object v0
.end method


# virtual methods
.method protected final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 2
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-object v1

    .line 1
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzd;

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwz;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;-><init>()V

    return-object v0

    .line 2
    :pswitch_4
    const-string/jumbo v1, "zbd"

    const-string/jumbo v2, "zbe"

    const-string/jumbo v3, "zbf"

    const-string/jumbo v4, "zbg"

    const-string/jumbo v5, "zbh"

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzh;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    const-string/jumbo v7, "zbi"

    const-string/jumbo v8, "zbj"

    const-string/jumbo v9, "zbk"

    const-string/jumbo v10, "zbl"

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzi;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    const-string/jumbo v12, "zbm"

    const-string/jumbo v13, "zbn"

    const-string/jumbo v14, "zbo"

    const-string/jumbo v15, "zbp"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;

    const-string v2, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u180c\u0003\u0005\u1004\u0004\u0006\u1009\u0005\u0007\u1007\u0006\u0008\u180c\u0007\t\u1007\u0008\n\u1007\t\u000b\u1007\n\u000c\u1002\u000b"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

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
