.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# static fields
.field public static final synthetic zba:I

.field private static volatile zbb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbb:I

    return-void
.end method

.method static zba([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ltz v0, :cond_2

    .line 4
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    .line 6
    if-nez v0, :cond_0

    .line 7
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    iput-object p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    return p1

    .line 8
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbj([BII)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 4
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 5
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0

    .line 1
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 2
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 3
    throw p0
.end method

.method static zbb(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p4, p4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    iget-object p6, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;

    iget-object p6, p6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbn:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    const/4 v1, 0x0

    if-eq p6, v0, :cond_3

    .line 5
    invoke-virtual {p6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->ordinal()I

    move-result p6

    packed-switch p6, :pswitch_data_0

    goto/16 :goto_3

    .line 25
    :pswitch_0
    invoke-static {p1, p2, p7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    iget-wide p0, p7, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    .line 26
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbc(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_3

    .line 27
    :pswitch_1
    invoke-static {p1, p2, p7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    iget p0, p7, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbb(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_3

    .line 34
    :pswitch_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 24
    const-string p1, "Shouldn\'t reach here."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :pswitch_3
    invoke-static {p1, p2, p7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    iget-object v1, p7, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    goto/16 :goto_3

    .line 9
    :pswitch_4
    iget-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;

    move-result-object p6

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zbb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    iget-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;

    .line 12
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbf(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object p0

    iget-object p5, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;

    .line 14
    invoke-virtual {p4, p5, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbj(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)V

    move-object v0, p0

    goto :goto_0

    .line 12
    :cond_0
    move-object v0, p0

    .line 15
    :goto_0
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbp(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    return p0

    :pswitch_5
    ushr-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 v5, p0, 0x4

    iget-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;

    move-result-object p6

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zbb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    iget-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;

    .line 18
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbf(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object p0

    iget-object p5, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;

    .line 20
    invoke-virtual {p4, p5, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbj(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)V

    move-object v0, p0

    goto :goto_1

    .line 18
    :cond_1
    move-object v0, p0

    .line 21
    :goto_1
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    return p0

    .line 22
    :pswitch_6
    invoke-static {p1, p2, p7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbh([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    iget-object v1, p7, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    goto :goto_3

    .line 29
    :pswitch_7
    invoke-static {p1, p2, p7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    iget-wide p0, p7, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    const-wide/16 p6, 0x0

    cmp-long p0, p0, p6

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    .line 30
    :cond_2
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    :pswitch_8
    add-int/lit8 p0, p2, 0x4

    .line 31
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move p2, p0

    goto :goto_3

    :pswitch_9
    add-int/lit8 p0, p2, 0x8

    .line 32
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move p2, p0

    goto :goto_3

    .line 33
    :pswitch_a
    invoke-static {p1, p2, p7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    iget p0, p7, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    .line 35
    :pswitch_b
    invoke-static {p1, p2, p7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    iget-wide p0, p7, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    .line 36
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    .line 7
    :pswitch_c
    add-int/lit8 p0, p2, 0x4

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move p2, p0

    goto :goto_3

    .line 37
    :pswitch_d
    add-int/lit8 p0, p2, 0x8

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move p2, p0

    .line 5
    :goto_3
    iget-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;

    .line 37
    invoke-virtual {p4, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbj(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)V

    return p2

    .line 3
    :cond_3
    invoke-static {p1, p2, p7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    .line 4
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zbc([BI)I
    .locals 3

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method static zbd(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object v7

    .line 2
    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p1

    .line 3
    invoke-interface {p0, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbf(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    return p1
.end method

.method static zbe(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object v6

    .line 2
    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbp(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p1

    .line 3
    invoke-interface {p0, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbf(Ljava/lang/Object;)V

    iput-object v6, p4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    return p1
.end method

.method static zbf(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbe(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p3

    iget-object v0, p6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    .line 2
    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    .line 3
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbe(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p3

    iget-object v0, p6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    .line 5
    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    return p3
.end method

.method static zbg([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    .line 2
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 3
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p1

    iget v1, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    .line 4
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbg(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 6
    return p1

    .line 4
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 5
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
.end method

.method static zbh([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ltz v0, :cond_1

    .line 3
    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zba:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 1
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 2
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 3
    throw p0
.end method

.method static zbi([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ltz v0, :cond_b

    .line 3
    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    return p1

    .line 4
    :cond_0
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwv;->zba:I

    .line 5
    array-length v1, p0

    sub-int v2, v1, p1

    or-int v3, p1, v0

    sub-int/2addr v2, v0

    or-int/2addr v2, v3

    if-ltz v2, :cond_a

    .line 6
    add-int v1, p1, v0

    new-array v0, v0, [C

    const/4 v8, 0x0

    move v2, v8

    :goto_0
    if-ge p1, v1, :cond_1

    .line 7
    aget-byte v3, p0, p1

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwt;->zbd(B)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v2, 0x1

    int-to-char v3, v3

    .line 8
    aput-char v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_1
    move v9, v2

    :cond_2
    :goto_1
    if-ge p1, v1, :cond_9

    add-int/lit8 v2, p1, 0x1

    .line 9
    aget-byte p1, p0, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwt;->zbd(B)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v9, 0x1

    int-to-char p1, p1

    .line 13
    aput-char p1, v0, v9

    move p1, v2

    move v9, v3

    :goto_2
    if-ge p1, v1, :cond_2

    .line 14
    aget-byte v2, p0, p1

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwt;->zbd(B)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v9, 0x1

    int-to-char v2, v2

    .line 15
    aput-char v2, v0, v9

    move v9, v3

    goto :goto_2

    :cond_3
    const/16 v3, -0x20

    const-string v4, "Protocol message had invalid UTF-8."

    if-ge p1, v3, :cond_5

    if-ge v2, v1, :cond_4

    .line 21
    add-int/lit8 v3, v9, 0x1

    add-int/lit8 v4, v2, 0x1

    .line 12
    aget-byte v2, p0, v2

    invoke-static {p1, v2, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwt;->zbc(BB[CI)V

    move v9, v3

    move p1, v4

    goto :goto_1

    .line 15
    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 20
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0

    .line 12
    :cond_5
    const/16 v3, -0x10

    if-ge p1, v3, :cond_7

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_6

    .line 19
    add-int/lit8 v3, v9, 0x1

    add-int/lit8 v4, v2, 0x1

    .line 11
    aget-byte v2, p0, v2

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    invoke-static {p1, v2, v4, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwt;->zbb(BBB[CI)V

    move v9, v3

    move p1, v5

    goto :goto_1

    .line 12
    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 18
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 11
    :cond_7
    add-int/lit8 v3, v1, -0x2

    if-ge v2, v3, :cond_8

    .line 17
    add-int/lit8 v3, v2, 0x1

    .line 10
    aget-byte v4, p0, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v5, p0, v3

    add-int/lit8 v10, v2, 0x1

    aget-byte v6, p0, v2

    move v2, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v0

    move v7, v9

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwt;->zba(BBBB[CI)V

    add-int/lit8 v9, v9, 0x2

    move p1, v10

    goto :goto_1

    .line 11
    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 16
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 10
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v8, v9}, Ljava/lang/String;-><init>([CII)V

    iput-object p0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    return v1

    .line 5
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 2
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 3
    throw p0
.end method

.method static zbj(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;
        }
    .end annotation

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    const-string v1, "Protocol message contained an invalid tag (zero)."

    if-eqz v0, :cond_6

    and-int/lit8 v0, p0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 2
    throw p0

    .line 3
    :pswitch_1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbj(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 2
    :pswitch_2
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbf()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    move-result-object v7

    iget v1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbs(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget p2, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne p2, v0, :cond_0

    move v1, p2

    move p2, v3

    goto :goto_1

    .line 6
    :cond_0
    move v1, p2

    move-object v2, p1

    move v4, p3

    move-object v5, v7

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbj(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    move v8, v1

    move v1, p2

    move p2, v8

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    if-gt p2, p3, :cond_2

    if-ne v1, v0, :cond_2

    .line 9
    invoke-virtual {p4, p0, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbj(ILjava/lang/Object;)V

    return p2

    .line 5
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 7
    const-string p1, "Failed to parse the message."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 8
    throw p0

    .line 10
    :pswitch_3
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    iget p3, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ltz p3, :cond_5

    .line 13
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_4

    .line 15
    if-nez p3, :cond_3

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbj(ILjava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbj([BII)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbj(ILjava/lang/Object;)V

    .line 16
    :goto_2
    add-int/2addr p2, p3

    return p2

    .line 13
    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 14
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0

    .line 10
    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 11
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 12
    throw p0

    .line 18
    :pswitch_4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbj(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 19
    :pswitch_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p1

    iget-wide p2, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbj(ILjava/lang/Object;)V

    return p1

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 21
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 1

    .line 1
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    return v0

    .line 2
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbl(I[BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    return p0
.end method

.method static zbl(I[BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 1

    .line 1
    aget-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    and-int/lit8 p0, p0, 0x7f

    if-ltz v0, :cond_0

    shl-int/lit8 p1, v0, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    return p2

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 2
    aget-byte p2, p1, p2

    if-ltz p2, :cond_1

    shl-int/lit8 p1, p2, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    return v0

    :cond_1
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0xe

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 3
    aget-byte v0, p1, v0

    if-ltz v0, :cond_2

    shl-int/lit8 p1, v0, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    return p2

    :cond_2
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 4
    aget-byte p2, p1, p2

    if-ltz p2, :cond_3

    shl-int/lit8 p1, p2, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    return v0

    :cond_3
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x1c

    or-int/2addr p0, p2

    :goto_0
    add-int/lit8 p2, v0, 0x1

    .line 5
    aget-byte v0, p1, v0

    if-gez v0, :cond_4

    move v0, p2

    goto :goto_0

    :cond_4
    iput p0, p3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    return p2
.end method

.method static zbm(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 2

    .line 1
    check-cast p4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    .line 2
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    .line 3
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbg(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 4
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    .line 6
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbg(I)V

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    return p2
.end method

.method static zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 9

    .line 1
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    add-int/lit8 p1, p1, 0x1

    if-ltz v2, :cond_0

    iput-wide v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    return p1

    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 2
    aget-byte p1, p0, p1

    and-int/lit8 v3, p1, 0x7f

    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    move v3, v5

    :goto_0
    if-gez p1, :cond_1

    add-int/lit8 p1, v2, 0x1

    .line 3
    aget-byte v2, p0, v2

    add-int/2addr v3, v5

    and-int/lit8 v4, v2, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v0, v6

    move v8, v2

    move v2, p1

    move p1, v8

    goto :goto_0

    :cond_1
    iput-wide v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    return v2
.end method

.method static zbo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;

    iget p1, p6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbs(I)V

    .line 3
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p1

    iget p2, p6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    iput-object p0, p6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    return p1
.end method

.method static zbp(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_0

    .line 2
    invoke-static {p3, p2, v0, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbl(I[BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v0

    iget p3, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    move v3, v0

    goto :goto_0

    .line 6
    :cond_0
    move v3, v0

    .line 2
    :goto_0
    if-ltz p3, :cond_1

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_1

    .line 4
    iget p4, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    .line 5
    invoke-static {p4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbs(I)V

    add-int/2addr p3, v3

    .line 6
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)V

    iget p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbe:I

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    return p3

    .line 2
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 3
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 4
    throw p0
.end method

.method static zbq(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;
        }
    .end annotation

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    const-string v1, "Protocol message contained an invalid tag (zero)."

    if-eqz v0, :cond_2

    and-int/lit8 v0, p0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 2
    throw p0

    .line 6
    :pswitch_1
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 2
    :pswitch_2
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 3
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    iget v0, p4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-eq v0, p0, :cond_0

    .line 4
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbq(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p2

    goto :goto_0

    :cond_0
    if-gt p2, p3, :cond_1

    if-ne v0, p0, :cond_1

    .line 6
    return p2

    .line 4
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 5
    const-string p1, "Failed to parse the message."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0

    .line 7
    :pswitch_3
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    iget p1, p4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    add-int/2addr p0, p1

    return p0

    .line 10
    :pswitch_4
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 8
    :pswitch_5
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 10
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static zbr([BI)J
    .locals 18

    .line 1
    aget-byte v0, p0, p1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    add-int/lit8 v6, p1, 0x3

    aget-byte v6, p0, v6

    int-to-long v6, v6

    add-int/lit8 v8, p1, 0x4

    aget-byte v8, p0, v8

    int-to-long v8, v8

    add-int/lit8 v10, p1, 0x5

    aget-byte v10, p0, v10

    int-to-long v10, v10

    add-int/lit8 v12, p1, 0x6

    aget-byte v12, p0, v12

    int-to-long v12, v12

    add-int/lit8 v14, p1, 0x7

    aget-byte v14, p0, v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    and-long v4, v4, v16

    and-long v6, v6, v16

    and-long v8, v8, v16

    and-long v10, v10, v16

    and-long v12, v12, v16

    and-long v14, v14, v16

    and-long v0, v0, v16

    const/16 v16, 0x8

    shl-long v2, v2, v16

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long v2, v8, v2

    or-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long v2, v10, v2

    or-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long v2, v12, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, v14, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static zbs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbb:I

    if-ge p0, v0, :cond_0

    .line 2
    return-void

    .line 1
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    .line 2
    throw p0
.end method
