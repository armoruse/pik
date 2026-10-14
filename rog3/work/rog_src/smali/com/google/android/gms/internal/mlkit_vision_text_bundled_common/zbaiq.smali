.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;


# instance fields
.field private zbd:I

.field private zbe:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaio;

.field private zbf:F

.field private zbg:F

.field private zbh:F

.field private zbi:F

.field private zbj:F

.field private zbk:F

.field private zbl:F

.field private zbm:F

.field private zbn:F

.field private zbo:F

.field private zbp:I

.field private zbq:F

.field private zbr:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbf:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbg:F

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbh:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbi:F

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbj:F

    const/high16 v1, 0x3f400000    # 0.75f

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbk:F

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbl:F

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbm:F

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbn:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbo:F

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbp:I

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbq:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbr:I

    return-void
.end method

.method static synthetic zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;

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
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaip;

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaip;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaim;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;-><init>()V

    return-object v0

    .line 2
    :pswitch_4
    const-string/jumbo v1, "zbd"

    const-string/jumbo v2, "zbe"

    const-string/jumbo v3, "zbf"

    const-string/jumbo v4, "zbg"

    const-string/jumbo v5, "zbh"

    const-string/jumbo v6, "zbi"

    const-string/jumbo v7, "zbj"

    const-string/jumbo v8, "zbk"

    const-string/jumbo v9, "zbl"

    const-string/jumbo v10, "zbm"

    const-string/jumbo v11, "zbn"

    const-string/jumbo v12, "zbo"

    const-string/jumbo v13, "zbp"

    const-string/jumbo v14, "zbq"

    const-string/jumbo v15, "zbr"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;

    const-string v2, "\u0001\u000e\u0000\u0001\u0001\u000f\u000e\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1001\u0001\u0003\u1001\u0002\u0004\u1001\u0003\u0005\u1001\u0004\u0006\u1001\u0005\u0008\u1001\u0006\t\u1001\u0007\n\u1001\u0008\u000b\u1001\t\u000c\u1001\n\r\u1004\u000b\u000e\u1001\u000c\u000f\u1004\r"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaiq;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
