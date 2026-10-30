.class final enum Lcom/pikminx/helper/PostcardAutomation$Step;
.super Ljava/lang/Enum;
.source "PostcardAutomation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PostcardAutomation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Step"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PostcardAutomation$Step;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum ACCEPT_WARNING:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum CHOOSE_FAVORITE:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum CLOSE_PETAL_KEYBOARD:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum ENTER_PETAL_SEARCH:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum FIND_FLOWER:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum GO:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum NEXT:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum OPEN_FLOWER:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum OPEN_PETAL_SEARCH:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum OPEN_SORT:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum RECEIVE:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum SELECT_PETAL:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum SELECT_PIKMIN:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum TAP_NEXT:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum USE_PETALS:Lcom/pikminx/helper/PostcardAutomation$Step;

.field public static final enum WAIT_RECEIPT_EXIT:Lcom/pikminx/helper/PostcardAutomation$Step;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PostcardAutomation$Step;
    .locals 16

    .line 5
    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->FIND_FLOWER:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v1, Lcom/pikminx/helper/PostcardAutomation$Step;->OPEN_FLOWER:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v2, Lcom/pikminx/helper/PostcardAutomation$Step;->USE_PETALS:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v3, Lcom/pikminx/helper/PostcardAutomation$Step;->ACCEPT_WARNING:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v4, Lcom/pikminx/helper/PostcardAutomation$Step;->OPEN_PETAL_SEARCH:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v5, Lcom/pikminx/helper/PostcardAutomation$Step;->ENTER_PETAL_SEARCH:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v6, Lcom/pikminx/helper/PostcardAutomation$Step;->CLOSE_PETAL_KEYBOARD:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v7, Lcom/pikminx/helper/PostcardAutomation$Step;->SELECT_PETAL:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v8, Lcom/pikminx/helper/PostcardAutomation$Step;->TAP_NEXT:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v9, Lcom/pikminx/helper/PostcardAutomation$Step;->NEXT:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v10, Lcom/pikminx/helper/PostcardAutomation$Step;->OPEN_SORT:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v11, Lcom/pikminx/helper/PostcardAutomation$Step;->CHOOSE_FAVORITE:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v12, Lcom/pikminx/helper/PostcardAutomation$Step;->SELECT_PIKMIN:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v13, Lcom/pikminx/helper/PostcardAutomation$Step;->GO:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v14, Lcom/pikminx/helper/PostcardAutomation$Step;->RECEIVE:Lcom/pikminx/helper/PostcardAutomation$Step;

    sget-object v15, Lcom/pikminx/helper/PostcardAutomation$Step;->WAIT_RECEIPT_EXIT:Lcom/pikminx/helper/PostcardAutomation$Step;

    filled-new-array/range {v0 .. v15}, [Lcom/pikminx/helper/PostcardAutomation$Step;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "FIND_FLOWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->FIND_FLOWER:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 7
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "OPEN_FLOWER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->OPEN_FLOWER:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 8
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "USE_PETALS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->USE_PETALS:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 9
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "ACCEPT_WARNING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->ACCEPT_WARNING:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 10
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "OPEN_PETAL_SEARCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->OPEN_PETAL_SEARCH:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 11
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "ENTER_PETAL_SEARCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->ENTER_PETAL_SEARCH:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 12
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "CLOSE_PETAL_KEYBOARD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->CLOSE_PETAL_KEYBOARD:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 13
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "SELECT_PETAL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->SELECT_PETAL:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 14
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "TAP_NEXT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->TAP_NEXT:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 15
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "NEXT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->NEXT:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 16
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "OPEN_SORT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->OPEN_SORT:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 17
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "CHOOSE_FAVORITE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->CHOOSE_FAVORITE:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 18
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "SELECT_PIKMIN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->SELECT_PIKMIN:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 19
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "GO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->GO:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 20
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "RECEIVE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->RECEIVE:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 21
    new-instance v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    const-string v1, "WAIT_RECEIPT_EXIT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardAutomation$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->WAIT_RECEIPT_EXIT:Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 5
    invoke-static {}, Lcom/pikminx/helper/PostcardAutomation$Step;->$values()[Lcom/pikminx/helper/PostcardAutomation$Step;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->$VALUES:[Lcom/pikminx/helper/PostcardAutomation$Step;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PostcardAutomation$Step;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PostcardAutomation$Step;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PostcardAutomation$Step;
    .locals 1

    .line 5
    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->$VALUES:[Lcom/pikminx/helper/PostcardAutomation$Step;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PostcardAutomation$Step;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PostcardAutomation$Step;

    return-object v0
.end method
