.class final enum Lcom/pikminx/helper/GeometryValidation$Discrepancy;
.super Ljava/lang/Enum;
.source "GeometryValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/GeometryValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Discrepancy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/GeometryValidation$Discrepancy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/GeometryValidation$Discrepancy;

.field public static final enum MINOR:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

.field public static final enum NONE:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

.field public static final enum ROI_CONTENT_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

.field public static final enum SCALE_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

.field public static final enum SYSTEMATIC_OFFSET:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

.field public static final enum UNKNOWN:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

.field public static final enum WINDOW_BOUNDS_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/GeometryValidation$Discrepancy;
    .locals 7

    .line 14
    sget-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->NONE:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    sget-object v1, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->MINOR:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    sget-object v2, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->SYSTEMATIC_OFFSET:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    sget-object v3, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->SCALE_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    sget-object v4, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->WINDOW_BOUNDS_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    sget-object v5, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->ROI_CONTENT_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    sget-object v6, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->UNKNOWN:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    filled-new-array/range {v0 .. v6}, [Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/GeometryValidation$Discrepancy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->NONE:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    .line 16
    new-instance v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    const-string v1, "MINOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/GeometryValidation$Discrepancy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->MINOR:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    .line 17
    new-instance v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    const-string v1, "SYSTEMATIC_OFFSET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/GeometryValidation$Discrepancy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->SYSTEMATIC_OFFSET:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    .line 18
    new-instance v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    const-string v1, "SCALE_MISMATCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/GeometryValidation$Discrepancy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->SCALE_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    .line 19
    new-instance v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    const-string v1, "WINDOW_BOUNDS_MISMATCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/GeometryValidation$Discrepancy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->WINDOW_BOUNDS_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    .line 20
    new-instance v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    const-string v1, "ROI_CONTENT_MISMATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/GeometryValidation$Discrepancy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->ROI_CONTENT_MISMATCH:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    .line 21
    new-instance v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/GeometryValidation$Discrepancy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->UNKNOWN:Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    .line 14
    invoke-static {}, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->$values()[Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->$VALUES:[Lcom/pikminx/helper/GeometryValidation$Discrepancy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/GeometryValidation$Discrepancy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/GeometryValidation$Discrepancy;
    .locals 1

    .line 14
    sget-object v0, Lcom/pikminx/helper/GeometryValidation$Discrepancy;->$VALUES:[Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    invoke-virtual {v0}, [Lcom/pikminx/helper/GeometryValidation$Discrepancy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/GeometryValidation$Discrepancy;

    return-object v0
.end method
