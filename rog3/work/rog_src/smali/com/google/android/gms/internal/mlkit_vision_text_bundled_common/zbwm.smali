.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"


# static fields
.field private static final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;


# instance fields
.field private zbb:I

.field private zbc:[I

.field private zbd:[Ljava/lang/Object;

.field private zbe:I

.field private zbf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbe:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbf:Z

    return-void
.end method

.method public static zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    return-object v0
.end method

.method static zbe(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    iget v4, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method static zbf()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private final zbm(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    array-length v1, v0

    if-le p1, v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    move p1, v1

    :cond_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    move p1, v1

    .line 2
    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    iget v3, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_4

    .line 2
    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_5

    .line 3
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v0

    .line 2
    :cond_6
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    add-int/lit16 v1, v0, 0x20f

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    :goto_1
    if-ge v3, v2, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    .line 2
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method

.method public final zba()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbe:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    packed-switch v2, :pswitch_data_0

    .line 15
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbup;

    .line 16
    const-string v2, "Protocol message tag had invalid wire type."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbup;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :pswitch_1
    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    .line 2
    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    goto :goto_1

    :pswitch_2
    shl-int/lit8 v2, v3, 0x3

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    add-int/2addr v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    .line 5
    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zba()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_1

    :pswitch_3
    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    .line 7
    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result v3

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    goto :goto_1

    :pswitch_4
    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    .line 11
    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    goto :goto_1

    :pswitch_5
    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    .line 13
    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    .line 15
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 15
    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbe:I

    return v1

    .line 17
    :cond_1
    return v0

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

.method public final zbb()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbe:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    .line 2
    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    .line 3
    const/16 v4, 0x8

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v4

    add-int/2addr v4, v4

    .line 4
    const/16 v5, 0x10

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v5

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    add-int/2addr v5, v2

    .line 6
    const/16 v2, 0x18

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result v3

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v6

    add-int/2addr v6, v3

    add-int/2addr v2, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbe:I

    return v1

    :cond_1
    return v0
.end method

.method final zbd(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbg()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    add-int/2addr v0, v1

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbm(I)V

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    iget v4, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    invoke-static {v1, v5, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    return-object p0
.end method

.method final zbg()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zbh()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbf:Z

    :cond_0
    return-void
.end method

.method final zbi(Ljava/lang/StringBuilder;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvo;->zbb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final zbj(ILjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbg()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbm(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    .line 3
    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    .line 4
    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    return-void
.end method

.method final zbk(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    .line 2
    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbx(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zbl(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbb:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    and-int/lit8 v3, v1, 0x7

    ushr-int/lit8 v1, v1, 0x3

    packed-switch v3, :pswitch_data_0

    .line 8
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbup;

    .line 9
    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbup;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 5
    :pswitch_1
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbk(II)V

    goto :goto_1

    .line 2
    :pswitch_2
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbG(I)V

    .line 3
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbl(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;)V

    .line 4
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbh(I)V

    goto :goto_1

    .line 6
    :pswitch_3
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbd(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    goto :goto_1

    .line 7
    :pswitch_4
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbm(IJ)V

    goto :goto_1

    .line 8
    :pswitch_5
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbt(IJ)V

    .line 4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    return-void

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
