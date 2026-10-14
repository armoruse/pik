.class final enum Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;
.super Ljava/lang/Enum;
.source "PlantingScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PlantingScreenAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EntrySource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

.field public static final enum NONE:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

.field public static final enum WHISTLE_RELATIVE:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;
    .locals 2

    .line 19
    sget-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;->NONE:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    sget-object v1, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;->WHISTLE_RELATIVE:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    filled-new-array {v0, v1}, [Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;->NONE:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    .line 21
    new-instance v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    const-string v1, "WHISTLE_RELATIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;->WHISTLE_RELATIVE:Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    .line 19
    invoke-static {}, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;->$values()[Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;->$VALUES:[Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;
    .locals 1

    .line 19
    sget-object v0, Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;->$VALUES:[Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PlantingScreenAnalyzer$EntrySource;

    return-object v0
.end method
