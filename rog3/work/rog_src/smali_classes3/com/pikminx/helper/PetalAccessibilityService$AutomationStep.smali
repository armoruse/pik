.class final enum Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;
.super Ljava/lang/Enum;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AutomationStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum CHECKING_PLANTING_ENTRY:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum CLOSING_SEARCH_AFTER_SELECTION:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum CLOSING_SEARCH_KEYBOARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum ENTERING_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum MONITORING:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum OPENING_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum REVEALING_SEARCH_PANEL:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum SELECTING_SEARCH_RESULT:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum VERIFYING_SELECTION:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum VERIFYING_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum VERIFYING_STOP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum WAITING_INITIAL_PLANTING_MENU:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum WAITING_MENU_AFTER_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum WAITING_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

.field public static final enum WAITING_STOP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;
    .locals 15

    .line 128
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->CHECKING_PLANTING_ENTRY:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_INITIAL_PLANTING_MENU:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v2, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->MONITORING:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v3, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->REVEALING_SEARCH_PANEL:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v4, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->OPENING_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v5, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ENTERING_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v6, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->CLOSING_SEARCH_KEYBOARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v7, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->SELECTING_SEARCH_RESULT:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v8, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->VERIFYING_SELECTION:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v9, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->CLOSING_SEARCH_AFTER_SELECTION:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v10, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v11, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->VERIFYING_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v12, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_MENU_AFTER_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v13, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_STOP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    sget-object v14, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->VERIFYING_STOP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    filled-new-array/range {v0 .. v14}, [Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 129
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "CHECKING_PLANTING_ENTRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->CHECKING_PLANTING_ENTRY:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 130
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "WAITING_INITIAL_PLANTING_MENU"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_INITIAL_PLANTING_MENU:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 131
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "MONITORING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->MONITORING:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 132
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "REVEALING_SEARCH_PANEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->REVEALING_SEARCH_PANEL:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 133
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "OPENING_SEARCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->OPENING_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 134
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "ENTERING_SEARCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->ENTERING_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 135
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "CLOSING_SEARCH_KEYBOARD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->CLOSING_SEARCH_KEYBOARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 136
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "SELECTING_SEARCH_RESULT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->SELECTING_SEARCH_RESULT:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 137
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "VERIFYING_SELECTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->VERIFYING_SELECTION:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 138
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "CLOSING_SEARCH_AFTER_SELECTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->CLOSING_SEARCH_AFTER_SELECTION:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 139
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "WAITING_START"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 140
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "VERIFYING_START"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->VERIFYING_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 141
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "WAITING_MENU_AFTER_START"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_MENU_AFTER_START:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 142
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "WAITING_STOP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->WAITING_STOP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 143
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    const-string v1, "VERIFYING_STOP"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->VERIFYING_STOP:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    .line 128
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->$values()[Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->$VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 128
    const-class v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;
    .locals 1

    .line 128
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->$VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    return-object v0
.end method
