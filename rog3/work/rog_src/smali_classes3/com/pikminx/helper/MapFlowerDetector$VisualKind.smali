.class final enum Lcom/pikminx/helper/MapFlowerDetector$VisualKind;
.super Ljava/lang/Enum;
.source "MapFlowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/MapFlowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VisualKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/MapFlowerDetector$VisualKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

.field public static final enum BLUE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

.field public static final enum MIXED:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

.field public static final enum PURPLE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

.field public static final enum RED:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

.field public static final enum WHITE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

.field public static final enum YELLOW:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/MapFlowerDetector$VisualKind;
    .locals 6

    .line 14
    sget-object v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->WHITE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    sget-object v1, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->RED:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    sget-object v2, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->YELLOW:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    sget-object v3, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->BLUE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    sget-object v4, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->PURPLE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    sget-object v5, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->MIXED:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    filled-new-array/range {v0 .. v5}, [Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    const-string v1, "WHITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->WHITE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    .line 16
    new-instance v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    const-string v1, "RED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->RED:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    .line 17
    new-instance v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    const-string v1, "YELLOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->YELLOW:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    .line 18
    new-instance v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    const-string v1, "BLUE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->BLUE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    .line 19
    new-instance v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    const-string v1, "PURPLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->PURPLE:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    .line 20
    new-instance v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    const-string v1, "MIXED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->MIXED:Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    .line 14
    invoke-static {}, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->$values()[Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->$VALUES:[Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/MapFlowerDetector$VisualKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/MapFlowerDetector$VisualKind;
    .locals 1

    .line 14
    sget-object v0, Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->$VALUES:[Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    invoke-virtual {v0}, [Lcom/pikminx/helper/MapFlowerDetector$VisualKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/MapFlowerDetector$VisualKind;

    return-object v0
.end method
