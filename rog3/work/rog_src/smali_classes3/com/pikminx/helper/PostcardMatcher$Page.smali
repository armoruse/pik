.class final enum Lcom/pikminx/helper/PostcardMatcher$Page;
.super Ljava/lang/Enum;
.source "PostcardMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PostcardMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PostcardMatcher$Page;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PostcardMatcher$Page;

.field public static final enum FLOWER_DETAIL:Lcom/pikminx/helper/PostcardMatcher$Page;

.field public static final enum MAP:Lcom/pikminx/helper/PostcardMatcher$Page;

.field public static final enum PETAL_SELECTION:Lcom/pikminx/helper/PostcardMatcher$Page;

.field public static final enum PIKMIN_SELECTION:Lcom/pikminx/helper/PostcardMatcher$Page;

.field public static final enum POSTCARD_RECEIVED:Lcom/pikminx/helper/PostcardMatcher$Page;

.field public static final enum UNKNOWN:Lcom/pikminx/helper/PostcardMatcher$Page;

.field public static final enum WARNING:Lcom/pikminx/helper/PostcardMatcher$Page;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PostcardMatcher$Page;
    .locals 7

    .line 14
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->MAP:Lcom/pikminx/helper/PostcardMatcher$Page;

    sget-object v1, Lcom/pikminx/helper/PostcardMatcher$Page;->FLOWER_DETAIL:Lcom/pikminx/helper/PostcardMatcher$Page;

    sget-object v2, Lcom/pikminx/helper/PostcardMatcher$Page;->WARNING:Lcom/pikminx/helper/PostcardMatcher$Page;

    sget-object v3, Lcom/pikminx/helper/PostcardMatcher$Page;->PETAL_SELECTION:Lcom/pikminx/helper/PostcardMatcher$Page;

    sget-object v4, Lcom/pikminx/helper/PostcardMatcher$Page;->PIKMIN_SELECTION:Lcom/pikminx/helper/PostcardMatcher$Page;

    sget-object v5, Lcom/pikminx/helper/PostcardMatcher$Page;->POSTCARD_RECEIVED:Lcom/pikminx/helper/PostcardMatcher$Page;

    sget-object v6, Lcom/pikminx/helper/PostcardMatcher$Page;->UNKNOWN:Lcom/pikminx/helper/PostcardMatcher$Page;

    filled-new-array/range {v0 .. v6}, [Lcom/pikminx/helper/PostcardMatcher$Page;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$Page;

    const-string v1, "MAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->MAP:Lcom/pikminx/helper/PostcardMatcher$Page;

    .line 16
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$Page;

    const-string v1, "FLOWER_DETAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->FLOWER_DETAIL:Lcom/pikminx/helper/PostcardMatcher$Page;

    .line 17
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$Page;

    const-string v1, "WARNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->WARNING:Lcom/pikminx/helper/PostcardMatcher$Page;

    .line 18
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$Page;

    const-string v1, "PETAL_SELECTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->PETAL_SELECTION:Lcom/pikminx/helper/PostcardMatcher$Page;

    .line 19
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$Page;

    const-string v1, "PIKMIN_SELECTION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->PIKMIN_SELECTION:Lcom/pikminx/helper/PostcardMatcher$Page;

    .line 20
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$Page;

    const-string v1, "POSTCARD_RECEIVED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->POSTCARD_RECEIVED:Lcom/pikminx/helper/PostcardMatcher$Page;

    .line 21
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$Page;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->UNKNOWN:Lcom/pikminx/helper/PostcardMatcher$Page;

    .line 14
    invoke-static {}, Lcom/pikminx/helper/PostcardMatcher$Page;->$values()[Lcom/pikminx/helper/PostcardMatcher$Page;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->$VALUES:[Lcom/pikminx/helper/PostcardMatcher$Page;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$Page;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/pikminx/helper/PostcardMatcher$Page;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PostcardMatcher$Page;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PostcardMatcher$Page;
    .locals 1

    .line 14
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->$VALUES:[Lcom/pikminx/helper/PostcardMatcher$Page;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PostcardMatcher$Page;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PostcardMatcher$Page;

    return-object v0
.end method
