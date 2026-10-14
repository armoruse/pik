.class final enum Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;
.super Ljava/lang/Enum;
.source "ExpeditionScreenAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/ExpeditionScreenAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ItemKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

.field public static final enum FRUIT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

.field public static final enum GIFT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

.field public static final enum POT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;
    .locals 3

    .line 25
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->FRUIT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    sget-object v1, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->POT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    sget-object v2, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->GIFT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    filled-new-array {v0, v1, v2}, [Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    const-string v1, "FRUIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->FRUIT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    .line 27
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    const-string v1, "POT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->POT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    .line 28
    new-instance v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    const-string v1, "GIFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->GIFT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    .line 25
    invoke-static {}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->$values()[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->$VALUES:[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;
    .locals 1

    .line 25
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->$VALUES:[Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    invoke-virtual {v0}, [Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    return-object v0
.end method
