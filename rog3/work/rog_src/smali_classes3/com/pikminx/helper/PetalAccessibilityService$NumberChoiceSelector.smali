.class final Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;
.super Landroid/widget/LinearLayout;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NumberChoiceSelector"
.end annotation


# instance fields
.field private final choices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private final label:Ljava/lang/String;

.field private selectedValue:I

.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;


# direct methods
.method public static synthetic $r8$lambda$fOBr_4FmNpcLAR9VOGMFuvKYAfw(Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->lambda$new$0(ILandroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;III)V
    .locals 7
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "initialValue"    # I
    .param p4, "minimum"    # I
    .param p5, "maximum"    # I

    .line 7593
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7594
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->choices:Ljava/util/List;

    .line 7595
    iput-object p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->label:Ljava/lang/String;

    .line 7596
    invoke-static {p5, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->selectedValue:I

    .line 7597
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->setGravity(I)V

    .line 7598
    move v0, p4

    .local v0, "value":I
    :goto_0
    if-gt v0, p5, :cond_1

    .line 7599
    move v1, v0

    .line 7600
    .local v1, "option":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moverlayButton(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 7601
    .local v2, "button":Landroid/widget/Button;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7602
    new-instance v3, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7603
    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->choices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7604
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x30

    invoke-static {p1, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 7605
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-le v0, p4, :cond_0

    .line 7606
    const/4 v4, 0x4

    invoke-static {p1, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 7608
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7598
    .end local v1    # "option":I
    .end local v2    # "button":Landroid/widget/Button;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7610
    .end local v0    # "value":I
    :cond_1
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->refreshChoiceStyles()V

    .line 7611
    return-void
.end method

.method private synthetic lambda$new$0(ILandroid/view/View;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 7602
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->select(IZ)V

    return-void
.end method

.method private refreshChoiceStyles()V
    .locals 9

    .line 7627
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->choices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 7628
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->choices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 7629
    .local v1, "button":Landroid/widget/Button;
    add-int/lit8 v2, v0, 0x1

    .line 7630
    .local v2, "value":I
    iget v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->selectedValue:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v4

    .line 7631
    .local v3, "selected":Z
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 7632
    iget-object v5, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    if-eqz v3, :cond_1

    .line 7633
    sget v6, Lcom/pikminx/helper/R$string;->overlay_tab_selected:I

    goto :goto_2

    .line 7634
    :cond_1
    sget v6, Lcom/pikminx/helper/R$string;->overlay_tab_not_selected:I

    .line 7632
    :goto_2
    invoke-virtual {v5, v6}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 7635
    if-eqz v3, :cond_2

    const/4 v5, -0x1

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_GREEN()I

    move-result v5

    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 7636
    iget-object v5, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7637
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_GREEN()I

    move-result v6

    goto :goto_4

    :cond_3
    const/16 v6, 0xf5

    const/16 v7, 0xef

    const/16 v8, 0xf1

    invoke-static {v8, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    .line 7638
    :goto_4
    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_BORDER()I

    move-result v4

    .line 7636
    :goto_5
    const/16 v7, 0xb

    invoke-static {v5, v6, v4, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mroundedBackground(Lcom/pikminx/helper/PetalAccessibilityService;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7627
    .end local v1    # "button":Landroid/widget/Button;
    .end local v2    # "value":I
    .end local v3    # "selected":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7641
    .end local v0    # "index":I
    :cond_5
    return-void
.end method

.method private select(IZ)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "announce"    # Z

    .line 7618
    iput p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->selectedValue:I

    .line 7619
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->refreshChoiceStyles()V

    .line 7620
    if-eqz p2, :cond_0

    .line 7621
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v1, Lcom/pikminx/helper/R$string;->overlay_value_description:I

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->label:Ljava/lang/String;

    iget v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->selectedValue:I

    .line 7622
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 7621
    invoke-virtual {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 7624
    :cond_0
    return-void
.end method


# virtual methods
.method valueText()Ljava/lang/String;
    .locals 1

    .line 7614
    iget v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$NumberChoiceSelector;->selectedValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
