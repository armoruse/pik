.class public final synthetic Lcom/pikminx/helper/RogHandoverControls$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Lcom/pikminx/helper/PetalAccessibilityService;

.field public final synthetic f$4:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/pikminx/helper/PetalAccessibilityService;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/RogHandoverControls$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/pikminx/helper/RogHandoverControls$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/pikminx/helper/RogHandoverControls$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/pikminx/helper/RogHandoverControls$$ExternalSyntheticLambda1;->f$3:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-object p5, p0, Lcom/pikminx/helper/RogHandoverControls$$ExternalSyntheticLambda1;->f$4:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/pikminx/helper/RogHandoverControls$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/pikminx/helper/RogHandoverControls$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pikminx/helper/RogHandoverControls$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/pikminx/helper/RogHandoverControls$$ExternalSyntheticLambda1;->f$3:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v4, p0, Lcom/pikminx/helper/RogHandoverControls$$ExternalSyntheticLambda1;->f$4:Landroid/widget/TextView;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/pikminx/helper/RogHandoverControls;->lambda$show$3(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/pikminx/helper/PetalAccessibilityService;Landroid/widget/TextView;Landroid/content/DialogInterface;)V

    return-void
.end method
