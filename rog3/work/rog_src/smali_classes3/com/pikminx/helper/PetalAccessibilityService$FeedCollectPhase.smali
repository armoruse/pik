.class final enum Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;
.super Ljava/lang/Enum;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FeedCollectPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

.field public static final enum LOCATING_BLOOM:Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

.field public static final enum RECEIVING_SPIRAL_RECEIPTS:Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

.field public static final enum SPIRALING:Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;
    .locals 3

    .line 158
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;->LOCATING_BLOOM:Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;->SPIRALING:Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    sget-object v2, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;->RECEIVING_SPIRAL_RECEIPTS:Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    filled-new-array {v0, v1, v2}, [Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 159
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    const-string v1, "LOCATING_BLOOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;->LOCATING_BLOOM:Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    .line 160
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    const-string v1, "SPIRALING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;->SPIRALING:Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    .line 161
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    const-string v1, "RECEIVING_SPIRAL_RECEIPTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;->RECEIVING_SPIRAL_RECEIPTS:Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    .line 158
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;->$values()[Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;->$VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 158
    const-class v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;
    .locals 1

    .line 158
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;->$VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PetalAccessibilityService$FeedCollectPhase;

    return-object v0
.end method
