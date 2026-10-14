.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;


# instance fields
.field private zbd:I

.field private zbe:I

.field private zbf:D

.field private zbg:D

.field private zbh:I

.field private zbi:Z

.field private zbj:Z

.field private zbk:Z

.field private zbl:Z

.field private zbm:Z

.field private zbn:Z

.field private zbo:Z

.field private zbp:I

.field private zbq:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaap;

.field private zbr:F

.field private zbs:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaap;

.field private zbt:F

.field private zbu:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;->zbu:Ljava/lang/String;

    return-void
.end method

.method static synthetic zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;

    return-object v0
.end method


# virtual methods
.method protected final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 2
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-object v1

    .line 1
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaan;

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaan;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaad;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;-><init>()V

    return-object v0

    .line 2
    :pswitch_4
    const-string/jumbo v1, "zbd"

    const-string/jumbo v2, "zbe"

    const-string/jumbo v3, "zbf"

    const-string/jumbo v4, "zbg"

    const-string/jumbo v5, "zbh"

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaq;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    const-string/jumbo v7, "zbi"

    const-string/jumbo v8, "zbj"

    const-string/jumbo v9, "zbk"

    const-string/jumbo v10, "zbl"

    const-string/jumbo v11, "zbm"

    const-string/jumbo v12, "zbn"

    const-string/jumbo v13, "zbo"

    const-string/jumbo v14, "zbp"

    const-string/jumbo v15, "zbq"

    const-string/jumbo v16, "zbr"

    const-string/jumbo v17, "zbs"

    const-string/jumbo v18, "zbt"

    const-string/jumbo v19, "zbu"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;

    const-string v2, "\u0001\u0011\u0000\u0001\u0001\u0011\u0011\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1000\u0001\u0003\u1000\u0002\u0004\u180c\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1007\u0006\u0008\u1007\u0007\t\u1007\u0008\n\u1007\t\u000b\u1007\n\u000c\u1004\u000b\r\u1009\u000c\u000e\u1001\r\u000f\u1009\u000e\u0010\u1001\u000f\u0011\u1008\u0010"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaar;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

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
