.class public final Lcom/pikminx/helper/RogReportPolicy;
.super Ljava/lang/Object;
.source "RogReportPolicy.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canGenerateFruit(Ljava/time/Instant;Ljava/time/Instant;Ljava/time/Instant;Ljava/time/Instant;)Z
    .locals 2

    .line 21
    if-eqz p0, :cond_30

    if-eqz p1, :cond_30

    invoke-virtual {p1, p3}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p1, p0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 22
    invoke-virtual {p0, p3}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result p1

    if-nez p1, :cond_30

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result p0

    if-eqz p0, :cond_30

    if-eqz p2, :cond_2e

    .line 23
    invoke-virtual {p3, p2}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result p0

    if-eqz p0, :cond_30

    :cond_2e
    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    .line 21
    :goto_31
    return p0
.end method

.method public static dualTime(Ljava/time/Instant;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 36
    invoke-static {p1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    const-string v0, "Asia/Taipei"

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    .line 37
    const-string v1, "yyyy/MM/dd HH:mm"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    .line 38
    invoke-virtual {p0, p1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 39
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    sub-int/2addr v0, v2

    .line 40
    if-nez v0, :cond_2e

    const-string v0, "\u540c\u6642"

    goto :goto_82

    :cond_2e
    if-lez v0, :cond_33

    const-string v2, "\u5feb "

    goto :goto_35

    :cond_33
    const-string v2, "\u6162 "

    .line 41
    :goto_35
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit16 v3, v3, 0xe10

    .line 42
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/lit16 v4, v4, 0xe10

    if-nez v4, :cond_46

    const-string v0, ""

    goto :goto_67

    :cond_46
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit16 v0, v0, 0xe10

    div-int/lit8 v0, v0, 0x3c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u5206"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5c0f\u6642"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_82
    invoke-virtual {v1, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7576\u5730 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n\u53f0\u7063 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\uff08"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\uff09"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static freshMushroom(Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;Ljava/time/Instant;I)Z
    .locals 2

    .line 30
    const-string v0, "LARGE_ELEMENTAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "GIANT_EVENT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    :cond_10
    if-eqz p1, :cond_31

    .line 31
    invoke-virtual {p1, p3}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result p0

    if-nez p0, :cond_31

    int-to-long v0, p4

    .line 32
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result p0

    if-eqz p0, :cond_31

    if-eqz p2, :cond_2f

    .line 33
    invoke-virtual {p3, p2}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result p0

    if-eqz p0, :cond_31

    :cond_2f
    const/4 p0, 0x1

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    .line 30
    :goto_32
    return p0
.end method

.method public static fruitDeadline(Ljava/time/Instant;Ljava/time/Instant;)Ljava/time/Instant;
    .locals 2

    .line 26
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p0

    .line 27
    if-eqz p1, :cond_13

    invoke-virtual {p1, p0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move-object p1, p0

    :goto_14
    return-object p1
.end method

.method public static nextClaim(Ljava/time/Instant;Ljava/lang/String;Ljava/lang/String;)Ljava/time/Instant;
    .locals 2

    .line 46
    invoke-static {p1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 47
    const-string p1, "DAILY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0

    .line 48
    :cond_27
    const-string p1, "YEARLY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0

    .line 49
    :cond_49
    const-string p1, "14_DAYS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    const-wide/16 p1, 0xe

    invoke-virtual {p0, p1, p2}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0

    .line 50
    :cond_5c
    const-string p1, "30_DAYS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const-wide/16 p1, 0x1e

    invoke-virtual {p0, p1, p2}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0

    .line 51
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u672a\u77e5\u9818\u53d6\u983b\u7387"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static timestamp(Ljava/lang/String;)Ljava/time/Instant;
    .locals 0

    .line 18
    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static validateCoordinate(DD)V
    .locals 2

    .line 13
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p2, p3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double p0, p0, v0

    if-gtz p0, :cond_27

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x4066800000000000L    # 180.0

    cmpl-double p0, p0, p2

    if-gtz p0, :cond_27

    .line 15
    return-void

    .line 14
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7def\u7d93\u5ea6\u8d85\u51fa\u7bc4\u570d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
