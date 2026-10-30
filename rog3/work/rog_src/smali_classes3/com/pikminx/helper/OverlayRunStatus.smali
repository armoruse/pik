.class final Lcom/pikminx/helper/OverlayRunStatus;
.super Ljava/lang/Object;
.source "OverlayRunStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pikminx/helper/OverlayRunStatus$Kind;
    }
.end annotation


# instance fields
.field private final detail:Ljava/lang/String;

.field private final kind:Lcom/pikminx/helper/OverlayRunStatus$Kind;

.field private final message:Ljava/lang/String;

.field private final stage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pikminx/helper/OverlayRunStatus$Kind;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "kind"    # Lcom/pikminx/helper/OverlayRunStatus$Kind;
    .param p2, "stage"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "detail"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "kind"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;

    iput-object v0, p0, Lcom/pikminx/helper/OverlayRunStatus;->kind:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    .line 22
    const-string v0, "stage"

    invoke-static {p2, v0}, Lcom/pikminx/helper/OverlayRunStatus;->requireText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/OverlayRunStatus;->stage:Ljava/lang/String;

    .line 23
    const-string v0, "message"

    invoke-static {p3, v0}, Lcom/pikminx/helper/OverlayRunStatus;->requireText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/OverlayRunStatus;->message:Ljava/lang/String;

    .line 24
    if-nez p4, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/pikminx/helper/OverlayRunStatus;->detail:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private static requireText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "trimmed":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    return-object v0

    .line 62
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not be blank"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method accessibilityText()Ljava/lang/String;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/pikminx/helper/OverlayRunStatus;->detail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "\uff0c"

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pikminx/helper/OverlayRunStatus;->stage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pikminx/helper/OverlayRunStatus;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pikminx/helper/OverlayRunStatus;->stage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pikminx/helper/OverlayRunStatus;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pikminx/helper/OverlayRunStatus;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0
.end method

.method detail()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/pikminx/helper/OverlayRunStatus;->detail:Ljava/lang/String;

    return-object v0
.end method

.method kind()Lcom/pikminx/helper/OverlayRunStatus$Kind;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/pikminx/helper/OverlayRunStatus;->kind:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    return-object v0
.end method

.method message()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/pikminx/helper/OverlayRunStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method remainsUntilReplaced()Z
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/pikminx/helper/OverlayRunStatus;->kind:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    sget-object v1, Lcom/pikminx/helper/OverlayRunStatus$Kind;->ERROR:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method stage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/pikminx/helper/OverlayRunStatus;->stage:Ljava/lang/String;

    return-object v0
.end method

.method visibleText()Ljava/lang/String;
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/pikminx/helper/OverlayRunStatus;->detail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "\n"

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pikminx/helper/OverlayRunStatus;->stage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pikminx/helper/OverlayRunStatus;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pikminx/helper/OverlayRunStatus;->stage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pikminx/helper/OverlayRunStatus;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pikminx/helper/OverlayRunStatus;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0
.end method
