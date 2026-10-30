.class final enum Lcom/pikminx/helper/SearchKeyboardGuard$Action;
.super Ljava/lang/Enum;
.source "SearchKeyboardGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/SearchKeyboardGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/SearchKeyboardGuard$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/SearchKeyboardGuard$Action;

.field public static final enum COMPLETE:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

.field public static final enum FAIL_STUCK_KEYBOARD:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

.field public static final enum FAIL_UNCONFIRMED_SEARCH:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

.field public static final enum SEND_BACK:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

.field public static final enum WAIT:Lcom/pikminx/helper/SearchKeyboardGuard$Action;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/SearchKeyboardGuard$Action;
    .locals 5

    .line 11
    sget-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->WAIT:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    sget-object v1, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->SEND_BACK:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    sget-object v2, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->COMPLETE:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    sget-object v3, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->FAIL_UNCONFIRMED_SEARCH:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    sget-object v4, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->FAIL_STUCK_KEYBOARD:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    const-string v1, "WAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/SearchKeyboardGuard$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->WAIT:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    .line 13
    new-instance v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    const-string v1, "SEND_BACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/SearchKeyboardGuard$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->SEND_BACK:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    .line 14
    new-instance v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    const-string v1, "COMPLETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/SearchKeyboardGuard$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->COMPLETE:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    .line 15
    new-instance v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    const-string v1, "FAIL_UNCONFIRMED_SEARCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/SearchKeyboardGuard$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->FAIL_UNCONFIRMED_SEARCH:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    .line 16
    new-instance v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    const-string v1, "FAIL_STUCK_KEYBOARD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/SearchKeyboardGuard$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->FAIL_STUCK_KEYBOARD:Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    .line 11
    invoke-static {}, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->$values()[Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->$VALUES:[Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/SearchKeyboardGuard$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/SearchKeyboardGuard$Action;
    .locals 1

    .line 11
    sget-object v0, Lcom/pikminx/helper/SearchKeyboardGuard$Action;->$VALUES:[Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    invoke-virtual {v0}, [Lcom/pikminx/helper/SearchKeyboardGuard$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/SearchKeyboardGuard$Action;

    return-object v0
.end method
