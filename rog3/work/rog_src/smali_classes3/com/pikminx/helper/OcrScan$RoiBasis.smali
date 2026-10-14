.class final enum Lcom/pikminx/helper/OcrScan$RoiBasis;
.super Ljava/lang/Enum;
.source "OcrScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/OcrScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RoiBasis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/OcrScan$RoiBasis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/OcrScan$RoiBasis;

.field public static final enum SCREENSHOT:Lcom/pikminx/helper/OcrScan$RoiBasis;

.field public static final enum TARGET_WINDOW:Lcom/pikminx/helper/OcrScan$RoiBasis;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/OcrScan$RoiBasis;
    .locals 2

    .line 11
    sget-object v0, Lcom/pikminx/helper/OcrScan$RoiBasis;->SCREENSHOT:Lcom/pikminx/helper/OcrScan$RoiBasis;

    sget-object v1, Lcom/pikminx/helper/OcrScan$RoiBasis;->TARGET_WINDOW:Lcom/pikminx/helper/OcrScan$RoiBasis;

    filled-new-array {v0, v1}, [Lcom/pikminx/helper/OcrScan$RoiBasis;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/pikminx/helper/OcrScan$RoiBasis;

    const-string v1, "SCREENSHOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OcrScan$RoiBasis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OcrScan$RoiBasis;->SCREENSHOT:Lcom/pikminx/helper/OcrScan$RoiBasis;

    new-instance v0, Lcom/pikminx/helper/OcrScan$RoiBasis;

    const-string v1, "TARGET_WINDOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OcrScan$RoiBasis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OcrScan$RoiBasis;->TARGET_WINDOW:Lcom/pikminx/helper/OcrScan$RoiBasis;

    invoke-static {}, Lcom/pikminx/helper/OcrScan$RoiBasis;->$values()[Lcom/pikminx/helper/OcrScan$RoiBasis;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/OcrScan$RoiBasis;->$VALUES:[Lcom/pikminx/helper/OcrScan$RoiBasis;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/OcrScan$RoiBasis;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/pikminx/helper/OcrScan$RoiBasis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/OcrScan$RoiBasis;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/OcrScan$RoiBasis;
    .locals 1

    .line 11
    sget-object v0, Lcom/pikminx/helper/OcrScan$RoiBasis;->$VALUES:[Lcom/pikminx/helper/OcrScan$RoiBasis;

    invoke-virtual {v0}, [Lcom/pikminx/helper/OcrScan$RoiBasis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/OcrScan$RoiBasis;

    return-object v0
.end method
