.class final Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;
.super Landroid/widget/LinearLayout;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlowerOrderEditor"
.end annotation


# instance fields
.field private final addButton:Landroid/widget/Button;

.field private final addCustomButton:Landroid/widget/Button;

.field private availableFlowers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final colorButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private final customInputField:Landroid/widget/EditText;

.field private final flowerSpinner:Landroid/widget/Spinner;

.field private final nectarLabels:Z

.field private selectedCategoryIndex:I

.field private final selectedRows:Landroid/widget/LinearLayout;

.field private final selection:Lcom/pikminx/helper/PetalSelection;

.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;


# direct methods
.method public static synthetic $r8$lambda$1idB18tCL6M5O5naV99L05do5SQ(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->lambda$addSelectedRow$8(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6PJ9fTe_tlRMV3OAU342Pko95G0(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->lambda$new$3(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7DvCNVH5pz-OUvrMU0A7aUQv5YI(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;Landroid/widget/LinearLayout;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->lambda$new$4(Landroid/widget/LinearLayout;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$A86L2VouTyLFGP_KuUbXnRoXp24(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->lambda$new$0(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HtlZ_D7t0qr-NWhYNjNBmWzk37U(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->lambda$addSelectedRow$6(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MrgqMj8q8e7pO6VjDW5FsDvPK4o(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZbZodPKGxKlmy-42n1vm6X4PdW0(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->lambda$addSelectedRow$7(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qzJn_TmR2arJqMXbtURzSltTj8k(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z0VZq37kT-pipPfNsY2OkcxT6TA(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7775
    .local p2, "flowers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;-><init>(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/util/List;Z)V

    .line 7776
    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/util/List;Z)V
    .locals 16
    .param p3, "nectarLabels"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 7778
    .local p2, "flowers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iput-object v1, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7779
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7765
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->colorButtons:Ljava/util/List;

    .line 7771
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->availableFlowers:Ljava/util/List;

    .line 7780
    iput-boolean v2, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->nectarLabels:Z

    .line 7781
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->setOrientation(I)V

    .line 7782
    new-instance v4, Lcom/pikminx/helper/PetalSelection;

    move-object/from16 v5, p2

    invoke-direct {v4, v5}, Lcom/pikminx/helper/PetalSelection;-><init>(Ljava/util/List;)V

    iput-object v4, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    .line 7784
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selectedRows:Landroid/widget/LinearLayout;

    .line 7785
    iget-object v4, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selectedRows:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7786
    iget-object v3, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selectedRows:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addView(Landroid/view/View;)V

    .line 7788
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7789
    .local v3, "colorRow":Landroid/widget/LinearLayout;
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7790
    invoke-static {}, Lcom/pikminx/helper/PetalCatalog;->categories()Ljava/util/List;

    move-result-object v6

    .line 7791
    .local v6, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/PetalCatalog$Category;>;"
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x2c

    const/4 v11, 0x0

    if-ge v7, v8, :cond_1

    .line 7792
    move v8, v7

    .line 7793
    .local v8, "categoryIndex":I
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/pikminx/helper/PetalCatalog$Category;

    .line 7794
    .local v12, "category":Lcom/pikminx/helper/PetalCatalog$Category;
    invoke-virtual {v12}, Lcom/pikminx/helper/PetalCatalog$Category;->name()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moverlayButton(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v13

    .line 7795
    .local v13, "button":Landroid/widget/Button;
    const/high16 v14, 0x41300000    # 11.0f

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 7796
    sget v14, Lcom/pikminx/helper/R$string;->overlay_flower_color_description:I

    .line 7797
    invoke-virtual {v12}, Lcom/pikminx/helper/PetalCatalog$Category;->name()Ljava/lang/String;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    .line 7796
    invoke-virtual {v1, v14, v15}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7798
    new-instance v14, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda4;

    invoke-direct {v14, v0, v8}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda4;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;I)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7799
    iget-object v14, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->colorButtons:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7800
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v10}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v10

    invoke-direct {v14, v11, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v9, v14

    .line 7801
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-lez v7, :cond_0

    .line 7802
    const/4 v10, 0x4

    invoke-static {v1, v10}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 7804
    :cond_0
    invoke-virtual {v3, v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7791
    .end local v8    # "categoryIndex":I
    .end local v9    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "category":Lcom/pikminx/helper/PetalCatalog$Category;
    .end local v13    # "button":Landroid/widget/Button;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7806
    .end local v7    # "index":I
    :cond_1
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v12, -0x2

    invoke-direct {v7, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7808
    .local v7, "colorParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v13, 0xa

    invoke-static {v1, v13}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v13

    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 7809
    invoke-virtual {v0, v3, v7}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7811
    new-instance v13, Landroid/widget/Spinner;

    invoke-direct {v13, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->flowerSpinner:Landroid/widget/Spinner;

    .line 7812
    iget-object v13, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->flowerSpinner:Landroid/widget/Spinner;

    const/16 v14, 0x30

    invoke-static {v1, v14}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/Spinner;->setMinimumHeight(I)V

    .line 7813
    iget-object v13, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->flowerSpinner:Landroid/widget/Spinner;

    const/16 v15, 0xc

    invoke-static {v1, v15}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v12

    const/16 v9, 0x8

    invoke-static {v1, v9}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v9

    invoke-virtual {v13, v12, v11, v9, v11}, Landroid/widget/Spinner;->setPadding(IIII)V

    .line 7814
    iget-object v9, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->flowerSpinner:Landroid/widget/Spinner;

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_BORDER()I

    move-result v12

    invoke-static {v1, v8, v12, v15}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mroundedBackground(Lcom/pikminx/helper/PetalAccessibilityService;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/Spinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7815
    iget-object v9, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->flowerSpinner:Landroid/widget/Spinner;

    sget v12, Lcom/pikminx/helper/R$string;->overlay_flower_dropdown:I

    invoke-virtual {v1, v12}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7816
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 7817
    const/16 v12, 0x34

    invoke-static {v1, v12}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v12

    invoke-direct {v9, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7818
    .local v9, "spinnerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x6

    invoke-static {v1, v12}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v13

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 7819
    iget-object v13, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->flowerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v13, v9}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7821
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+  "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v13, Lcom/pikminx/helper/R$string;->overlay_add_flower:I

    invoke-virtual {v1, v13}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moverlayButton(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v11

    iput-object v11, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addButton:Landroid/widget/Button;

    .line 7822
    iget-object v11, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addButton:Landroid/widget/Button;

    sget v13, Lcom/pikminx/helper/R$string;->overlay_add_flower:I

    invoke-virtual {v1, v13}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7823
    iget-object v11, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addButton:Landroid/widget/Button;

    new-instance v13, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda5;

    invoke-direct {v13, v0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda5;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;)V

    invoke-virtual {v11, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7824
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 7825
    invoke-static {v1, v14}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v13

    invoke-direct {v11, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7826
    .local v11, "addParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v1, v12}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 7827
    iget-object v13, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addButton:Landroid/widget/Button;

    invoke-virtual {v0, v13, v11}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7829
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7830
    .local v13, "customRow":Landroid/widget/LinearLayout;
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7832
    if-eqz v2, :cond_2

    .line 7833
    sget v4, Lcom/pikminx/helper/R$string;->overlay_manual_nectar_hint:I

    goto :goto_1

    .line 7834
    :cond_2
    sget v4, Lcom/pikminx/helper/R$string;->overlay_manual_flower_hint:I

    .line 7832
    :goto_1
    const-string v14, ""

    invoke-static {v1, v14, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$msingleLineTextField(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    .line 7835
    iget-object v4, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    const/high16 v14, 0x41500000    # 13.0f

    invoke-virtual {v4, v14}, Landroid/widget/EditText;->setTextSize(F)V

    .line 7836
    iget-object v4, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_BORDER()I

    move-result v14

    invoke-static {v1, v8, v14, v15}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mroundedBackground(Lcom/pikminx/helper/PetalAccessibilityService;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7837
    iget-object v4, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    new-instance v14, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda6;

    invoke-direct {v14, v0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda6;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;)V

    invoke-virtual {v4, v14}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 7846
    iget-object v4, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    new-instance v14, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda7;

    invoke-direct {v14, v0, v13}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda7;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v14}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 7859
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v10}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v14

    const/4 v8, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v4, v8, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 7860
    .local v4, "inputParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v1, v12}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 7861
    iget-object v8, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    invoke-virtual {v13, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7863
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "+ "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v14, Lcom/pikminx/helper/R$string;->overlay_add_custom_flower:I

    invoke-virtual {v1, v14}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moverlayButton(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v8

    iput-object v8, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addCustomButton:Landroid/widget/Button;

    .line 7864
    iget-object v8, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addCustomButton:Landroid/widget/Button;

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 7865
    iget-object v8, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addCustomButton:Landroid/widget/Button;

    new-instance v14, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda8;

    invoke-direct {v14, v0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda8;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;)V

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7866
    iget-object v8, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addCustomButton:Landroid/widget/Button;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 7867
    invoke-static {v1, v10}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v10

    const/4 v15, -0x2

    invoke-direct {v14, v15, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7866
    invoke-virtual {v13, v8, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7869
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v8, v10, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7871
    .local v8, "customParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v1, v12}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v1

    iput v1, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 7872
    invoke-virtual {v0, v13, v8}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7874
    invoke-direct/range {p0 .. p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshRows()V

    .line 7875
    iget-object v1, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalSelection;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 7876
    const/4 v1, 0x0

    const/4 v10, 0x0

    goto :goto_2

    .line 7877
    :cond_3
    iget-object v1, v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/pikminx/helper/PetalSelection;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pikminx/helper/PetalCatalog;->categoryIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    nop

    .line 7878
    .local v1, "initialCategory":I
    invoke-direct {v0, v1, v10}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selectCategory(IZ)V

    .line 7879
    return-void
.end method

.method private addCustomFlower()V
    .locals 5

    .line 7955
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 7956
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7957
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 7958
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7959
    return-void

    .line 7961
    :cond_1
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v2, v0}, Lcom/pikminx/helper/PetalSelection;->add(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7962
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7963
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7964
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 7965
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2

    .line 7966
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7968
    :cond_2
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 7969
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshRows()V

    .line 7970
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshDropdown()V

    .line 7971
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v3, Lcom/pikminx/helper/R$string;->overlay_flower_added_description:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 7974
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return-void
.end method

.method private addSelectedFlower()V
    .locals 5

    .line 7931
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->flowerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 7932
    .local v0, "position":I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->availableFlowers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 7935
    :cond_0
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->availableFlowers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7936
    .local v1, "flower":Ljava/lang/String;
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v2, v1}, Lcom/pikminx/helper/PetalSelection;->add(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7937
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshRows()V

    .line 7938
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshDropdown()V

    .line 7939
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v3, Lcom/pikminx/helper/R$string;->overlay_flower_added_description:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 7942
    :cond_1
    return-void

    .line 7933
    .end local v1    # "flower":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private addSelectedRow(I)V
    .locals 14
    .param p1, "index"    # I

    .line 7990
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7991
    .local v0, "row":Landroid/widget/LinearLayout;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7992
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v1

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v3

    iget-object v5, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v5, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v5

    iget-object v6, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v6, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 7993
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_BORDER()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, -0x1

    invoke-static {v1, v5, v3, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mroundedBackground(Lcom/pikminx/helper/PetalAccessibilityService;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7995
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_MUTED()I

    move-result v6

    invoke-static {v1, v3, v4, v6}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mformText(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 7996
    .local v1, "number":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 7997
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 7998
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/16 v6, 0x1c

    invoke-static {v4, v6}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v4

    iget-object v6, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/16 v7, 0x30

    invoke-static {v6, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v6

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8000
    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v4, p1}, Lcom/pikminx/helper/PetalSelection;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x4b

    const/16 v8, 0x36

    const/16 v9, 0x23

    invoke-static {v9, v6, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    const/16 v8, 0xe

    invoke-static {v3, v4, v8, v6}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mformText(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    .line 8001
    .local v3, "flower":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v6, Lcom/pikminx/helper/R$string;->overlay_flower_item_description:I

    add-int/lit8 v8, p1, 0x1

    .line 8002
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 8001
    invoke-virtual {v4, v6, v8}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8003
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v6, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v6

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v8, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8005
    iget-object v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v6, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v10, Lcom/pikminx/helper/R$string;->overlay_move_up:I

    invoke-virtual {v6, v10}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, "\u2191"

    invoke-static {v4, v10, v6}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mcompactIconButton(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    .line 8006
    .local v4, "up":Landroid/widget/Button;
    const/4 v6, 0x1

    if-lez p1, :cond_0

    move v10, v6

    goto :goto_0

    :cond_0
    move v10, v8

    :goto_0
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8007
    const v10, 0x3eb33333    # 0.35f

    if-lez p1, :cond_1

    move v11, v9

    goto :goto_1

    :cond_1
    move v11, v10

    :goto_1
    invoke-virtual {v4, v11}, Landroid/widget/Button;->setAlpha(F)V

    .line 8008
    new-instance v11, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda1;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;I)V

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8009
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v12, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v12, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v12

    iget-object v13, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v13, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8011
    iget-object v11, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v12, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v13, Lcom/pikminx/helper/R$string;->overlay_move_down:I

    invoke-virtual {v12, v13}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\u2193"

    invoke-static {v11, v13, v12}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mcompactIconButton(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v11

    .line 8012
    .local v11, "down":Landroid/widget/Button;
    iget-object v12, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v12}, Lcom/pikminx/helper/PetalSelection;->size()I

    move-result v12

    sub-int/2addr v12, v6

    if-ge p1, v12, :cond_2

    move v8, v6

    :cond_2
    invoke-virtual {v11, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8013
    iget-object v8, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v8}, Lcom/pikminx/helper/PetalSelection;->size()I

    move-result v8

    sub-int/2addr v8, v6

    if-ge p1, v8, :cond_3

    goto :goto_2

    :cond_3
    move v9, v10

    :goto_2
    invoke-virtual {v11, v9}, Landroid/widget/Button;->setAlpha(F)V

    .line 8014
    new-instance v6, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda2;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;I)V

    invoke-virtual {v11, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8015
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v8, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v8

    iget-object v9, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v9, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8017
    iget-object v6, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v8, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v9, Lcom/pikminx/helper/R$string;->overlay_remove_flower:I

    invoke-virtual {v8, v9}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u00d7"

    invoke-static {v6, v9, v8}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mcompactIconButton(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v6

    .line 8018
    .local v6, "remove":Landroid/widget/Button;
    new-instance v8, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda3;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;I)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8019
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v9, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v9

    iget-object v10, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v10, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v7

    invoke-direct {v8, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8021
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v7

    .line 8023
    .local v5, "rowParams":Landroid/widget/LinearLayout$LayoutParams;
    if-lez p1, :cond_4

    .line 8024
    iget-object v7, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v7, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v2

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 8026
    :cond_4
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selectedRows:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8027
    return-void
.end method

.method private displayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 8030
    iget-boolean v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->nectarLabels:Z

    if-eqz v0, :cond_1

    .line 8031
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "\u9ec3\u8272\u82b1\u74e3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "\u85cd\u8272\u82b1\u74e3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "\u7d05\u8272\u82b1\u74e3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u767d\u8272\u82b1\u74e3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 8039
    :pswitch_0
    const-string v0, "\u9ec3\u8272\u7cbe\u83ef"

    return-object v0

    .line 8037
    :pswitch_1
    const-string v0, "\u85cd\u8272\u7cbe\u83ef"

    return-object v0

    .line 8035
    :pswitch_2
    const-string v0, "\u7d05\u8272\u7cbe\u83ef"

    return-object v0

    .line 8033
    :pswitch_3
    const-string v0, "\u767d\u8272\u7cbe\u83ef"

    return-object v0

    .line 8042
    :cond_1
    :goto_2
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x37d692a7 -> :sswitch_3
        0x3ace9f1f -> :sswitch_2
        0x3ecc8157 -> :sswitch_1
        0x4a253ca1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$addSelectedRow$6(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 8008
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->move(II)V

    return-void
.end method

.method private synthetic lambda$addSelectedRow$7(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 8014
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->move(II)V

    return-void
.end method

.method private synthetic lambda$addSelectedRow$8(ILandroid/view/View;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 8018
    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->remove(I)V

    return-void
.end method

.method private synthetic lambda$new$0(ILandroid/view/View;)V
    .locals 1
    .param p1, "categoryIndex"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 7798
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selectCategory(IZ)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 7823
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addSelectedFlower()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 7838
    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_0

    .line 7839
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 7840
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7844
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 7841
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addCustomFlower()V

    .line 7842
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$new$3(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "customRow"    # Landroid/widget/LinearLayout;

    .line 7849
    invoke-virtual {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7850
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    .line 7851
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 7853
    :cond_0
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 7854
    move-object v1, v0

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 7856
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/widget/LinearLayout;Landroid/view/View;Z)V
    .locals 3
    .param p1, "customRow"    # Landroid/widget/LinearLayout;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "hasFocus"    # Z

    .line 7847
    if-eqz p3, :cond_0

    .line 7848
    new-instance v0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;Landroid/widget/LinearLayout;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7858
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 7865
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addCustomFlower()V

    return-void
.end method

.method private move(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "delta"    # I

    .line 8046
    add-int v0, p1, p2

    .line 8047
    .local v0, "target":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalSelection;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 8050
    :cond_0
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v1, p1, p2}, Lcom/pikminx/helper/PetalSelection;->move(II)V

    .line 8051
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshRows()V

    .line 8052
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v2, Lcom/pikminx/helper/R$string;->overlay_flower_item_description:I

    add-int/lit8 v3, v0, 0x1

    .line 8053
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 8052
    invoke-virtual {v1, v2, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 8054
    return-void

    .line 8048
    :cond_1
    :goto_0
    return-void
.end method

.method private refreshColorStyles()V
    .locals 8

    .line 7899
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->colorButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 7900
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->colorButtons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 7901
    .local v1, "button":Landroid/widget/Button;
    iget v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selectedCategoryIndex:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v3

    .line 7902
    .local v2, "selected":Z
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 7903
    iget-object v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    if-eqz v2, :cond_1

    .line 7904
    sget v5, Lcom/pikminx/helper/R$string;->overlay_tab_selected:I

    goto :goto_2

    .line 7905
    :cond_1
    sget v5, Lcom/pikminx/helper/R$string;->overlay_tab_not_selected:I

    .line 7903
    :goto_2
    invoke-virtual {v4, v5}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 7906
    if-eqz v2, :cond_2

    const/4 v4, -0x1

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_GREEN()I

    move-result v4

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 7907
    iget-object v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7908
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_GREEN()I

    move-result v5

    goto :goto_4

    :cond_3
    const/16 v5, 0xf5

    const/16 v6, 0xef

    const/16 v7, 0xf1

    invoke-static {v7, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 7909
    :goto_4
    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_BORDER()I

    move-result v3

    .line 7907
    :goto_5
    const/16 v6, 0xa

    invoke-static {v4, v5, v3, v6}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mroundedBackground(Lcom/pikminx/helper/PetalAccessibilityService;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7899
    .end local v1    # "button":Landroid/widget/Button;
    .end local v2    # "selected":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7912
    .end local v0    # "index":I
    :cond_5
    return-void
.end method

.method private refreshDropdown()V
    .locals 4

    .line 7915
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    iget v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selectedCategoryIndex:I

    invoke-virtual {v0, v1}, Lcom/pikminx/helper/PetalSelection;->available(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->availableFlowers:Ljava/util/List;

    .line 7916
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->availableFlowers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7917
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v1, Lcom/pikminx/helper/R$string;->overlay_no_available_flowers:I

    invoke-virtual {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 7918
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->availableFlowers:Ljava/util/List;

    :goto_0
    nop

    .line 7919
    .local v0, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7923
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 7924
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->flowerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 7925
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->flowerSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->availableFlowers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 7926
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->availableFlowers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7927
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->availableFlowers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x3ee66666    # 0.45f

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setAlpha(F)V

    .line 7928
    return-void
.end method

.method private refreshRows()V
    .locals 3

    .line 7978
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selectedRows:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7979
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v1}, Lcom/pikminx/helper/PetalSelection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7980
    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->addSelectedRow(I)V

    .line 7979
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7982
    .end local v0    # "index":I
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v0}, Lcom/pikminx/helper/PetalSelection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 7983
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v2, Lcom/pikminx/helper/R$string;->overlay_no_selected_flowers:I

    .line 7984
    invoke-virtual {v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_CREAM()I

    move-result v2

    .line 7983
    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$msettingsHelperCard(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 7985
    .local v0, "empty":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selectedRows:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7987
    .end local v0    # "empty":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private remove(I)V
    .locals 4
    .param p1, "index"    # I

    .line 8057
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v0, p1}, Lcom/pikminx/helper/PetalSelection;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 8058
    .local v0, "removed":Ljava/lang/String;
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v1, p1}, Lcom/pikminx/helper/PetalSelection;->remove(I)V

    .line 8059
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshRows()V

    .line 8060
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshDropdown()V

    .line 8061
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v2, Lcom/pikminx/helper/R$string;->overlay_flower_removed_description:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 8063
    return-void
.end method

.method private selectCategory(IZ)V
    .locals 3
    .param p1, "categoryIndex"    # I
    .param p2, "announce"    # Z

    .line 7888
    iput p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selectedCategoryIndex:I

    .line 7889
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshColorStyles()V

    .line 7890
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshDropdown()V

    .line 7891
    if-eqz p2, :cond_0

    .line 7892
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v1, Lcom/pikminx/helper/R$string;->overlay_flower_color_description:I

    .line 7894
    invoke-static {}, Lcom/pikminx/helper/PetalCatalog;->categories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pikminx/helper/PetalCatalog$Category;

    invoke-virtual {v2}, Lcom/pikminx/helper/PetalCatalog$Category;->name()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 7892
    invoke-virtual {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 7896
    :cond_0
    return-void
.end method


# virtual methods
.method inputField()Landroid/widget/EditText;
    .locals 1

    .line 7945
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->customInputField:Landroid/widget/EditText;

    return-object v0
.end method

.method setFlowers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7949
    .local p1, "flowers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v0, p1}, Lcom/pikminx/helper/PetalSelection;->setFlowers(Ljava/util/List;)V

    .line 7950
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshRows()V

    .line 7951
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->refreshDropdown()V

    .line 7952
    return-void
.end method

.method valueText()Ljava/lang/String;
    .locals 1

    .line 7883
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$FlowerOrderEditor;->selection:Lcom/pikminx/helper/PetalSelection;

    invoke-virtual {v0}, Lcom/pikminx/helper/PetalSelection;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
