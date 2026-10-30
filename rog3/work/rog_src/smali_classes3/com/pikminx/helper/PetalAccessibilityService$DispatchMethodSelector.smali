.class final Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;
.super Landroid/widget/LinearLayout;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DispatchMethodSelector"
.end annotation


# instance fields
.field private final automatic:Landroid/widget/Button;

.field private final drag:Landroid/widget/Button;

.field private selected:Lcom/pikminx/helper/DispatchSelectionMethod;

.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;


# direct methods
.method public static synthetic $r8$lambda$I-BpfLLEwlnvNiNfSYIq5lC_FlQ(Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$MNPPG_1SgRNi8aT7SPB06dQwsMc(Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->lambda$new$1()V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/DispatchSelectionMethod;)V
    .locals 2
    .param p2, "initial"    # Lcom/pikminx/helper/DispatchSelectionMethod;

    .line 7395
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7396
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7397
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->setGravity(I)V

    .line 7398
    if-nez p2, :cond_0

    sget-object v0, Lcom/pikminx/helper/DispatchSelectionMethod;->AUTO:Lcom/pikminx/helper/DispatchSelectionMethod;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->selected:Lcom/pikminx/helper/DispatchSelectionMethod;

    .line 7399
    sget v0, Lcom/pikminx/helper/R$string;->overlay_reward_method_auto:I

    new-instance v1, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;)V

    invoke-static {p1, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moptionButton(Lcom/pikminx/helper/PetalAccessibilityService;ILjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->automatic:Landroid/widget/Button;

    .line 7401
    sget v0, Lcom/pikminx/helper/R$string;->overlay_reward_method_drag:I

    new-instance v1, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector$$ExternalSyntheticLambda1;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;)V

    invoke-static {p1, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moptionButton(Lcom/pikminx/helper/PetalAccessibilityService;ILjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->drag:Landroid/widget/Button;

    .line 7403
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->automatic:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdispatchOptionParams(Lcom/pikminx/helper/PetalAccessibilityService;Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7404
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->drag:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdispatchOptionParams(Lcom/pikminx/helper/PetalAccessibilityService;Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7405
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->refresh()V

    .line 7406
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 7400
    sget-object v0, Lcom/pikminx/helper/DispatchSelectionMethod;->AUTO:Lcom/pikminx/helper/DispatchSelectionMethod;

    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->select(Lcom/pikminx/helper/DispatchSelectionMethod;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 7402
    sget-object v0, Lcom/pikminx/helper/DispatchSelectionMethod;->DRAG_12:Lcom/pikminx/helper/DispatchSelectionMethod;

    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->select(Lcom/pikminx/helper/DispatchSelectionMethod;)V

    return-void
.end method

.method private refresh()V
    .locals 6

    .line 7418
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->automatic:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->selected:Lcom/pikminx/helper/DispatchSelectionMethod;

    sget-object v3, Lcom/pikminx/helper/DispatchSelectionMethod;->AUTO:Lcom/pikminx/helper/DispatchSelectionMethod;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mstyleDispatchOption(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/widget/Button;Z)V

    .line 7419
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->drag:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->selected:Lcom/pikminx/helper/DispatchSelectionMethod;

    sget-object v3, Lcom/pikminx/helper/DispatchSelectionMethod;->DRAG_12:Lcom/pikminx/helper/DispatchSelectionMethod;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-static {v0, v1, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mstyleDispatchOption(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/widget/Button;Z)V

    .line 7420
    return-void
.end method

.method private select(Lcom/pikminx/helper/DispatchSelectionMethod;)V
    .locals 0
    .param p1, "value"    # Lcom/pikminx/helper/DispatchSelectionMethod;

    .line 7413
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->selected:Lcom/pikminx/helper/DispatchSelectionMethod;

    .line 7414
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->refresh()V

    .line 7415
    return-void
.end method


# virtual methods
.method value()Lcom/pikminx/helper/DispatchSelectionMethod;
    .locals 1

    .line 7409
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchMethodSelector;->selected:Lcom/pikminx/helper/DispatchSelectionMethod;

    return-object v0
.end method
