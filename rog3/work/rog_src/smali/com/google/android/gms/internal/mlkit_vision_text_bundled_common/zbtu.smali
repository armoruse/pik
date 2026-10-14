.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;


# instance fields
.field final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

.field private zbc:Z

.field private zbd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwa;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwa;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbh()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbh()V

    return-void
.end method

.method static zba(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;ILjava/lang/Object;)I
    .locals 4

    .line 1
    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbj:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    if-ne p0, v0, :cond_0

    .line 3
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbd(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)Z

    add-int/2addr p1, p1

    .line 4
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 41
    new-instance p0, Ljava/lang/RuntimeException;

    .line 42
    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v2, v0, v0

    const/16 p0, 0x3f

    shr-long/2addr v0, p0

    xor-long/2addr v0, v2

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto/16 :goto_0

    .line 11
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p2, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p2

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_0

    .line 13
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move v0, v1

    goto/16 :goto_0

    .line 14
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_0

    .line 10
    :pswitch_4
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;

    if-eqz p0, :cond_1

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;->zba()I

    move-result p0

    int-to-long v0, p0

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto/16 :goto_0

    .line 7
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto/16 :goto_0

    .line 15
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_0

    .line 31
    :pswitch_6
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz p0, :cond_2

    .line 16
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result p0

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p2

    add-int v0, p2, p0

    goto/16 :goto_0

    .line 19
    :cond_2
    check-cast p2, [B

    .line 20
    array-length p0, p2

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p2

    add-int v0, p2, p0

    goto/16 :goto_0

    .line 25
    :pswitch_7
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    if-eqz p0, :cond_3

    .line 26
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuw;->zba()I

    move-result p0

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p2

    add-int v0, p2, p0

    goto/16 :goto_0

    .line 29
    :cond_3
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)I

    move-result v0

    goto :goto_0

    .line 30
    :pswitch_8
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    .line 31
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;->zbo()I

    move-result v0

    goto :goto_0

    .line 21
    :pswitch_9
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz p0, :cond_4

    .line 22
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result p0

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p2

    add-int v0, p2, p0

    goto :goto_0

    .line 25
    :cond_4
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbC(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 32
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v0, 0x1

    goto :goto_0

    .line 33
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    .line 34
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move v0, v1

    goto :goto_0

    .line 35
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    .line 36
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto :goto_0

    .line 37
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto :goto_0

    .line 38
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 39
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    goto :goto_0

    .line 40
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    goto :goto_0

    .line 41
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move v0, v1

    .line 10
    :goto_0
    add-int/2addr p1, v0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zba()I

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    .line 4
    const p0, 0x1ea8e13

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    return-object v0
.end method

.method static zbk(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbj:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    if-eq p1, v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zba()I

    move-result v0

    .line 3
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 9
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long v0, p1, p1

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    return-void

    .line 11
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p2, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    return-void

    .line 13
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    return-void

    .line 15
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    return-void

    .line 4
    :pswitch_4
    instance-of p1, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;

    if-eqz p1, :cond_0

    .line 5
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;

    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;->zba()I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbm(I)V

    return-void

    .line 7
    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbm(I)V

    return-void

    .line 17
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    return-void

    .line 22
    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz p1, :cond_1

    .line 18
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbg(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    return-void

    :cond_1
    nop

    .line 19
    check-cast p3, [B

    .line 20
    array-length p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbe([BII)V

    return-void

    .line 23
    :pswitch_7
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbp(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)V

    return-void

    .line 24
    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    .line 25
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;->zbL(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;)V

    return-void

    .line 17
    :pswitch_9
    instance-of p1, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz p1, :cond_2

    .line 21
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbg(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    return-void

    .line 22
    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbt(Ljava/lang/String;)V

    return-void

    .line 26
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbb(B)V

    return-void

    .line 28
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    return-void

    .line 29
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    return-void

    .line 30
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbm(I)V

    return-void

    .line 31
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    return-void

    .line 32
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    return-void

    .line 34
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    return-void

    .line 36
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    return-void

    .line 38
    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbd(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)Z

    .line 39
    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    .line 40
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;->zbL(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;)V

    .line 41
    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zbn(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;->zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, [B

    .line 4
    array-length v0, p0

    new-array v1, v0, [B

    .line 5
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method private final zbo(Ljava/util/Map$Entry;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zbi:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    if-ne v2, v3, :cond_4

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbf(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd:Z

    :cond_0
    return-void

    :cond_1
    if-nez v1, :cond_3

    instance-of v1, v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    if-eqz v1, :cond_2

    .line 7
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    .line 8
    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbc(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvr;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_2
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    .line 10
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;->zbK()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvl;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvl;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvl;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvl;->zbk()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    move-result-object p1

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 12
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 13
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    .line 14
    const/4 p1, 0x0

    throw p1

    .line 11
    :cond_4
    if-nez v1, :cond_5

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    const-string v0, "Lazy fields must be message-valued"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zbp(Ljava/util/Map$Entry;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zbi:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;->zbp()Z

    move-result v3

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    if-eqz p0, :cond_1

    :goto_0
    return v3

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v3
.end method

.method private static final zbq(Ljava/util/Map$Entry;)I
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zbi:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    if-ne v2, v3, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbf()Z

    instance-of v0, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    const/16 v2, 0x18

    const v3, 0x1ea8e13

    const/16 v4, 0x10

    const/16 v5, 0x8

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zba()I

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    .line 8
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p0

    add-int/2addr p0, p0

    .line 9
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuw;->zba()I

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/2addr p0, v0

    add-int/2addr p0, v2

    return p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zba()I

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    .line 15
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result p0

    add-int/2addr p0, p0

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr p0, v0

    add-int/2addr p0, v2

    return p0

    .line 4
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zbc()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbq(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbq(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public final zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 2
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwb;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwb;->zba()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbj(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbj(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd:Z

    return-object v0
.end method

.method public final zbf(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    if-nez v0, :cond_0

    .line 3
    return-object p1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    .line 3
    const/4 p1, 0x0

    throw p1
.end method

.method public final zbg()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuu;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuu;-><init>(Ljava/util/Iterator;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zbh()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    if-eqz v3, :cond_1

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbB()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zba()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbc:Z

    return-void
.end method

.method public final zbi(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbo(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbd()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbo(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final zbj(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbg()Z

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    if-eqz p2, :cond_3

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 13
    :pswitch_0
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5
    :pswitch_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuh;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :pswitch_2
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-nez v0, :cond_0

    .line 6
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :pswitch_3
    instance-of v0, p2, Ljava/lang/String;

    goto :goto_0

    .line 8
    :pswitch_4
    instance-of v0, p2, Ljava/lang/Boolean;

    goto :goto_0

    .line 9
    :pswitch_5
    instance-of v0, p2, Ljava/lang/Double;

    goto :goto_0

    .line 10
    :pswitch_6
    instance-of v0, p2, Ljava/lang/Float;

    goto :goto_0

    .line 11
    :pswitch_7
    instance-of v0, p2, Ljava/lang/Long;

    goto :goto_0

    .line 12
    :pswitch_8
    instance-of v0, p2, Ljava/lang/Integer;

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 5
    :cond_0
    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuv;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbd:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zba()I

    const v1, 0x1ea8e13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;->zbd()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 17
    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    nop

    .line 18
    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zbl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbc:Z

    return v0
.end method

.method public final zbm()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbp(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbp(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
