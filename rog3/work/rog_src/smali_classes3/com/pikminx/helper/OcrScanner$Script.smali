.class final enum Lcom/pikminx/helper/OcrScanner$Script;
.super Ljava/lang/Enum;
.source "OcrScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/OcrScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Script"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/OcrScanner$Script;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/OcrScanner$Script;

.field public static final enum CHINESE:Lcom/pikminx/helper/OcrScanner$Script;

.field public static final enum DEVANAGARI:Lcom/pikminx/helper/OcrScanner$Script;

.field public static final enum JAPANESE:Lcom/pikminx/helper/OcrScanner$Script;

.field public static final enum KOREAN:Lcom/pikminx/helper/OcrScanner$Script;

.field public static final enum LATIN:Lcom/pikminx/helper/OcrScanner$Script;


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/OcrScanner$Script;
    .locals 5

    .line 34
    sget-object v0, Lcom/pikminx/helper/OcrScanner$Script;->LATIN:Lcom/pikminx/helper/OcrScanner$Script;

    sget-object v1, Lcom/pikminx/helper/OcrScanner$Script;->CHINESE:Lcom/pikminx/helper/OcrScanner$Script;

    sget-object v2, Lcom/pikminx/helper/OcrScanner$Script;->DEVANAGARI:Lcom/pikminx/helper/OcrScanner$Script;

    sget-object v3, Lcom/pikminx/helper/OcrScanner$Script;->JAPANESE:Lcom/pikminx/helper/OcrScanner$Script;

    sget-object v4, Lcom/pikminx/helper/OcrScanner$Script;->KOREAN:Lcom/pikminx/helper/OcrScanner$Script;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/pikminx/helper/OcrScanner$Script;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/pikminx/helper/OcrScanner$Script;

    const-string v1, "LATIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OcrScanner$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OcrScanner$Script;->LATIN:Lcom/pikminx/helper/OcrScanner$Script;

    .line 36
    new-instance v0, Lcom/pikminx/helper/OcrScanner$Script;

    const-string v1, "CHINESE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OcrScanner$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OcrScanner$Script;->CHINESE:Lcom/pikminx/helper/OcrScanner$Script;

    .line 37
    new-instance v0, Lcom/pikminx/helper/OcrScanner$Script;

    const-string v1, "DEVANAGARI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OcrScanner$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OcrScanner$Script;->DEVANAGARI:Lcom/pikminx/helper/OcrScanner$Script;

    .line 38
    new-instance v0, Lcom/pikminx/helper/OcrScanner$Script;

    const-string v1, "JAPANESE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OcrScanner$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OcrScanner$Script;->JAPANESE:Lcom/pikminx/helper/OcrScanner$Script;

    .line 39
    new-instance v0, Lcom/pikminx/helper/OcrScanner$Script;

    const-string v1, "KOREAN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pikminx/helper/OcrScanner$Script;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pikminx/helper/OcrScanner$Script;->KOREAN:Lcom/pikminx/helper/OcrScanner$Script;

    .line 34
    invoke-static {}, Lcom/pikminx/helper/OcrScanner$Script;->$values()[Lcom/pikminx/helper/OcrScanner$Script;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/OcrScanner$Script;->$VALUES:[Lcom/pikminx/helper/OcrScanner$Script;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/OcrScanner$Script;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/pikminx/helper/OcrScanner$Script;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/OcrScanner$Script;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/OcrScanner$Script;
    .locals 1

    .line 34
    sget-object v0, Lcom/pikminx/helper/OcrScanner$Script;->$VALUES:[Lcom/pikminx/helper/OcrScanner$Script;

    invoke-virtual {v0}, [Lcom/pikminx/helper/OcrScanner$Script;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/OcrScanner$Script;

    return-object v0
.end method
