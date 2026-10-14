.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;


# instance fields
.field private zbd:I

.field private zbe:I

.field private zbf:Ljava/lang/Object;

.field private zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahf;

.field private zbh:Ljava/lang/String;

.field private zbi:Ljava/lang/String;

.field private zbj:Ljava/lang/String;

.field private zbk:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbm:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

.field private zbn:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;

    .line 2
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbe:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbm:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbj:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbk:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbn:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    return-void
.end method

.method static synthetic zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;

    return-object v0
.end method


# virtual methods
.method protected final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 2
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-object v1

    .line 1
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahh;

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbagx;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;-><init>()V

    return-object v0

    .line 2
    :pswitch_4
    const-string/jumbo v1, "zbf"

    const-string/jumbo v2, "zbe"

    const-string/jumbo v3, "zbd"

    const-string/jumbo v4, "zbg"

    const-string/jumbo v5, "zbh"

    const-string/jumbo v6, "zbk"

    const-class v7, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahj;

    const-string/jumbo v8, "zbl"

    const-class v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahl;

    const-class v10, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahd;

    const-string/jumbo v11, "zbm"

    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahg;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;

    const-string/jumbo v13, "zbn"

    const-class v14, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsp;

    const-string/jumbo v15, "zbi"

    const-string/jumbo v16, "zbj"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;

    .line 3
    const-string v2, "\u0000\t\u0001\u0001\u0001\u000b\t\u0001\u0003\u0000\u0001\u1009\u0000\u0002\u0208\u0003\u001b\u0004\u001b\u0005<\u0000\u00082\t\u001b\n\u0208\u000b\u0208"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbahm;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    nop

    .line 1
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
