.class final enum Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;
.super Ljava/lang/Enum;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FeedSearchResetPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

.field public static final enum CLOSING:Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

.field public static final enum NONE:Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;
    .locals 2

    .line 164
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;->NONE:Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;->CLOSING:Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    filled-new-array {v0, v1}, [Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 165
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;->NONE:Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    .line 166
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    const-string v1, "CLOSING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;->CLOSING:Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    .line 164
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;->$values()[Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;->$VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 164
    const-class v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;
    .locals 1

    .line 164
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;->$VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PetalAccessibilityService$FeedSearchResetPhase;

    return-object v0
.end method
