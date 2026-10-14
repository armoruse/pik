.class final enum Lcom/pikminx/helper/PostcardPotScanGuard$Decision;
.super Ljava/lang/Enum;
.source "PostcardPotScanGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PostcardPotScanGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Decision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PostcardPotScanGuard$Decision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

.field public static final enum COMPLETE:Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

.field public static final enum CONTINUE:Lcom/pikminx/helper/PostcardPotScanGuard$Decision;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PostcardPotScanGuard$Decision;
    .locals 2

    .line 10
    sget-object v0, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;->CONTINUE:Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    sget-object v1, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;->COMPLETE:Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    filled-new-array {v0, v1}, [Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;->CONTINUE:Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    .line 12
    new-instance v0, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    const-string v1, "COMPLETE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;->COMPLETE:Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    .line 10
    invoke-static {}, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;->$values()[Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;->$VALUES:[Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PostcardPotScanGuard$Decision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PostcardPotScanGuard$Decision;
    .locals 1

    .line 10
    sget-object v0, Lcom/pikminx/helper/PostcardPotScanGuard$Decision;->$VALUES:[Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PostcardPotScanGuard$Decision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PostcardPotScanGuard$Decision;

    return-object v0
.end method
