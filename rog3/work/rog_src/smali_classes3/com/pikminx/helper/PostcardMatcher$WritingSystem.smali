.class final enum Lcom/pikminx/helper/PostcardMatcher$WritingSystem;
.super Ljava/lang/Enum;
.source "PostcardMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PostcardMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WritingSystem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/PostcardMatcher$WritingSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

.field public static final enum HAN:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

.field public static final enum KANA:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

.field public static final enum LATIN:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

.field public static final enum NONE:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

.field public static final enum OTHER:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/PostcardMatcher$WritingSystem;
    .locals 5

    .line 891
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->NONE:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    sget-object v1, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->HAN:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    sget-object v2, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->KANA:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    sget-object v3, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->LATIN:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    sget-object v4, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->OTHER:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 892
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->NONE:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    .line 893
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    const-string v1, "HAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->HAN:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    .line 894
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    const-string v1, "KANA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->KANA:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    .line 895
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    const-string v1, "LATIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->LATIN:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    .line 896
    new-instance v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    const-string v1, "OTHER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->OTHER:Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    .line 891
    invoke-static {}, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->$values()[Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->$VALUES:[Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 891
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/PostcardMatcher$WritingSystem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 891
    const-class v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/PostcardMatcher$WritingSystem;
    .locals 1

    .line 891
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->$VALUES:[Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    invoke-virtual {v0}, [Lcom/pikminx/helper/PostcardMatcher$WritingSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/PostcardMatcher$WritingSystem;

    return-object v0
.end method
