.class final enum Lcom/pikminx/helper/DispatchPikminType;
.super Ljava/lang/Enum;
.source "DispatchPikminType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/DispatchPikminType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/DispatchPikminType;

.field public static final enum BLUE:Lcom/pikminx/helper/DispatchPikminType;

.field public static final enum ICE:Lcom/pikminx/helper/DispatchPikminType;

.field public static final enum MIXED:Lcom/pikminx/helper/DispatchPikminType;

.field public static final enum PURPLE:Lcom/pikminx/helper/DispatchPikminType;

.field public static final enum RED:Lcom/pikminx/helper/DispatchPikminType;

.field public static final enum ROCK:Lcom/pikminx/helper/DispatchPikminType;

.field public static final enum WHITE:Lcom/pikminx/helper/DispatchPikminType;

.field public static final enum WINGED:Lcom/pikminx/helper/DispatchPikminType;

.field public static final enum YELLOW:Lcom/pikminx/helper/DispatchPikminType;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/DispatchPikminType;
    .locals 9

    .line 4
    sget-object v0, Lcom/pikminx/helper/DispatchPikminType;->MIXED:Lcom/pikminx/helper/DispatchPikminType;

    sget-object v1, Lcom/pikminx/helper/DispatchPikminType;->RED:Lcom/pikminx/helper/DispatchPikminType;

    sget-object v2, Lcom/pikminx/helper/DispatchPikminType;->YELLOW:Lcom/pikminx/helper/DispatchPikminType;

    sget-object v3, Lcom/pikminx/helper/DispatchPikminType;->BLUE:Lcom/pikminx/helper/DispatchPikminType;

    sget-object v4, Lcom/pikminx/helper/DispatchPikminType;->PURPLE:Lcom/pikminx/helper/DispatchPikminType;

    sget-object v5, Lcom/pikminx/helper/DispatchPikminType;->WHITE:Lcom/pikminx/helper/DispatchPikminType;

    sget-object v6, Lcom/pikminx/helper/DispatchPikminType;->WINGED:Lcom/pikminx/helper/DispatchPikminType;

    sget-object v7, Lcom/pikminx/helper/DispatchPikminType;->ROCK:Lcom/pikminx/helper/DispatchPikminType;

    sget-object v8, Lcom/pikminx/helper/DispatchPikminType;->ICE:Lcom/pikminx/helper/DispatchPikminType;

    filled-new-array/range {v0 .. v8}, [Lcom/pikminx/helper/DispatchPikminType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/pikminx/helper/DispatchPikminType;

    const-string v1, "MIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/DispatchPikminType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/DispatchPikminType;->MIXED:Lcom/pikminx/helper/DispatchPikminType;

    .line 6
    new-instance v0, Lcom/pikminx/helper/DispatchPikminType;

    const-string v1, "RED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/DispatchPikminType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/DispatchPikminType;->RED:Lcom/pikminx/helper/DispatchPikminType;

    .line 7
    new-instance v0, Lcom/pikminx/helper/DispatchPikminType;

    const-string v1, "YELLOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/DispatchPikminType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/DispatchPikminType;->YELLOW:Lcom/pikminx/helper/DispatchPikminType;

    .line 8
    new-instance v0, Lcom/pikminx/helper/DispatchPikminType;

    const-string v1, "BLUE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/DispatchPikminType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/DispatchPikminType;->BLUE:Lcom/pikminx/helper/DispatchPikminType;

    .line 9
    new-instance v0, Lcom/pikminx/helper/DispatchPikminType;

    const-string v1, "PURPLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/DispatchPikminType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/DispatchPikminType;->PURPLE:Lcom/pikminx/helper/DispatchPikminType;

    .line 10
    new-instance v0, Lcom/pikminx/helper/DispatchPikminType;

    const-string v1, "WHITE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/DispatchPikminType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/DispatchPikminType;->WHITE:Lcom/pikminx/helper/DispatchPikminType;

    .line 11
    new-instance v0, Lcom/pikminx/helper/DispatchPikminType;

    const-string v1, "WINGED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/DispatchPikminType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/DispatchPikminType;->WINGED:Lcom/pikminx/helper/DispatchPikminType;

    .line 12
    new-instance v0, Lcom/pikminx/helper/DispatchPikminType;

    const-string v1, "ROCK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/DispatchPikminType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/DispatchPikminType;->ROCK:Lcom/pikminx/helper/DispatchPikminType;

    .line 13
    new-instance v0, Lcom/pikminx/helper/DispatchPikminType;

    const-string v1, "ICE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/DispatchPikminType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/DispatchPikminType;->ICE:Lcom/pikminx/helper/DispatchPikminType;

    .line 4
    invoke-static {}, Lcom/pikminx/helper/DispatchPikminType;->$values()[Lcom/pikminx/helper/DispatchPikminType;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/DispatchPikminType;->$VALUES:[Lcom/pikminx/helper/DispatchPikminType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromStored(Ljava/lang/String;)Lcom/pikminx/helper/DispatchPikminType;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 30
    if-nez p0, :cond_0

    sget-object v0, Lcom/pikminx/helper/DispatchPikminType;->MIXED:Lcom/pikminx/helper/DispatchPikminType;

    return-object v0

    .line 32
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/pikminx/helper/DispatchPikminType;->valueOf(Ljava/lang/String;)Lcom/pikminx/helper/DispatchPikminType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/pikminx/helper/DispatchPikminType;->MIXED:Lcom/pikminx/helper/DispatchPikminType;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/DispatchPikminType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4
    const-class v0, Lcom/pikminx/helper/DispatchPikminType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/DispatchPikminType;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/DispatchPikminType;
    .locals 1

    .line 4
    sget-object v0, Lcom/pikminx/helper/DispatchPikminType;->$VALUES:[Lcom/pikminx/helper/DispatchPikminType;

    invoke-virtual {v0}, [Lcom/pikminx/helper/DispatchPikminType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/DispatchPikminType;

    return-object v0
.end method


# virtual methods
.method label()Ljava/lang/String;
    .locals 2

    .line 16
    sget-object v0, Lcom/pikminx/helper/DispatchPikminType$1;->$SwitchMap$com$pikminx$helper$DispatchPikminType:[I

    invoke-virtual {p0}, Lcom/pikminx/helper/DispatchPikminType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw v0

    .line 25
    :pswitch_0
    const-string v0, "\u51b0\u51cd"

    goto :goto_0

    .line 24
    :pswitch_1
    const-string v0, "\u5ca9\u77f3"

    goto :goto_0

    .line 23
    :pswitch_2
    const-string v0, "\u7fbd\u7fc5"

    goto :goto_0

    .line 22
    :pswitch_3
    const-string v0, "\u767d\u8272"

    goto :goto_0

    .line 21
    :pswitch_4
    const-string v0, "\u7d2b\u8272"

    goto :goto_0

    .line 20
    :pswitch_5
    const-string v0, "\u85cd\u8272"

    goto :goto_0

    .line 19
    :pswitch_6
    const-string v0, "\u9ec3\u8272"

    goto :goto_0

    .line 18
    :pswitch_7
    const-string v0, "\u7d05\u8272"

    goto :goto_0

    .line 17
    :pswitch_8
    const-string v0, "\u6df7\u5408"

    .line 16
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
