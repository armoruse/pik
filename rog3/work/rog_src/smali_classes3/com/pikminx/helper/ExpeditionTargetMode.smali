.class final enum Lcom/pikminx/helper/ExpeditionTargetMode;
.super Ljava/lang/Enum;
.source "ExpeditionTargetMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/ExpeditionTargetMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/ExpeditionTargetMode;

.field public static final enum FRUIT:Lcom/pikminx/helper/ExpeditionTargetMode;

.field public static final enum FRUIT_AND_POT:Lcom/pikminx/helper/ExpeditionTargetMode;

.field public static final enum POT:Lcom/pikminx/helper/ExpeditionTargetMode;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/ExpeditionTargetMode;
    .locals 3

    .line 4
    sget-object v0, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT:Lcom/pikminx/helper/ExpeditionTargetMode;

    sget-object v1, Lcom/pikminx/helper/ExpeditionTargetMode;->POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    sget-object v2, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT_AND_POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    filled-new-array {v0, v1, v2}, [Lcom/pikminx/helper/ExpeditionTargetMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/pikminx/helper/ExpeditionTargetMode;

    const-string v1, "FRUIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionTargetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT:Lcom/pikminx/helper/ExpeditionTargetMode;

    .line 6
    new-instance v0, Lcom/pikminx/helper/ExpeditionTargetMode;

    const-string v1, "POT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionTargetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionTargetMode;->POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    .line 7
    new-instance v0, Lcom/pikminx/helper/ExpeditionTargetMode;

    const-string v1, "FRUIT_AND_POT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ExpeditionTargetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT_AND_POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    .line 4
    invoke-static {}, Lcom/pikminx/helper/ExpeditionTargetMode;->$values()[Lcom/pikminx/helper/ExpeditionTargetMode;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ExpeditionTargetMode;->$VALUES:[Lcom/pikminx/helper/ExpeditionTargetMode;

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

.method static fromStored(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionTargetMode;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 19
    if-nez p0, :cond_0

    .line 20
    sget-object v0, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT_AND_POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    return-object v0

    .line 23
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/pikminx/helper/ExpeditionTargetMode;->valueOf(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionTargetMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT_AND_POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/ExpeditionTargetMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4
    const-class v0, Lcom/pikminx/helper/ExpeditionTargetMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/ExpeditionTargetMode;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/ExpeditionTargetMode;
    .locals 1

    .line 4
    sget-object v0, Lcom/pikminx/helper/ExpeditionTargetMode;->$VALUES:[Lcom/pikminx/helper/ExpeditionTargetMode;

    invoke-virtual {v0}, [Lcom/pikminx/helper/ExpeditionTargetMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/ExpeditionTargetMode;

    return-object v0
.end method


# virtual methods
.method accepts(Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;)Z
    .locals 3
    .param p1, "kind"    # Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    .line 10
    sget-object v0, Lcom/pikminx/helper/ExpeditionTargetMode$1;->$SwitchMap$com$pikminx$helper$ExpeditionTargetMode:[I

    invoke-virtual {p0}, Lcom/pikminx/helper/ExpeditionTargetMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw v0

    .line 13
    :pswitch_0
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->FRUIT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->POT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 12
    :pswitch_1
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->POT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 11
    :pswitch_2
    sget-object v0, Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;->FRUIT:Lcom/pikminx/helper/ExpeditionScreenAnalyzer$ItemKind;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 10
    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
