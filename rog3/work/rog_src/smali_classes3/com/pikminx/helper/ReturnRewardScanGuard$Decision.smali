.class final enum Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;
.super Ljava/lang/Enum;
.source "ReturnRewardScanGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/ReturnRewardScanGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Decision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

.field public static final enum COMPLETE:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

.field public static final enum POSTCARD:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

.field public static final enum TARGET_CONFIRMED:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

.field public static final enum WAIT:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;
    .locals 4

    .line 5
    sget-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->WAIT:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    sget-object v1, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->POSTCARD:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    sget-object v2, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->TARGET_CONFIRMED:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    sget-object v3, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->COMPLETE:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    filled-new-array {v0, v1, v2, v3}, [Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    const-string v1, "WAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->WAIT:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    .line 7
    new-instance v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    const-string v1, "POSTCARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->POSTCARD:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    .line 8
    new-instance v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    const-string v1, "TARGET_CONFIRMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->TARGET_CONFIRMED:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    .line 9
    new-instance v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    const-string v1, "COMPLETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->COMPLETE:Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    .line 5
    invoke-static {}, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->$values()[Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->$VALUES:[Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;
    .locals 1

    .line 5
    sget-object v0, Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->$VALUES:[Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    invoke-virtual {v0}, [Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/ReturnRewardScanGuard$Decision;

    return-object v0
.end method
