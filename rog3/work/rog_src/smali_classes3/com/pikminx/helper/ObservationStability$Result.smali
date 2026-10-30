.class final enum Lcom/pikminx/helper/ObservationStability$Result;
.super Ljava/lang/Enum;
.source "ObservationStability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/ObservationStability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/ObservationStability$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/ObservationStability$Result;

.field public static final enum CANDIDATE:Lcom/pikminx/helper/ObservationStability$Result;

.field public static final enum STABLE:Lcom/pikminx/helper/ObservationStability$Result;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/ObservationStability$Result;
    .locals 2

    .line 5
    sget-object v0, Lcom/pikminx/helper/ObservationStability$Result;->CANDIDATE:Lcom/pikminx/helper/ObservationStability$Result;

    sget-object v1, Lcom/pikminx/helper/ObservationStability$Result;->STABLE:Lcom/pikminx/helper/ObservationStability$Result;

    filled-new-array {v0, v1}, [Lcom/pikminx/helper/ObservationStability$Result;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/pikminx/helper/ObservationStability$Result;

    const-string v1, "CANDIDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ObservationStability$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ObservationStability$Result;->CANDIDATE:Lcom/pikminx/helper/ObservationStability$Result;

    new-instance v0, Lcom/pikminx/helper/ObservationStability$Result;

    const-string v1, "STABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/ObservationStability$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/ObservationStability$Result;->STABLE:Lcom/pikminx/helper/ObservationStability$Result;

    invoke-static {}, Lcom/pikminx/helper/ObservationStability$Result;->$values()[Lcom/pikminx/helper/ObservationStability$Result;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/ObservationStability$Result;->$VALUES:[Lcom/pikminx/helper/ObservationStability$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/ObservationStability$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lcom/pikminx/helper/ObservationStability$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/ObservationStability$Result;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/ObservationStability$Result;
    .locals 1

    .line 5
    sget-object v0, Lcom/pikminx/helper/ObservationStability$Result;->$VALUES:[Lcom/pikminx/helper/ObservationStability$Result;

    invoke-virtual {v0}, [Lcom/pikminx/helper/ObservationStability$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/ObservationStability$Result;

    return-object v0
.end method
