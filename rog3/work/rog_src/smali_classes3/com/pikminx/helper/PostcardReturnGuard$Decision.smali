.class final enum Lcom/pikminx/helper/PostcardReturnGuard$Decision;
.super Ljava/lang/Enum;
.source "PostcardReturnGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PostcardReturnGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Decision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PostcardReturnGuard$Decision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PostcardReturnGuard$Decision;

.field public static final enum FAILED:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

.field public static final enum OPEN_PREVIOUS_FLOWER:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

.field public static final enum WAIT:Lcom/pikminx/helper/PostcardReturnGuard$Decision;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PostcardReturnGuard$Decision;
    .locals 3

    .line 8
    sget-object v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->OPEN_PREVIOUS_FLOWER:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    sget-object v1, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->WAIT:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    sget-object v2, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->FAILED:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    filled-new-array {v0, v1, v2}, [Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    const-string v1, "OPEN_PREVIOUS_FLOWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardReturnGuard$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->OPEN_PREVIOUS_FLOWER:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    .line 10
    new-instance v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    const-string v1, "WAIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardReturnGuard$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->WAIT:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    .line 11
    new-instance v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    const-string v1, "FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardReturnGuard$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->FAILED:Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    .line 8
    invoke-static {}, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->$values()[Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->$VALUES:[Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PostcardReturnGuard$Decision;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 8
    const-class v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PostcardReturnGuard$Decision;
    .locals 1

    .line 8
    sget-object v0, Lcom/pikminx/helper/PostcardReturnGuard$Decision;->$VALUES:[Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PostcardReturnGuard$Decision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PostcardReturnGuard$Decision;

    return-object v0
.end method
