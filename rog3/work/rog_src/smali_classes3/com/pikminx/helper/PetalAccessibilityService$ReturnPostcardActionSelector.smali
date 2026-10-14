.class final Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;
.super Landroid/widget/LinearLayout;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReturnPostcardActionSelector"
.end annotation


# instance fields
.field private final discard:Landroid/widget/Button;

.field private final receive:Landroid/widget/Button;

.field private receiveSelected:Z

.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;


# direct methods
.method public static synthetic $r8$lambda$NsFTnAsBq0vM4rIaNlKWStNr-1g(Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ONdcLWs_f9rbFW5AsZmfhbFwdlI(Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->lambda$new$0()V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Z)V
    .locals 2
    .param p2, "initialReceive"    # Z

    .line 7322
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7323
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7324
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->setGravity(I)V

    .line 7325
    iput-boolean p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->receiveSelected:Z

    .line 7326
    sget v0, Lcom/pikminx/helper/R$string;->overlay_return_reward_receive:I

    new-instance v1, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;)V

    invoke-static {p1, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moptionButton(Lcom/pikminx/helper/PetalAccessibilityService;ILjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->receive:Landroid/widget/Button;

    .line 7328
    sget v0, Lcom/pikminx/helper/R$string;->overlay_return_reward_discard:I

    new-instance v1, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector$$ExternalSyntheticLambda1;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;)V

    invoke-static {p1, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moptionButton(Lcom/pikminx/helper/PetalAccessibilityService;ILjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->discard:Landroid/widget/Button;

    .line 7330
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->receive:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdispatchOptionParams(Lcom/pikminx/helper/PetalAccessibilityService;Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7331
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->discard:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdispatchOptionParams(Lcom/pikminx/helper/PetalAccessibilityService;Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7332
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->refresh()V

    .line 7333
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 7327
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->select(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 7329
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->select(Z)V

    return-void
.end method

.method private refresh()V
    .locals 3

    .line 7345
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->receive:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->receiveSelected:Z

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mstyleDispatchOption(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/widget/Button;Z)V

    .line 7346
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->discard:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->receiveSelected:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mstyleDispatchOption(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/widget/Button;Z)V

    .line 7347
    return-void
.end method

.method private select(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 7340
    iput-boolean p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->receiveSelected:Z

    .line 7341
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->refresh()V

    .line 7342
    return-void
.end method


# virtual methods
.method receive()Z
    .locals 1

    .line 7336
    iget-boolean v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$ReturnPostcardActionSelector;->receiveSelected:Z

    return v0
.end method
