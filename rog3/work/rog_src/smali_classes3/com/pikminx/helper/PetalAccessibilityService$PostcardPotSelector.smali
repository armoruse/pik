.class final Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;
.super Landroid/widget/LinearLayout;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostcardPotSelector"
.end annotation


# instance fields
.field private final colorButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private preferredName:Ljava/lang/String;

.field private selectedColor:Lcom/pikminx/helper/PostcardPotCatalog$Color;

.field private final spinner:Landroid/widget/Spinner;

.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;


# direct methods
.method public static synthetic $r8$lambda$SwQl_s8Gbd_9vT93hKdEaa12z4o(Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;Lcom/pikminx/helper/PostcardPotCatalog$Color;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->lambda$new$0(Lcom/pikminx/helper/PostcardPotCatalog$Color;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;)V
    .locals 9
    .param p2, "selectedName"    # Ljava/lang/String;

    .line 7651
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7652
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->colorButtons:Ljava/util/List;

    .line 7653
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->setOrientation(I)V

    .line 7654
    invoke-static {p2}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->preferredName:Ljava/lang/String;

    .line 7655
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->preferredName:Ljava/lang/String;

    invoke-static {v0}, Lcom/pikminx/helper/PostcardPotCatalog;->colorOf(Ljava/lang/String;)Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->selectedColor:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    .line 7656
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->selectedColor:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    if-nez v0, :cond_0

    .line 7657
    sget-object v0, Lcom/pikminx/helper/PostcardPotCatalog$Color;->WHITE:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->selectedColor:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    .line 7660
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7661
    .local v0, "colors":Landroid/widget/LinearLayout;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7662
    invoke-static {}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->values()[Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v1

    .line 7663
    .local v1, "values":[Lcom/pikminx/helper/PostcardPotCatalog$Color;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    array-length v3, v1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 7664
    aget-object v3, v1, v2

    .line 7665
    .local v3, "color":Lcom/pikminx/helper/PostcardPotCatalog$Color;
    invoke-virtual {v3}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moverlayButton(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    .line 7666
    .local v5, "button":Landroid/widget/Button;
    sget v6, Lcom/pikminx/helper/R$string;->overlay_postcard_petal_color_description:I

    .line 7668
    invoke-virtual {v3}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->label()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 7666
    invoke-virtual {p1, v6, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7669
    new-instance v6, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3}, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;Lcom/pikminx/helper/PostcardPotCatalog$Color;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7670
    iget-object v6, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->colorButtons:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7671
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x2e

    invoke-static {p1, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v4, v6

    .line 7672
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-lez v2, :cond_1

    .line 7673
    const/4 v6, 0x4

    invoke-static {p1, v6}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 7675
    :cond_1
    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7663
    .end local v3    # "color":Lcom/pikminx/helper/PostcardPotCatalog$Color;
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "button":Landroid/widget/Button;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7677
    .end local v2    # "index":I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->addView(Landroid/view/View;)V

    .line 7679
    new-instance v2, Landroid/widget/Spinner;

    invoke-direct {v2, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->spinner:Landroid/widget/Spinner;

    .line 7680
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->spinner:Landroid/widget/Spinner;

    const/16 v3, 0x30

    invoke-static {p1, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setMinimumHeight(I)V

    .line 7681
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->spinner:Landroid/widget/Spinner;

    const/16 v3, 0x8

    invoke-static {p1, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v5

    invoke-static {p1, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v6

    invoke-virtual {v2, v5, v4, v6, v4}, Landroid/widget/Spinner;->setPadding(IIII)V

    .line 7682
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->spinner:Landroid/widget/Spinner;

    .line 7683
    const/16 v4, 0xfa

    const/16 v5, 0xfc

    const/16 v6, 0xf9

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_BORDER()I

    move-result v5

    .line 7682
    const/16 v6, 0xa

    invoke-static {p1, v4, v5, v6}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mroundedBackground(Lcom/pikminx/helper/PetalAccessibilityService;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7684
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->spinner:Landroid/widget/Spinner;

    sget v4, Lcom/pikminx/helper/R$string;->overlay_postcard_petal_pot_label:I

    invoke-virtual {p1, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7685
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 7686
    const/16 v4, 0x32

    invoke-static {p1, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7687
    .local v2, "spinnerParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 7688
    iget-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7689
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->refresh()V

    .line 7690
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/pikminx/helper/PostcardPotCatalog$Color;Landroid/view/View;)V
    .locals 0
    .param p1, "color"    # Lcom/pikminx/helper/PostcardPotCatalog$Color;
    .param p2, "view"    # Landroid/view/View;

    .line 7669
    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->selectColor(Lcom/pikminx/helper/PostcardPotCatalog$Color;)V

    return-void
.end method

.method private potColorSurface(Lcom/pikminx/helper/PostcardPotCatalog$Color;)I
    .locals 3
    .param p1, "color"    # Lcom/pikminx/helper/PostcardPotCatalog$Color;

    .line 7748
    sget-object v0, Lcom/pikminx/helper/PetalAccessibilityService$14;->$SwitchMap$com$pikminx$helper$PostcardPotCatalog$Color:[I

    invoke-virtual {p1}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xff

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {v0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw v0

    .line 7752
    :pswitch_0
    const/16 v0, 0xeb

    const/16 v2, 0xf4

    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    .line 7751
    :pswitch_1
    const/16 v0, 0xed

    invoke-static {v1, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    .line 7750
    :pswitch_2
    const/16 v0, 0xf9

    const/16 v2, 0xdb

    invoke-static {v1, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    .line 7749
    :pswitch_3
    const/4 v0, -0x1

    .line 7748
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refresh()V
    .locals 5

    .line 7711
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->selectedColor:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    invoke-static {v0}, Lcom/pikminx/helper/PostcardPotCatalog;->namesForColor(Lcom/pikminx/helper/PostcardPotCatalog$Color;)Ljava/util/List;

    move-result-object v0

    .line 7712
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7713
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v2, Lcom/pikminx/helper/R$string;->overlay_postcard_no_saved_pots_for_color:I

    invoke-virtual {v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 7714
    :cond_0
    move-object v1, v0

    :goto_0
    nop

    .line 7715
    .local v1, "display":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7719
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 7720
    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 7721
    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->spinner:Landroid/widget/Spinner;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 7722
    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->preferredName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 7723
    .local v3, "preferredIndex":I
    if-ltz v3, :cond_1

    .line 7724
    iget-object v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 7726
    :cond_1
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->refreshColorStyles()V

    .line 7727
    return-void
.end method

.method private refreshColorStyles()V
    .locals 9

    .line 7730
    invoke-static {}, Lcom/pikminx/helper/PostcardPotCatalog$Color;->values()[Lcom/pikminx/helper/PostcardPotCatalog$Color;

    move-result-object v0

    .line 7731
    .local v0, "values":[Lcom/pikminx/helper/PostcardPotCatalog$Color;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->colorButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 7732
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->colorButtons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 7733
    .local v2, "button":Landroid/widget/Button;
    aget-object v3, v0, v1

    .line 7734
    .local v3, "color":Lcom/pikminx/helper/PostcardPotCatalog$Color;
    iget-object v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->selectedColor:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v5

    .line 7735
    .local v4, "selected":Z
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 7736
    iget-object v6, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    if-eqz v4, :cond_1

    .line 7737
    sget v7, Lcom/pikminx/helper/R$string;->overlay_tab_selected:I

    goto :goto_2

    .line 7738
    :cond_1
    sget v7, Lcom/pikminx/helper/R$string;->overlay_tab_not_selected:I

    .line 7736
    :goto_2
    invoke-virtual {v6, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 7739
    if-eqz v4, :cond_2

    const/4 v6, -0x1

    goto :goto_3

    :cond_2
    const/16 v6, 0x4a

    const/16 v7, 0x38

    const/16 v8, 0x2d

    invoke-static {v8, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 7740
    iget-object v6, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7741
    if-eqz v4, :cond_3

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_GREEN()I

    move-result v7

    goto :goto_4

    :cond_3
    invoke-direct {p0, v3}, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->potColorSurface(Lcom/pikminx/helper/PostcardPotCatalog$Color;)I

    move-result v7

    .line 7742
    :goto_4
    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_BORDER()I

    move-result v5

    .line 7740
    :goto_5
    const/16 v8, 0xb

    invoke-static {v6, v7, v5, v8}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mroundedBackground(Lcom/pikminx/helper/PetalAccessibilityService;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7731
    .end local v2    # "button":Landroid/widget/Button;
    .end local v3    # "color":Lcom/pikminx/helper/PostcardPotCatalog$Color;
    .end local v4    # "selected":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7745
    .end local v1    # "index":I
    :cond_5
    return-void
.end method

.method private selectColor(Lcom/pikminx/helper/PostcardPotCatalog$Color;)V
    .locals 1
    .param p1, "color"    # Lcom/pikminx/helper/PostcardPotCatalog$Color;

    .line 7705
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->selectedColor:Lcom/pikminx/helper/PostcardPotCatalog$Color;

    .line 7706
    const-string v0, ""

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->preferredName:Ljava/lang/String;

    .line 7707
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->refresh()V

    .line 7708
    return-void
.end method


# virtual methods
.method value()Ljava/lang/String;
    .locals 5

    .line 7693
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 7694
    .local v0, "selected":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 7695
    const/4 v1, 0x0

    goto :goto_0

    .line 7696
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pikminx/helper/PostcardPotCatalog;->canonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 7697
    .local v1, "canonical":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 7701
    return-object v1

    .line 7698
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$PostcardPotSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v4, Lcom/pikminx/helper/R$string;->overlay_postcard_no_saved_pots_for_color:I

    .line 7699
    invoke-virtual {v3, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
