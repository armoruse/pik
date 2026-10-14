.class public final synthetic Lcom/pikminx/helper/PetalAccessibilityService$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/pikminx/helper/PetalAccessibilityService;


# direct methods
.method public synthetic constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$$ExternalSyntheticLambda53;->f$0:Lcom/pikminx/helper/PetalAccessibilityService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$$ExternalSyntheticLambda53;->f$0:Lcom/pikminx/helper/PetalAccessibilityService;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0, p1}, Lcom/pikminx/helper/PetalAccessibilityService;->$r8$lambda$mbZ0cWXCqSTy0xG1r7k2rkYDGPc(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1
.end method
