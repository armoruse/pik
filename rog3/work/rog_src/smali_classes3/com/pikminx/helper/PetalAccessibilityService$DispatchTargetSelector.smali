.class final Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;
.super Landroid/widget/LinearLayout;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DispatchTargetSelector"
.end annotation


# instance fields
.field private final both:Landroid/widget/Button;

.field private final fruit:Landroid/widget/Button;

.field private final pot:Landroid/widget/Button;

.field private selected:Lcom/pikminx/helper/ExpeditionTargetMode;

.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;


# direct methods
.method public static synthetic $r8$lambda$MEwbnFf-G2nd2bVh-j7X3BP1bsg(Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$e0xXf__RQxmVSioeQ2_5C5x-Jbw(Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$k5Jihb5JJyRy312tdtPEVsmJsOM(Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->lambda$new$2()V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/ExpeditionTargetMode;)V
    .locals 3
    .param p2, "initial"    # Lcom/pikminx/helper/ExpeditionTargetMode;

    .line 7357
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7358
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7359
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->setGravity(I)V

    .line 7360
    if-nez p2, :cond_0

    sget-object v0, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT_AND_POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->selected:Lcom/pikminx/helper/ExpeditionTargetMode;

    .line 7361
    sget v0, Lcom/pikminx/helper/R$string;->overlay_reward_target_fruit:I

    new-instance v1, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;)V

    invoke-static {p1, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moptionButton(Lcom/pikminx/helper/PetalAccessibilityService;ILjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->fruit:Landroid/widget/Button;

    .line 7363
    sget v0, Lcom/pikminx/helper/R$string;->overlay_reward_target_pot:I

    new-instance v1, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector$$ExternalSyntheticLambda1;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;)V

    invoke-static {p1, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moptionButton(Lcom/pikminx/helper/PetalAccessibilityService;ILjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->pot:Landroid/widget/Button;

    .line 7365
    sget v0, Lcom/pikminx/helper/R$string;->overlay_reward_target_both:I

    new-instance v1, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector$$ExternalSyntheticLambda2;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;)V

    invoke-static {p1, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moptionButton(Lcom/pikminx/helper/PetalAccessibilityService;ILjava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->both:Landroid/widget/Button;

    .line 7367
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->fruit:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdispatchOptionParams(Lcom/pikminx/helper/PetalAccessibilityService;Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7368
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->pot:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdispatchOptionParams(Lcom/pikminx/helper/PetalAccessibilityService;Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7369
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->both:Landroid/widget/Button;

    invoke-static {p1, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdispatchOptionParams(Lcom/pikminx/helper/PetalAccessibilityService;Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7370
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->refresh()V

    .line 7371
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 7362
    sget-object v0, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT:Lcom/pikminx/helper/ExpeditionTargetMode;

    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->select(Lcom/pikminx/helper/ExpeditionTargetMode;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 7364
    sget-object v0, Lcom/pikminx/helper/ExpeditionTargetMode;->POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->select(Lcom/pikminx/helper/ExpeditionTargetMode;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 7366
    sget-object v0, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT_AND_POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->select(Lcom/pikminx/helper/ExpeditionTargetMode;)V

    return-void
.end method

.method private refresh()V
    .locals 6

    .line 7383
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->fruit:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->selected:Lcom/pikminx/helper/ExpeditionTargetMode;

    sget-object v3, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT:Lcom/pikminx/helper/ExpeditionTargetMode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mstyleDispatchOption(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/widget/Button;Z)V

    .line 7384
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->pot:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->selected:Lcom/pikminx/helper/ExpeditionTargetMode;

    sget-object v3, Lcom/pikminx/helper/ExpeditionTargetMode;->POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mstyleDispatchOption(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/widget/Button;Z)V

    .line 7385
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->both:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->selected:Lcom/pikminx/helper/ExpeditionTargetMode;

    sget-object v3, Lcom/pikminx/helper/ExpeditionTargetMode;->FRUIT_AND_POT:Lcom/pikminx/helper/ExpeditionTargetMode;

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    invoke-static {v0, v1, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mstyleDispatchOption(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/widget/Button;Z)V

    .line 7386
    return-void
.end method

.method private select(Lcom/pikminx/helper/ExpeditionTargetMode;)V
    .locals 0
    .param p1, "value"    # Lcom/pikminx/helper/ExpeditionTargetMode;

    .line 7378
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->selected:Lcom/pikminx/helper/ExpeditionTargetMode;

    .line 7379
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->refresh()V

    .line 7380
    return-void
.end method


# virtual methods
.method value()Lcom/pikminx/helper/ExpeditionTargetMode;
    .locals 1

    .line 7374
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchTargetSelector;->selected:Lcom/pikminx/helper/ExpeditionTargetMode;

    return-object v0
.end method
