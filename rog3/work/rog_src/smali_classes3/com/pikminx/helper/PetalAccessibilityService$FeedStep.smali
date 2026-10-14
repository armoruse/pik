.class final enum Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;
.super Ljava/lang/Enum;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FeedStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum CLEARING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum CLOSING_NECTAR_KEYBOARD:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum COLLECTING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum CONFIRMING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum ENTERING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum FEEDING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum OPENING_NECTAR:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum OPENING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum READING_CONSUMED_COUNT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum READING_NECTAR_COUNT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum SELECTING_NECTAR:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum SWITCHING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum WAITING_GAME_READY:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum WAITING_NECTAR_PANEL_CLOSE:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

.field public static final enum ZOOMING_OUT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;
    .locals 15

    .line 169
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->WAITING_GAME_READY:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->OPENING_NECTAR:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v2, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->OPENING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v3, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->CLEARING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v4, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ENTERING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v5, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->CONFIRMING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v6, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->CLOSING_NECTAR_KEYBOARD:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v7, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->SELECTING_NECTAR:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v8, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->WAITING_NECTAR_PANEL_CLOSE:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v9, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ZOOMING_OUT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v10, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->READING_NECTAR_COUNT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v11, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->READING_CONSUMED_COUNT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v12, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->FEEDING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v13, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->COLLECTING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    sget-object v14, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->SWITCHING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    filled-new-array/range {v0 .. v14}, [Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 170
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "WAITING_GAME_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->WAITING_GAME_READY:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 171
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "OPENING_NECTAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->OPENING_NECTAR:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 172
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "OPENING_NECTAR_SEARCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->OPENING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 173
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "CLEARING_NECTAR_SEARCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->CLEARING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 174
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "ENTERING_NECTAR_SEARCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ENTERING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 175
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "CONFIRMING_NECTAR_SEARCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->CONFIRMING_NECTAR_SEARCH:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 176
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "CLOSING_NECTAR_KEYBOARD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->CLOSING_NECTAR_KEYBOARD:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 177
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "SELECTING_NECTAR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->SELECTING_NECTAR:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 178
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "WAITING_NECTAR_PANEL_CLOSE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->WAITING_NECTAR_PANEL_CLOSE:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 179
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "ZOOMING_OUT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->ZOOMING_OUT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 180
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "READING_NECTAR_COUNT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->READING_NECTAR_COUNT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 181
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "READING_CONSUMED_COUNT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->READING_CONSUMED_COUNT:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 182
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "FEEDING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->FEEDING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 183
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "COLLECTING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->COLLECTING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 184
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    const-string v1, "SWITCHING"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->SWITCHING:Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    .line 169
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->$values()[Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->$VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 169
    const-class v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;
    .locals 1

    .line 169
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->$VALUES:[Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PetalAccessibilityService$FeedStep;

    return-object v0
.end method
