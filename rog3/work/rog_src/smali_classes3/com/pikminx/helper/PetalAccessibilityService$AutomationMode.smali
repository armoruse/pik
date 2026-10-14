.class final enum Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;
.super Ljava/lang/Enum;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AutomationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

.field public static final enum DISPATCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

.field public static final enum FEED:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

.field public static final enum FEED_STOCK_SCAN:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

.field public static final enum NONE:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

.field public static final enum PLANTING:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

.field public static final enum POSTCARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

.field public static final enum RETURN_REWARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

.field public static final enum SEEDLING_CLEANUP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

.field public static final enum SEEDLING_INSPECT:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;
    .locals 9

    .line 146
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->NONE:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->PLANTING:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    sget-object v2, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->FEED:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    sget-object v3, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->FEED_STOCK_SCAN:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    sget-object v4, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->POSTCARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    sget-object v5, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->DISPATCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    sget-object v6, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->RETURN_REWARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    sget-object v7, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->SEEDLING_CLEANUP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    sget-object v8, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->SEEDLING_INSPECT:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    filled-new-array/range {v0 .. v8}, [Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 147
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->NONE:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    .line 148
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    const-string v1, "PLANTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->PLANTING:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    .line 149
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    const-string v1, "FEED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->FEED:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    .line 150
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    const-string v1, "FEED_STOCK_SCAN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->FEED_STOCK_SCAN:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    .line 151
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    const-string v1, "POSTCARD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->POSTCARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    .line 152
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    const-string v1, "DISPATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->DISPATCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    .line 153
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    const-string v1, "RETURN_REWARD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->RETURN_REWARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    .line 154
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    const-string v1, "SEEDLING_CLEANUP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->SEEDLING_CLEANUP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    .line 155
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    const-string v1, "SEEDLING_INSPECT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->SEEDLING_INSPECT:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    .line 146
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->$values()[Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->$VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 146
    const-class v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;
    .locals 1

    .line 146
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->$VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    return-object v0
.end method
