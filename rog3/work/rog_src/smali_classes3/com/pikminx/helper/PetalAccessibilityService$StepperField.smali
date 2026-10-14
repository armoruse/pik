.class final Lcom/pikminx/helper/PetalAccessibilityService$StepperField;
.super Landroid/widget/LinearLayout;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StepperField"
.end annotation


# instance fields
.field private final input:Landroid/widget/EditText;

.field private final label:Ljava/lang/String;

.field private final maximum:I

.field private final minimum:I

.field private final step:I

.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;


# direct methods
.method public static synthetic $r8$lambda$9AVxASq7BdglfOp4UfEdAF29E3c(Lcom/pikminx/helper/PetalAccessibilityService$StepperField;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bu8cgIM6lCc1rPbtrfG-M13DsDY(Lcom/pikminx/helper/PetalAccessibilityService$StepperField;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 8
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "helper"    # Ljava/lang/String;
    .param p4, "initialValue"    # I
    .param p5, "minimum"    # I
    .param p6, "maximum"    # I

    .line 7522
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;-><init>(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 7523
    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 16
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "helper"    # Ljava/lang/String;
    .param p4, "initialValue"    # I
    .param p5, "minimum"    # I
    .param p6, "maximum"    # I
    .param p7, "step"    # I

    .line 7525
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7526
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7527
    iput-object v2, v0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->label:Ljava/lang/String;

    .line 7528
    move/from16 v3, p5

    iput v3, v0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->minimum:I

    .line 7529
    move/from16 v4, p6

    iput v4, v0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->maximum:I

    .line 7530
    const/4 v5, 0x1

    move/from16 v6, p7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->step:I

    .line 7531
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->setGravity(I)V

    .line 7532
    const/16 v7, 0xe

    invoke-static {v1, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v8

    const/16 v9, 0x8

    invoke-static {v1, v9}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v10

    const/16 v11, 0xa

    invoke-static {v1, v11}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v11

    invoke-static {v1, v9}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v9

    invoke-virtual {v0, v8, v10, v11, v9}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->setPadding(IIII)V

    .line 7533
    const/4 v8, -0x1

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_BORDER()I

    move-result v9

    invoke-static {v1, v8, v9, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mroundedBackground(Lcom/pikminx/helper/PetalAccessibilityService;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7535
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7536
    .local v8, "copy":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7537
    const/16 v9, 0x4b

    const/16 v10, 0x36

    const/16 v11, 0x23

    invoke-static {v11, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v1, v2, v7, v9}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mformText(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v7

    .line 7538
    .local v7, "title":Landroid/widget/TextView;
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 7539
    const/16 v5, 0xb

    invoke-static {}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$sfgetOVERLAY_MUTED()I

    move-result v9

    move-object/from16 v10, p3

    invoke-static {v1, v10, v5, v9}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mformText(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    .line 7540
    .local v5, "hint":Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7541
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7542
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct {v9, v13, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v8, v9}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7545
    sget v9, Lcom/pikminx/helper/R$string;->overlay_decrease:I

    invoke-virtual {v1, v9}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "\u2212"

    invoke-static {v1, v11, v9}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mcompactIconButton(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v9

    .line 7546
    .local v9, "decrease":Landroid/widget/Button;
    new-instance v11, Lcom/pikminx/helper/PetalAccessibilityService$StepperField$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$StepperField;)V

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7547
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x30

    invoke-static {v1, v12}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v14

    invoke-static {v1, v12}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v15

    invoke-direct {v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9, v11}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7549
    move/from16 v11, p4

    invoke-static {v1, v11}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mnumberField(Lcom/pikminx/helper/PetalAccessibilityService;I)Landroid/widget/EditText;

    move-result-object v14

    iput-object v14, v0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    .line 7550
    iget-object v14, v0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    const/16 v15, 0x11

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setGravity(I)V

    .line 7551
    iget-object v14, v0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    const/4 v15, 0x2

    invoke-static {v1, v15}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v12

    invoke-static {v1, v15}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v15

    invoke-virtual {v14, v12, v13, v15, v13}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 7552
    iget-object v12, v0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    sget v14, Lcom/pikminx/helper/R$string;->overlay_value_description:I

    .line 7553
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v2, v15}, [Ljava/lang/Object;

    move-result-object v15

    .line 7552
    invoke-virtual {v1, v14, v15}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7554
    iget-object v12, v0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 7555
    iget-object v12, v0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x3a

    invoke-static {v1, v14}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v14

    const/16 v15, 0x30

    invoke-static {v1, v15}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v2

    invoke-direct {v13, v14, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v12, v13}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7557
    sget v2, Lcom/pikminx/helper/R$string;->overlay_increase:I

    invoke-virtual {v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v12, "+"

    invoke-static {v1, v12, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mcompactIconButton(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 7558
    .local v2, "increase":Landroid/widget/Button;
    new-instance v12, Lcom/pikminx/helper/PetalAccessibilityService$StepperField$$ExternalSyntheticLambda1;

    invoke-direct {v12, v0}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField$$ExternalSyntheticLambda1;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$StepperField;)V

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7559
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x30

    invoke-static {v1, v13}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v14

    invoke-static {v1, v13}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v1

    invoke-direct {v12, v14, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v12}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7560
    return-void
.end method

.method private adjust(I)V
    .locals 7
    .param p1, "delta"    # I

    .line 7573
    :try_start_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7576
    .local v0, "current":I
    goto :goto_0

    .line 7574
    .end local v0    # "current":I
    :catch_0
    move-exception v0

    .line 7575
    .local v0, "exception":Ljava/lang/NumberFormatException;
    iget v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->minimum:I

    move v0, v1

    .line 7577
    .local v0, "current":I
    :goto_0
    iget v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->minimum:I

    iget v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->maximum:I

    iget v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->step:I

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7578
    .local v1, "next":I
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7579
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 7580
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v4, Lcom/pikminx/helper/R$string;->overlay_value_description:I

    iget-object v5, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->label:Ljava/lang/String;

    .line 7581
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 7580
    invoke-virtual {v3, v4, v5}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7582
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v4, Lcom/pikminx/helper/R$string;->overlay_value_description:I

    iget-object v5, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->label:Ljava/lang/String;

    .line 7583
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 7582
    invoke-virtual {v3, v4, v5}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 7584
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7546
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->adjust(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7558
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->adjust(I)V

    return-void
.end method


# virtual methods
.method input()Landroid/widget/EditText;
    .locals 1

    .line 7567
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    return-object v0
.end method

.method valueText()Ljava/lang/String;
    .locals 1

    .line 7563
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$StepperField;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
