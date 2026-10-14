.class final Lcom/pikminx/helper/ObservationStability;
.super Ljava/lang/Object;
.source "ObservationStability.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/ObservationStability$Candidate;,
        Lcom/pikminx/helper/ObservationStability$Result;
    }
.end annotation


# instance fields
.field private final allowedMissingFrames:I

.field private candidate:Lcom/pikminx/helper/ObservationStability$Candidate;

.field private confirmations:I

.field private missingFrames:I

.field private final requiredConfirmations:I

.field private final xTolerance:F

.field private final yTolerance:F


# direct methods
.method constructor <init>(IIFF)V
    .locals 2
    .param p1, "requiredConfirmations"    # I
    .param p2, "allowedMissingFrames"    # I
    .param p3, "xTolerance"    # F
    .param p4, "yTolerance"    # F

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/pikminx/helper/ObservationStability;->requiredConfirmations:I

    .line 23
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/pikminx/helper/ObservationStability;->allowedMissingFrames:I

    .line 24
    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/pikminx/helper/ObservationStability;->xTolerance:F

    .line 25
    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/pikminx/helper/ObservationStability;->yTolerance:F

    .line 26
    return-void
.end method

.method private sameCandidate(Lcom/pikminx/helper/ObservationStability$Candidate;Lcom/pikminx/helper/ObservationStability$Candidate;II)Z
    .locals 4
    .param p1, "previous"    # Lcom/pikminx/helper/ObservationStability$Candidate;
    .param p2, "current"    # Lcom/pikminx/helper/ObservationStability$Candidate;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/pikminx/helper/ObservationStability$Candidate;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/pikminx/helper/ObservationStability$Candidate;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/pikminx/helper/ObservationStability$Candidate;->x()I

    move-result v0

    invoke-virtual {p2}, Lcom/pikminx/helper/ObservationStability$Candidate;->x()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/pikminx/helper/ObservationStability;->xTolerance:F

    mul-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/pikminx/helper/ObservationStability$Candidate;->y()I

    move-result v0

    invoke-virtual {p2}, Lcom/pikminx/helper/ObservationStability$Candidate;->y()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/pikminx/helper/ObservationStability;->yTolerance:F

    mul-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 66
    :goto_0
    return v1
.end method


# virtual methods
.method confirmations()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/pikminx/helper/ObservationStability;->confirmations:I

    return v0
.end method

.method hasCandidate()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/pikminx/helper/ObservationStability;->candidate:Lcom/pikminx/helper/ObservationStability$Candidate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method miss()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/pikminx/helper/ObservationStability;->candidate:Lcom/pikminx/helper/ObservationStability$Candidate;

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    iget v0, p0, Lcom/pikminx/helper/ObservationStability;->missingFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pikminx/helper/ObservationStability;->missingFrames:I

    .line 45
    iget v0, p0, Lcom/pikminx/helper/ObservationStability;->missingFrames:I

    iget v1, p0, Lcom/pikminx/helper/ObservationStability;->allowedMissingFrames:I

    if-le v0, v1, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/pikminx/helper/ObservationStability;->reset()V

    .line 48
    :cond_1
    return-void
.end method

.method observe(Ljava/lang/String;IIII)Lcom/pikminx/helper/ObservationStability$Result;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 29
    new-instance v0, Lcom/pikminx/helper/ObservationStability$Candidate;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/pikminx/helper/ObservationStability$Candidate;-><init>(Ljava/lang/String;IILcom/pikminx/helper/ObservationStability$Candidate-IA;)V

    .line 30
    .local v0, "current":Lcom/pikminx/helper/ObservationStability$Candidate;
    iget-object v1, p0, Lcom/pikminx/helper/ObservationStability;->candidate:Lcom/pikminx/helper/ObservationStability$Candidate;

    invoke-direct {p0, v1, v0, p4, p5}, Lcom/pikminx/helper/ObservationStability;->sameCandidate(Lcom/pikminx/helper/ObservationStability$Candidate;Lcom/pikminx/helper/ObservationStability$Candidate;II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 31
    iget v1, p0, Lcom/pikminx/helper/ObservationStability;->confirmations:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pikminx/helper/ObservationStability;->confirmations:I

    goto :goto_1

    .line 33
    :cond_1
    iput-object v0, p0, Lcom/pikminx/helper/ObservationStability;->candidate:Lcom/pikminx/helper/ObservationStability$Candidate;

    .line 34
    iput v2, p0, Lcom/pikminx/helper/ObservationStability;->confirmations:I

    .line 36
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/pikminx/helper/ObservationStability;->missingFrames:I

    .line 37
    iget v1, p0, Lcom/pikminx/helper/ObservationStability;->confirmations:I

    iget v2, p0, Lcom/pikminx/helper/ObservationStability;->requiredConfirmations:I

    if-lt v1, v2, :cond_2

    sget-object v1, Lcom/pikminx/helper/ObservationStability$Result;->STABLE:Lcom/pikminx/helper/ObservationStability$Result;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/pikminx/helper/ObservationStability$Result;->CANDIDATE:Lcom/pikminx/helper/ObservationStability$Result;

    :goto_2
    return-object v1
.end method

.method reset()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pikminx/helper/ObservationStability;->candidate:Lcom/pikminx/helper/ObservationStability$Candidate;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/pikminx/helper/ObservationStability;->confirmations:I

    .line 61
    iput v0, p0, Lcom/pikminx/helper/ObservationStability;->missingFrames:I

    .line 62
    return-void
.end method
