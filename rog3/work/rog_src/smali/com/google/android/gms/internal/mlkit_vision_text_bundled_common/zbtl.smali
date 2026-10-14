.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;
.super Ljava/lang/Object;
.source "com.google.mlkit:text-recognition-bundled-common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;


# instance fields
.field private final zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    iput-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;

    return-void
.end method

.method public static zba(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;)V

    return-object v0
.end method


# virtual methods
.method public final zbA(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbj(IJ)V

    return-void
.end method

.method public final zbB(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 14
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 16
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 17
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    .line 13
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 5
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 8
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 9
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 18
    :cond_5
    return-void
.end method

.method public final zbC(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbv(II)V

    return-void
.end method

.method public final zbD(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 15
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 18
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 19
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result p3

    add-int v0, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v0

    .line 20
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 13
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    .line 14
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbv(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 5
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 8
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 9
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 10
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int v0, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v0

    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    .line 3
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbv(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 20
    :cond_5
    return-void
.end method

.method public final zbE(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    add-long v0, p2, p2

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbx(IJ)V

    return-void
.end method

.method public final zbF(ILjava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    const/4 v1, 0x2

    const/16 v2, 0x3f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 15
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v3

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 18
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result p1

    if-ge v3, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 19
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result p3

    if-ge v3, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 13
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    .line 14
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbx(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v3

    move p3, p1

    .line 5
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 8
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 9
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 10
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    .line 3
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbx(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 20
    :cond_5
    return-void
.end method

.method public final zbG(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    return-void
.end method

.method public final zbH(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbs(ILjava/lang/String;)V

    return-void
.end method

.method public final zbI(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbux;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbux;

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbux;->zba()Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 7
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbs(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbf(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    .line 7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    nop

    .line 1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbs(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8
    :cond_2
    return-void
.end method

.method public final zbJ(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbv(II)V

    return-void
.end method

.method public final zbK(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 11
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 14
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 10
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbv(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 4
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 7
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbv(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 14
    :cond_5
    return-void
.end method

.method public final zbL(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbx(IJ)V

    return-void
.end method

.method public final zbM(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 11
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 14
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 10
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbx(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 4
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 7
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbx(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 14
    :cond_5
    return-void
.end method

.method public final zbb(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbd(IZ)V

    return-void
.end method

.method public final zbc(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 12
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 13
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;->zbf(I)Z

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 14
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 15
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;->zbf(I)Z

    move-result p3

    .line 16
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbb(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 11
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;->zbf(I)Z

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbd(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 4
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 7
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 9
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbb(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbd(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 16
    :cond_5
    return-void
.end method

.method public final zbd(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbf(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    return-void
.end method

.method public final zbe(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbf(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zbf(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbj(IJ)V

    return-void
.end method

.method public final zbg(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 14
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;->zbe(I)D

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 16
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 17
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;->zbe(I)D

    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;->zbe(I)D

    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 5
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 8
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 9
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 18
    :cond_5
    return-void
.end method

.method public final zbh(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    return-void
.end method

.method public final zbi(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbl(II)V

    return-void
.end method

.method public final zbj(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 15
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result v0

    int-to-long v0, v0

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 18
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 19
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result p3

    .line 20
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbm(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 13
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result v0

    .line 14
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbl(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 5
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 8
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 9
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 10
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbm(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbl(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 20
    :cond_5
    return-void
.end method

.method public final zbk(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbh(II)V

    return-void
.end method

.method public final zbl(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 11
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 14
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 10
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 4
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 7
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 14
    :cond_5
    return-void
.end method

.method public final zbm(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbj(IJ)V

    return-void
.end method

.method public final zbn(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 11
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 14
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 10
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 4
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 7
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 14
    :cond_5
    return-void
.end method

.method public final zbo(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbh(II)V

    return-void
.end method

.method public final zbp(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 14
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;->zbe(I)F

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 16
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 17
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;->zbe(I)F

    move-result p3

    .line 18
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;->zbe(I)F

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 5
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 8
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 9
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 10
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 18
    :cond_5
    return-void
.end method

.method public final zbq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;

    .line 3
    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;)V

    .line 4
    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    return-void
.end method

.method public final zbr(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbl(II)V

    return-void
.end method

.method public final zbs(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 12
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 13
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result v0

    int-to-long v0, v0

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 15
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 16
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbm(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 11
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbl(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 4
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 8
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 9
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbm(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbl(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 16
    :cond_5
    return-void
.end method

.method public final zbt(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbx(IJ)V

    return-void
.end method

.method public final zbu(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 15
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 18
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 19
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 13
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbe(I)J

    move-result-wide v0

    .line 14
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbx(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 5
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 8
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 9
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 10
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zby(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbx(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 20
    :cond_5
    return-void
.end method

.method public final zbv(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;->zbe(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zbw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbo(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)V

    return-void
.end method

.method public final zbx(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbr(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbq(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;)V

    return-void
.end method

.method public final zby(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbh(II)V

    return-void
.end method

.method public final zbz(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 14
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 16
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 17
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result p3

    .line 18
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbe(I)I

    move-result v0

    .line 13
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbu(II)V

    move p1, v2

    move p3, p1

    .line 5
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbw(I)V

    .line 8
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 9
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 10
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 1
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 18
    :cond_5
    return-void
.end method
