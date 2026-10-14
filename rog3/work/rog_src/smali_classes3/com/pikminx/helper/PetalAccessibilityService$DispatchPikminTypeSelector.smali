.class final Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;
.super Landroid/widget/LinearLayout;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DispatchPikminTypeSelector"
.end annotation


# instance fields
.field private final buttonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/pikminx/helper/DispatchPikminType;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private selected:Lcom/pikminx/helper/DispatchPikminType;

.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;


# direct methods
.method public static synthetic $r8$lambda$WoF-RuuBLMfPPZbQm0o1pcv4b9k(Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;Lcom/pikminx/helper/DispatchPikminType;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->lambda$new$0(Lcom/pikminx/helper/DispatchPikminType;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/DispatchPikminType;)V
    .locals 12
    .param p2, "initial"    # Lcom/pikminx/helper/DispatchPikminType;

    .line 7428
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 7429
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->buttonMap:Ljava/util/Map;

    .line 7430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->setOrientation(I)V

    .line 7431
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->setGravity(I)V

    .line 7432
    if-nez p2, :cond_0

    sget-object v1, Lcom/pikminx/helper/DispatchPikminType;->MIXED:Lcom/pikminx/helper/DispatchPikminType;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->selected:Lcom/pikminx/helper/DispatchPikminType;

    .line 7434
    invoke-static {}, Lcom/pikminx/helper/DispatchPikminType;->values()[Lcom/pikminx/helper/DispatchPikminType;

    move-result-object v1

    .line 7437
    .local v1, "types":[Lcom/pikminx/helper/DispatchPikminType;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 7438
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7439
    .local v3, "row":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7440
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7441
    const/4 v5, 0x2

    invoke-static {p1, v5}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v6

    invoke-static {p1, v5}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v5

    invoke-virtual {v3, v4, v6, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 7443
    move v5, v2

    .local v5, "j":I
    :goto_2
    add-int/lit8 v6, v2, 0x3

    if-ge v5, v6, :cond_2

    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 7444
    aget-object v6, v1, v5

    .line 7445
    .local v6, "type":Lcom/pikminx/helper/DispatchPikminType;
    invoke-virtual {v6}, Lcom/pikminx/helper/DispatchPikminType;->label()Ljava/lang/String;

    move-result-object v7

    .line 7448
    .local v7, "label":Ljava/lang/String;
    invoke-static {p1, v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$moverlayButton(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v8

    .line 7449
    .local v8, "btn":Landroid/widget/Button;
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7450
    new-instance v9, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v6, v8}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;Lcom/pikminx/helper/DispatchPikminType;Landroid/widget/Button;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7456
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x28

    invoke-static {p1, v10}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 7457
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    rem-int/lit8 v10, v5, 0x3

    if-nez v10, :cond_1

    move v10, v4

    goto :goto_3

    :cond_1
    const/4 v10, 0x6

    invoke-static {p1, v10}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v10

    :goto_3
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 7458
    invoke-virtual {v3, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7460
    iget-object v10, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->buttonMap:Ljava/util/Map;

    invoke-interface {v10, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7443
    .end local v6    # "type":Lcom/pikminx/helper/DispatchPikminType;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "btn":Landroid/widget/Button;
    .end local v9    # "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 7462
    .end local v5    # "j":I
    :cond_2
    invoke-virtual {p0, v3}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->addView(Landroid/view/View;)V

    .line 7437
    .end local v3    # "row":Landroid/widget/LinearLayout;
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 7464
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->refresh()V

    .line 7465
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/pikminx/helper/DispatchPikminType;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1
    .param p1, "type"    # Lcom/pikminx/helper/DispatchPikminType;
    .param p2, "btn"    # Landroid/widget/Button;
    .param p3, "view"    # Landroid/view/View;

    .line 7451
    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->select(Lcom/pikminx/helper/DispatchPikminType;)V

    .line 7452
    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 7453
    return-void
.end method

.method private refresh()V
    .locals 6

    .line 7477
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->buttonMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7478
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/pikminx/helper/DispatchPikminType;Landroid/widget/Button;>;"
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->selected:Lcom/pikminx/helper/DispatchPikminType;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v2, v3, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mstyleDispatchOption(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/widget/Button;Z)V

    .line 7479
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/pikminx/helper/DispatchPikminType;Landroid/widget/Button;>;"
    goto :goto_0

    .line 7480
    :cond_1
    return-void
.end method

.method private select(Lcom/pikminx/helper/DispatchPikminType;)V
    .locals 0
    .param p1, "value"    # Lcom/pikminx/helper/DispatchPikminType;

    .line 7472
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->selected:Lcom/pikminx/helper/DispatchPikminType;

    .line 7473
    invoke-direct {p0}, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->refresh()V

    .line 7474
    return-void
.end method


# virtual methods
.method value()Lcom/pikminx/helper/DispatchPikminType;
    .locals 1

    .line 7468
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DispatchPikminTypeSelector;->selected:Lcom/pikminx/helper/DispatchPikminType;

    return-object v0
.end method
