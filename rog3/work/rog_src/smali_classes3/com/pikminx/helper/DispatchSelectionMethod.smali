.class final enum Lcom/pikminx/helper/DispatchSelectionMethod;
.super Ljava/lang/Enum;
.source "DispatchSelectionMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/DispatchSelectionMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/DispatchSelectionMethod;

.field public static final enum AUTO:Lcom/pikminx/helper/DispatchSelectionMethod;

.field public static final enum DRAG_12:Lcom/pikminx/helper/DispatchSelectionMethod;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/DispatchSelectionMethod;
    .locals 2

    .line 4
    sget-object v0, Lcom/pikminx/helper/DispatchSelectionMethod;->AUTO:Lcom/pikminx/helper/DispatchSelectionMethod;

    sget-object v1, Lcom/pikminx/helper/DispatchSelectionMethod;->DRAG_12:Lcom/pikminx/helper/DispatchSelectionMethod;

    filled-new-array {v0, v1}, [Lcom/pikminx/helper/DispatchSelectionMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/pikminx/helper/DispatchSelectionMethod;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/DispatchSelectionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/DispatchSelectionMethod;->AUTO:Lcom/pikminx/helper/DispatchSelectionMethod;

    .line 6
    new-instance v0, Lcom/pikminx/helper/DispatchSelectionMethod;

    const-string v1, "DRAG_12"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/DispatchSelectionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/DispatchSelectionMethod;->DRAG_12:Lcom/pikminx/helper/DispatchSelectionMethod;

    .line 4
    invoke-static {}, Lcom/pikminx/helper/DispatchSelectionMethod;->$values()[Lcom/pikminx/helper/DispatchSelectionMethod;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/DispatchSelectionMethod;->$VALUES:[Lcom/pikminx/helper/DispatchSelectionMethod;

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

.method static fromStored(Ljava/lang/String;)Lcom/pikminx/helper/DispatchSelectionMethod;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 13
    if-nez p0, :cond_0

    .line 14
    sget-object v0, Lcom/pikminx/helper/DispatchSelectionMethod;->AUTO:Lcom/pikminx/helper/DispatchSelectionMethod;

    return-object v0

    .line 17
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/pikminx/helper/DispatchSelectionMethod;->valueOf(Ljava/lang/String;)Lcom/pikminx/helper/DispatchSelectionMethod;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/pikminx/helper/DispatchSelectionMethod;->AUTO:Lcom/pikminx/helper/DispatchSelectionMethod;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/DispatchSelectionMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4
    const-class v0, Lcom/pikminx/helper/DispatchSelectionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/DispatchSelectionMethod;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/DispatchSelectionMethod;
    .locals 1

    .line 4
    sget-object v0, Lcom/pikminx/helper/DispatchSelectionMethod;->$VALUES:[Lcom/pikminx/helper/DispatchSelectionMethod;

    invoke-virtual {v0}, [Lcom/pikminx/helper/DispatchSelectionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/DispatchSelectionMethod;

    return-object v0
.end method


# virtual methods
.method requiresFullSelection()Z
    .locals 1

    .line 9
    sget-object v0, Lcom/pikminx/helper/DispatchSelectionMethod;->DRAG_12:Lcom/pikminx/helper/DispatchSelectionMethod;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
