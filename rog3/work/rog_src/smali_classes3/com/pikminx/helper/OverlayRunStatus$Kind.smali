.class final enum Lcom/pikminx/helper/OverlayRunStatus$Kind;
.super Ljava/lang/Enum;
.source "OverlayRunStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/OverlayRunStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/OverlayRunStatus$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/OverlayRunStatus$Kind;

.field public static final enum ERROR:Lcom/pikminx/helper/OverlayRunStatus$Kind;

.field public static final enum IDLE:Lcom/pikminx/helper/OverlayRunStatus$Kind;

.field public static final enum RECOGNIZING:Lcom/pikminx/helper/OverlayRunStatus$Kind;

.field public static final enum SEARCHING:Lcom/pikminx/helper/OverlayRunStatus$Kind;

.field public static final enum SUCCESS:Lcom/pikminx/helper/OverlayRunStatus$Kind;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/OverlayRunStatus$Kind;
    .locals 5

    .line 7
    sget-object v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;->IDLE:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    sget-object v1, Lcom/pikminx/helper/OverlayRunStatus$Kind;->SEARCHING:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    sget-object v2, Lcom/pikminx/helper/OverlayRunStatus$Kind;->RECOGNIZING:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    sget-object v3, Lcom/pikminx/helper/OverlayRunStatus$Kind;->SUCCESS:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    sget-object v4, Lcom/pikminx/helper/OverlayRunStatus$Kind;->ERROR:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/pikminx/helper/OverlayRunStatus$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OverlayRunStatus$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;->IDLE:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    .line 9
    new-instance v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;

    const-string v1, "SEARCHING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OverlayRunStatus$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;->SEARCHING:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    .line 10
    new-instance v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;

    const-string v1, "RECOGNIZING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OverlayRunStatus$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;->RECOGNIZING:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    .line 11
    new-instance v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;

    const-string v1, "SUCCESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OverlayRunStatus$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;->SUCCESS:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    .line 12
    new-instance v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OverlayRunStatus$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;->ERROR:Lcom/pikminx/helper/OverlayRunStatus$Kind;

    .line 7
    invoke-static {}, Lcom/pikminx/helper/OverlayRunStatus$Kind;->$values()[Lcom/pikminx/helper/OverlayRunStatus$Kind;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;->$VALUES:[Lcom/pikminx/helper/OverlayRunStatus$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/OverlayRunStatus$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/OverlayRunStatus$Kind;
    .locals 1

    .line 7
    sget-object v0, Lcom/pikminx/helper/OverlayRunStatus$Kind;->$VALUES:[Lcom/pikminx/helper/OverlayRunStatus$Kind;

    invoke-virtual {v0}, [Lcom/pikminx/helper/OverlayRunStatus$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/OverlayRunStatus$Kind;

    return-object v0
.end method
