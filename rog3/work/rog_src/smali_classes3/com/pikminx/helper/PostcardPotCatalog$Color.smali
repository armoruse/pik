.class final enum Lcom/pikminx/helper/PostcardPotCatalog$Color;
.super Ljava/lang/Enum;
.source "PostcardPotCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PostcardPotCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Color"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PostcardPotCatalog$Color;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PostcardPotCatalog$Color;

.field public static final enum BLUE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

.field public static final enum RED:Lcom/pikminx/helper/PostcardPotCatalog$Color;

.field public static final enum WHITE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

.field public static final enum YELLOW:Lcom/pikminx/helper/PostcardPotCatalog$Color;


# instance fields
.field private final label:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PostcardPotCatalog$Color;
    .locals 4

    .line 10
    sget-object v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;->WHITE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    sget-object v1, Lcom/pikminx/helper/PostcardPotCatalog$Color;->YELLOW:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    sget-object v2, Lcom/pikminx/helper/PostcardPotCatalog$Color;->RED:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    sget-object v3, Lcom/pikminx/helper/PostcardPotCatalog$Color;->BLUE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    filled-new-array {v0, v1, v2, v3}, [Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;

    const/4 v1, 0x0

    const-string v2, "\u767d\u8272"

    const-string v3, "WHITE"

    invoke-direct {v0, v3, v1, v2}, Lcom/pikminx/helper/PostcardPotCatalog$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;->WHITE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    .line 12
    new-instance v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;

    const/4 v1, 0x1

    const-string v2, "\u9ec3\u8272"

    const-string v3, "YELLOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/pikminx/helper/PostcardPotCatalog$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;->YELLOW:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    .line 13
    new-instance v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;

    const/4 v1, 0x2

    const-string v2, "\u7d05\u8272"

    const-string v3, "RED"

    invoke-direct {v0, v3, v1, v2}, Lcom/pikminx/helper/PostcardPotCatalog$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;->RED:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    .line 14
    new-instance v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;

    const/4 v1, 0x3

    const-string v2, "\u85cd\u8272"

    const-string v3, "BLUE"

    invoke-direct {v0, v3, v1, v2}, Lcom/pikminx/helper/PostcardPotCatalog$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;->BLUE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    .line 10
    invoke-static {}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->$values()[Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;->$VALUES:[Lcom/pikminx/helper/PostcardPotCatalog$Color;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PostcardPotCatalog$Color;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PostcardPotCatalog$Color;
    .locals 1

    .line 10
    sget-object v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;->$VALUES:[Lcom/pikminx/helper/PostcardPotCatalog$Color;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PostcardPotCatalog$Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PostcardPotCatalog$Color;

    return-object v0
.end method


# virtual methods
.method label()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label:Ljava/lang/String;

    return-object v0
.end method
