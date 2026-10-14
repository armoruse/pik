.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;


# instance fields
.field private zbA:I

.field private zbB:F

.field private zbC:I

.field private zbD:F

.field private zbE:I

.field private zbF:B

.field private zbd:I

.field private zbe:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbf:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpw;

.field private zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpw;

.field private zbh:Ljava/lang/String;

.field private zbi:F

.field private zbj:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbk:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbl:Z

.field private zbm:Ljava/lang/String;

.field private zbn:Z

.field private zbo:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbp:Z

.field private zbq:Z

.field private zbr:Z

.field private zbs:I

.field private zbt:I

.field private zbu:I

.field private zbv:I

.field private zbw:I

.field private zbx:I

.field private zby:Ljava/lang/String;

.field private zbz:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;

    .line 2
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbF:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbe:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbh:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbj:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbk:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbm:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbo:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbp:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zby:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbC:I

    return-void
.end method

.method static synthetic zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;

    return-object v0
.end method


# virtual methods
.method protected final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    .line 2
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrr;

    .line 3
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpu;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;-><init>()V

    return-object v0

    .line 2
    :pswitch_4
    const-string/jumbo v1, "zbd"

    const-string/jumbo v2, "zbe"

    const-class v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbre;

    const-string/jumbo v4, "zbf"

    const-string/jumbo v5, "zbg"

    const-string/jumbo v6, "zbh"

    const-string/jumbo v7, "zbi"

    const-string/jumbo v8, "zbk"

    const-class v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpy;

    const-string/jumbo v10, "zbl"

    const-string/jumbo v11, "zbm"

    const-string/jumbo v12, "zbj"

    const-class v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqa;

    const-string/jumbo v14, "zbn"

    const-string/jumbo v15, "zbo"

    const-class v16, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrc;

    const-string/jumbo v17, "zbp"

    const-string/jumbo v18, "zbq"

    const-string/jumbo v19, "zbr"

    const-string/jumbo v20, "zbt"

    const-string/jumbo v21, "zbu"

    const-string/jumbo v22, "zbv"

    const-string/jumbo v23, "zbw"

    const-string/jumbo v24, "zbx"

    const-string/jumbo v25, "zby"

    const-string/jumbo v26, "zbz"

    const-string/jumbo v27, "zbA"

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabe;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    move-result-object v28

    const-string/jumbo v29, "zbC"

    sget-object v30, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqr;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    const-string/jumbo v31, "zbB"

    const-string/jumbo v32, "zbD"

    const-string/jumbo v33, "zbE"

    const-string/jumbo v34, "zbs"

    filled-new-array/range {v1 .. v34}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;

    const-string v2, "\u0001\u001b\u0000\u0001\u0001\u001b\u001b\u0000\u0004\u0004\u0001\u041b\u0002\u1509\u0000\u0003\u1409\u0001\u0004\u1008\u0002\u0005\u1001\u0003\u0006\u001b\u0007\u1007\u0004\u0008\u1008\u0005\t\u041b\n\u1007\u0006\u000b\u001b\u000c\u1007\u0007\r\u1007\u0008\u000e\u1007\t\u000f\u1004\u000b\u0010\u1004\u000c\u0011\u1004\r\u0012\u1004\u000e\u0013\u1004\u000f\u0014\u1008\u0010\u0015\u1001\u0011\u0016\u180c\u0012\u0017\u180c\u0014\u0018\u1001\u0013\u0019\u1001\u0015\u001a\u1004\u0016\u001b\u1004\n"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-byte v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbF:B

    .line 1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-byte v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;->zbF:B

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
