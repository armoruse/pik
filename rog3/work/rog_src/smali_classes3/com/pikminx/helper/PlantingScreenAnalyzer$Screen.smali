.class final enum Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;
.super Ljava/lang/Enum;
.source "PlantingScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PlantingScreenAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

.field public static final enum AMBIGUOUS:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

.field public static final enum MAP_VISIBLE_NO_ENTRY:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

.field public static final enum MAP_WITH_ENTRY:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

.field public static final enum PLANTING_MENU:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

.field public static final enum UNKNOWN:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;
    .locals 5

    .line 9
    sget-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->MAP_WITH_ENTRY:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    sget-object v1, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->MAP_VISIBLE_NO_ENTRY:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    sget-object v2, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->PLANTING_MENU:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    sget-object v3, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->AMBIGUOUS:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    sget-object v4, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->UNKNOWN:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    const-string v1, "MAP_WITH_ENTRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->MAP_WITH_ENTRY:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    .line 11
    new-instance v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    const-string v1, "MAP_VISIBLE_NO_ENTRY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->MAP_VISIBLE_NO_ENTRY:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    .line 12
    new-instance v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    const-string v1, "PLANTING_MENU"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->PLANTING_MENU:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    .line 13
    new-instance v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    const-string v1, "AMBIGUOUS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->AMBIGUOUS:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    .line 14
    new-instance v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->UNKNOWN:Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    .line 9
    invoke-static {}, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->$values()[Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->$VALUES:[Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;
    .locals 1

    .line 9
    sget-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->$VALUES:[Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PlantingScreenAnalyzer$Screen;

    return-object v0
.end method
