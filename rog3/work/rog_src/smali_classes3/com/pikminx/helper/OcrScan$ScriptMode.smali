.class final enum Lcom/pikminx/helper/OcrScan$ScriptMode;
.super Ljava/lang/Enum;
.source "OcrScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/OcrScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScriptMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/OcrScan$ScriptMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/OcrScan$ScriptMode;

.field public static final enum CHINESE:Lcom/pikminx/helper/OcrScan$ScriptMode;

.field public static final enum MULTILINGUAL:Lcom/pikminx/helper/OcrScan$ScriptMode;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/OcrScan$ScriptMode;
    .locals 2

    .line 10
    sget-object v0, Lcom/pikminx/helper/OcrScan$ScriptMode;->MULTILINGUAL:Lcom/pikminx/helper/OcrScan$ScriptMode;

    sget-object v1, Lcom/pikminx/helper/OcrScan$ScriptMode;->CHINESE:Lcom/pikminx/helper/OcrScan$ScriptMode;

    filled-new-array {v0, v1}, [Lcom/pikminx/helper/OcrScan$ScriptMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/pikminx/helper/OcrScan$ScriptMode;

    const-string v1, "MULTILINGUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OcrScan$ScriptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OcrScan$ScriptMode;->MULTILINGUAL:Lcom/pikminx/helper/OcrScan$ScriptMode;

    new-instance v0, Lcom/pikminx/helper/OcrScan$ScriptMode;

    const-string v1, "CHINESE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OcrScan$ScriptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OcrScan$ScriptMode;->CHINESE:Lcom/pikminx/helper/OcrScan$ScriptMode;

    invoke-static {}, Lcom/pikminx/helper/OcrScan$ScriptMode;->$values()[Lcom/pikminx/helper/OcrScan$ScriptMode;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/OcrScan$ScriptMode;->$VALUES:[Lcom/pikminx/helper/OcrScan$ScriptMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/OcrScan$ScriptMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/pikminx/helper/OcrScan$ScriptMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/OcrScan$ScriptMode;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/OcrScan$ScriptMode;
    .locals 1

    .line 10
    sget-object v0, Lcom/pikminx/helper/OcrScan$ScriptMode;->$VALUES:[Lcom/pikminx/helper/OcrScan$ScriptMode;

    invoke-virtual {v0}, [Lcom/pikminx/helper/OcrScan$ScriptMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/OcrScan$ScriptMode;

    return-object v0
.end method
