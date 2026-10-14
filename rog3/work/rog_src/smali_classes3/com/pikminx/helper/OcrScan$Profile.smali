.class final enum Lcom/pikminx/helper/OcrScan$Profile;
.super Ljava/lang/Enum;
.source "OcrScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/OcrScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Profile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pikminx/helper/OcrScan$Profile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pikminx/helper/OcrScan$Profile;

.field public static final enum DISPATCH_LIST:Lcom/pikminx/helper/OcrScan$Profile;

.field public static final enum FULL_CHINESE:Lcom/pikminx/helper/OcrScan$Profile;

.field public static final enum FULL_MULTILINGUAL:Lcom/pikminx/helper/OcrScan$Profile;

.field public static final enum PETAL_LIST:Lcom/pikminx/helper/OcrScan$Profile;


# instance fields
.field private final bottomFraction:F

.field private final leftFraction:F

.field private final maximumAnalysisWidth:I

.field private final minimumAnalysisWidth:I

.field private final rightFraction:F

.field private final roiBasis:Lcom/pikminx/helper/OcrScan$RoiBasis;

.field private final scriptMode:Lcom/pikminx/helper/OcrScan$ScriptMode;

.field private final topFraction:F


# direct methods
.method private static synthetic $values()[Lcom/pikminx/helper/OcrScan$Profile;
    .locals 4

    .line 13
    sget-object v0, Lcom/pikminx/helper/OcrScan$Profile;->FULL_MULTILINGUAL:Lcom/pikminx/helper/OcrScan$Profile;

    sget-object v1, Lcom/pikminx/helper/OcrScan$Profile;->FULL_CHINESE:Lcom/pikminx/helper/OcrScan$Profile;

    sget-object v2, Lcom/pikminx/helper/OcrScan$Profile;->DISPATCH_LIST:Lcom/pikminx/helper/OcrScan$Profile;

    sget-object v3, Lcom/pikminx/helper/OcrScan$Profile;->PETAL_LIST:Lcom/pikminx/helper/OcrScan$Profile;

    filled-new-array {v0, v1, v2, v3}, [Lcom/pikminx/helper/OcrScan$Profile;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetbottomFraction(Lcom/pikminx/helper/OcrScan$Profile;)F
    .locals 0

    iget p0, p0, Lcom/pikminx/helper/OcrScan$Profile;->bottomFraction:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetleftFraction(Lcom/pikminx/helper/OcrScan$Profile;)F
    .locals 0

    iget p0, p0, Lcom/pikminx/helper/OcrScan$Profile;->leftFraction:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmaximumAnalysisWidth(Lcom/pikminx/helper/OcrScan$Profile;)I
    .locals 0

    iget p0, p0, Lcom/pikminx/helper/OcrScan$Profile;->maximumAnalysisWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetminimumAnalysisWidth(Lcom/pikminx/helper/OcrScan$Profile;)I
    .locals 0

    iget p0, p0, Lcom/pikminx/helper/OcrScan$Profile;->minimumAnalysisWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrightFraction(Lcom/pikminx/helper/OcrScan$Profile;)F
    .locals 0

    iget p0, p0, Lcom/pikminx/helper/OcrScan$Profile;->rightFraction:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetroiBasis(Lcom/pikminx/helper/OcrScan$Profile;)Lcom/pikminx/helper/OcrScan$RoiBasis;
    .locals 0

    iget-object p0, p0, Lcom/pikminx/helper/OcrScan$Profile;->roiBasis:Lcom/pikminx/helper/OcrScan$RoiBasis;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopFraction(Lcom/pikminx/helper/OcrScan$Profile;)F
    .locals 0

    iget p0, p0, Lcom/pikminx/helper/OcrScan$Profile;->topFraction:F

    return p0
.end method

.method static constructor <clinit>()V
    .locals 23

    .line 14
    new-instance v11, Lcom/pikminx/helper/OcrScan$Profile;

    const-string v1, "FULL_MULTILINGUAL"

    const/4 v2, 0x0

    sget-object v3, Lcom/pikminx/helper/OcrScan$ScriptMode;->MULTILINGUAL:Lcom/pikminx/helper/OcrScan$ScriptMode;

    sget-object v4, Lcom/pikminx/helper/OcrScan$RoiBasis;->SCREENSHOT:Lcom/pikminx/helper/OcrScan$RoiBasis;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x438

    const/16 v10, 0x5a0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/pikminx/helper/OcrScan$Profile;-><init>(Ljava/lang/String;ILcom/pikminx/helper/OcrScan$ScriptMode;Lcom/pikminx/helper/OcrScan$RoiBasis;FFFFII)V

    sput-object v11, Lcom/pikminx/helper/OcrScan$Profile;->FULL_MULTILINGUAL:Lcom/pikminx/helper/OcrScan$Profile;

    .line 16
    new-instance v0, Lcom/pikminx/helper/OcrScan$Profile;

    const-string v13, "FULL_CHINESE"

    const/4 v14, 0x1

    sget-object v15, Lcom/pikminx/helper/OcrScan$ScriptMode;->CHINESE:Lcom/pikminx/helper/OcrScan$ScriptMode;

    sget-object v16, Lcom/pikminx/helper/OcrScan$RoiBasis;->SCREENSHOT:Lcom/pikminx/helper/OcrScan$RoiBasis;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x438

    const/16 v22, 0x5a0

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/pikminx/helper/OcrScan$Profile;-><init>(Ljava/lang/String;ILcom/pikminx/helper/OcrScan$ScriptMode;Lcom/pikminx/helper/OcrScan$RoiBasis;FFFFII)V

    sput-object v0, Lcom/pikminx/helper/OcrScan$Profile;->FULL_CHINESE:Lcom/pikminx/helper/OcrScan$Profile;

    .line 18
    new-instance v0, Lcom/pikminx/helper/OcrScan$Profile;

    const-string v2, "DISPATCH_LIST"

    const/4 v3, 0x2

    sget-object v4, Lcom/pikminx/helper/OcrScan$ScriptMode;->CHINESE:Lcom/pikminx/helper/OcrScan$ScriptMode;

    sget-object v5, Lcom/pikminx/helper/OcrScan$RoiBasis;->TARGET_WINDOW:Lcom/pikminx/helper/OcrScan$RoiBasis;

    const v7, 0x3e3851ec    # 0.18f

    const v9, 0x3f666666    # 0.9f

    const/16 v11, 0x870

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/pikminx/helper/OcrScan$Profile;-><init>(Ljava/lang/String;ILcom/pikminx/helper/OcrScan$ScriptMode;Lcom/pikminx/helper/OcrScan$RoiBasis;FFFFII)V

    sput-object v0, Lcom/pikminx/helper/OcrScan$Profile;->DISPATCH_LIST:Lcom/pikminx/helper/OcrScan$Profile;

    .line 20
    new-instance v0, Lcom/pikminx/helper/OcrScan$Profile;

    const-string v13, "PETAL_LIST"

    const/4 v14, 0x3

    sget-object v15, Lcom/pikminx/helper/OcrScan$ScriptMode;->CHINESE:Lcom/pikminx/helper/OcrScan$ScriptMode;

    sget-object v16, Lcom/pikminx/helper/OcrScan$RoiBasis;->TARGET_WINDOW:Lcom/pikminx/helper/OcrScan$RoiBasis;

    const v18, 0x3ee147ae    # 0.44f

    const v20, 0x3f75c28f    # 0.96f

    const/16 v21, 0x5a0

    const/16 v22, 0x870

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/pikminx/helper/OcrScan$Profile;-><init>(Ljava/lang/String;ILcom/pikminx/helper/OcrScan$ScriptMode;Lcom/pikminx/helper/OcrScan$RoiBasis;FFFFII)V

    sput-object v0, Lcom/pikminx/helper/OcrScan$Profile;->PETAL_LIST:Lcom/pikminx/helper/OcrScan$Profile;

    .line 13
    invoke-static {}, Lcom/pikminx/helper/OcrScan$Profile;->$values()[Lcom/pikminx/helper/OcrScan$Profile;

    move-result-object v0

    sput-object v0, Lcom/pikminx/helper/OcrScan$Profile;->$VALUES:[Lcom/pikminx/helper/OcrScan$Profile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/pikminx/helper/OcrScan$ScriptMode;Lcom/pikminx/helper/OcrScan$RoiBasis;FFFFII)V
    .locals 0
    .param p3, "scriptMode"    # Lcom/pikminx/helper/OcrScan$ScriptMode;
    .param p4, "roiBasis"    # Lcom/pikminx/helper/OcrScan$RoiBasis;
    .param p5, "leftFraction"    # F
    .param p6, "topFraction"    # F
    .param p7, "rightFraction"    # F
    .param p8, "bottomFraction"    # F
    .param p9, "minimumAnalysisWidth"    # I
    .param p10, "maximumAnalysisWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pikminx/helper/OcrScan$ScriptMode;",
            "Lcom/pikminx/helper/OcrScan$RoiBasis;",
            "FFFFII)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/pikminx/helper/OcrScan$Profile;->scriptMode:Lcom/pikminx/helper/OcrScan$ScriptMode;

    .line 42
    iput-object p4, p0, Lcom/pikminx/helper/OcrScan$Profile;->roiBasis:Lcom/pikminx/helper/OcrScan$RoiBasis;

    .line 43
    iput p5, p0, Lcom/pikminx/helper/OcrScan$Profile;->leftFraction:F

    .line 44
    iput p6, p0, Lcom/pikminx/helper/OcrScan$Profile;->topFraction:F

    .line 45
    iput p7, p0, Lcom/pikminx/helper/OcrScan$Profile;->rightFraction:F

    .line 46
    iput p8, p0, Lcom/pikminx/helper/OcrScan$Profile;->bottomFraction:F

    .line 47
    iput p9, p0, Lcom/pikminx/helper/OcrScan$Profile;->minimumAnalysisWidth:I

    .line 48
    iput p10, p0, Lcom/pikminx/helper/OcrScan$Profile;->maximumAnalysisWidth:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pikminx/helper/OcrScan$Profile;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/pikminx/helper/OcrScan$Profile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pikminx/helper/OcrScan$Profile;

    return-object v0
.end method

.method public static values()[Lcom/pikminx/helper/OcrScan$Profile;
    .locals 1

    .line 13
    sget-object v0, Lcom/pikminx/helper/OcrScan$Profile;->$VALUES:[Lcom/pikminx/helper/OcrScan$Profile;

    invoke-virtual {v0}, [Lcom/pikminx/helper/OcrScan$Profile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pikminx/helper/OcrScan$Profile;

    return-object v0
.end method


# virtual methods
.method roiBasis()Lcom/pikminx/helper/OcrScan$RoiBasis;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Profile;->roiBasis:Lcom/pikminx/helper/OcrScan$RoiBasis;

    return-object v0
.end method

.method scriptMode()Lcom/pikminx/helper/OcrScan$ScriptMode;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/pikminx/helper/OcrScan$Profile;->scriptMode:Lcom/pikminx/helper/OcrScan$ScriptMode;

    return-object v0
.end method
