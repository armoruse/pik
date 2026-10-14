.class final enum Lcom/pikminx/helper/MapSceneInventory$Kind;
.super Ljava/lang/Enum;
.source "MapSceneInventory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/MapSceneInventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/MapSceneInventory$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/MapSceneInventory$Kind;

.field public static final enum BIG_FLOWER:Lcom/pikminx/helper/MapSceneInventory$Kind;

.field public static final enum MUSHROOM:Lcom/pikminx/helper/MapSceneInventory$Kind;

.field public static final enum OVERLAY:Lcom/pikminx/helper/MapSceneInventory$Kind;

.field public static final enum PLAYER:Lcom/pikminx/helper/MapSceneInventory$Kind;

.field public static final enum UNKNOWN:Lcom/pikminx/helper/MapSceneInventory$Kind;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/MapSceneInventory$Kind;
    .locals 5

    .line 13
    sget-object v0, Lcom/pikminx/helper/MapSceneInventory$Kind;->BIG_FLOWER:Lcom/pikminx/helper/MapSceneInventory$Kind;

    sget-object v1, Lcom/pikminx/helper/MapSceneInventory$Kind;->MUSHROOM:Lcom/pikminx/helper/MapSceneInventory$Kind;

    sget-object v2, Lcom/pikminx/helper/MapSceneInventory$Kind;->PLAYER:Lcom/pikminx/helper/MapSceneInventory$Kind;

    sget-object v3, Lcom/pikminx/helper/MapSceneInventory$Kind;->OVERLAY:Lcom/pikminx/helper/MapSceneInventory$Kind;

    sget-object v4, Lcom/pikminx/helper/MapSceneInventory$Kind;->UNKNOWN:Lcom/pikminx/helper/MapSceneInventory$Kind;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/pikminx/helper/MapSceneInventory$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/pikminx/helper/MapSceneInventory$Kind;

    const-string v1, "BIG_FLOWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/MapSceneInventory$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/MapSceneInventory$Kind;->BIG_FLOWER:Lcom/pikminx/helper/MapSceneInventory$Kind;

    .line 15
    new-instance v0, Lcom/pikminx/helper/MapSceneInventory$Kind;

    const-string v1, "MUSHROOM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/MapSceneInventory$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/MapSceneInventory$Kind;->MUSHROOM:Lcom/pikminx/helper/MapSceneInventory$Kind;

    .line 16
    new-instance v0, Lcom/pikminx/helper/MapSceneInventory$Kind;

    const-string v1, "PLAYER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/MapSceneInventory$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/MapSceneInventory$Kind;->PLAYER:Lcom/pikminx/helper/MapSceneInventory$Kind;

    .line 17
    new-instance v0, Lcom/pikminx/helper/MapSceneInventory$Kind;

    const-string v1, "OVERLAY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/MapSceneInventory$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/MapSceneInventory$Kind;->OVERLAY:Lcom/pikminx/helper/MapSceneInventory$Kind;

    .line 18
    new-instance v0, Lcom/pikminx/helper/MapSceneInventory$Kind;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/MapSceneInventory$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/MapSceneInventory$Kind;->UNKNOWN:Lcom/pikminx/helper/MapSceneInventory$Kind;

    .line 13
    invoke-static {}, Lcom/pikminx/helper/MapSceneInventory$Kind;->$values()[Lcom/pikminx/helper/MapSceneInventory$Kind;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/MapSceneInventory$Kind;->$VALUES:[Lcom/pikminx/helper/MapSceneInventory$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/MapSceneInventory$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/pikminx/helper/MapSceneInventory$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/MapSceneInventory$Kind;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/MapSceneInventory$Kind;
    .locals 1

    .line 13
    sget-object v0, Lcom/pikminx/helper/MapSceneInventory$Kind;->$VALUES:[Lcom/pikminx/helper/MapSceneInventory$Kind;

    invoke-virtual {v0}, [Lcom/pikminx/helper/MapSceneInventory$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/MapSceneInventory$Kind;

    return-object v0
.end method
