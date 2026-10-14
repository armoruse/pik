.class final enum Lcom/pikminx/helper/CaptureGeometry$Mode;
.super Ljava/lang/Enum;
.source "CaptureGeometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/CaptureGeometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/CaptureGeometry$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/CaptureGeometry$Mode;

.field public static final enum DISPLAY:Lcom/pikminx/helper/CaptureGeometry$Mode;

.field public static final enum WINDOW:Lcom/pikminx/helper/CaptureGeometry$Mode;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/CaptureGeometry$Mode;
    .locals 2

    .line 11
    sget-object v0, Lcom/pikminx/helper/CaptureGeometry$Mode;->WINDOW:Lcom/pikminx/helper/CaptureGeometry$Mode;

    sget-object v1, Lcom/pikminx/helper/CaptureGeometry$Mode;->DISPLAY:Lcom/pikminx/helper/CaptureGeometry$Mode;

    filled-new-array {v0, v1}, [Lcom/pikminx/helper/CaptureGeometry$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/pikminx/helper/CaptureGeometry$Mode;

    const-string v1, "WINDOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/CaptureGeometry$Mode;->WINDOW:Lcom/pikminx/helper/CaptureGeometry$Mode;

    new-instance v0, Lcom/pikminx/helper/CaptureGeometry$Mode;

    const-string v1, "DISPLAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/CaptureGeometry$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/CaptureGeometry$Mode;->DISPLAY:Lcom/pikminx/helper/CaptureGeometry$Mode;

    invoke-static {}, Lcom/pikminx/helper/CaptureGeometry$Mode;->$values()[Lcom/pikminx/helper/CaptureGeometry$Mode;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/CaptureGeometry$Mode;->$VALUES:[Lcom/pikminx/helper/CaptureGeometry$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/CaptureGeometry$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/pikminx/helper/CaptureGeometry$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/CaptureGeometry$Mode;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/CaptureGeometry$Mode;
    .locals 1

    .line 11
    sget-object v0, Lcom/pikminx/helper/CaptureGeometry$Mode;->$VALUES:[Lcom/pikminx/helper/CaptureGeometry$Mode;

    invoke-virtual {v0}, [Lcom/pikminx/helper/CaptureGeometry$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/CaptureGeometry$Mode;

    return-object v0
.end method
