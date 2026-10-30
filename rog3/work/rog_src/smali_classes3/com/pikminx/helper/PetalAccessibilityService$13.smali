.class Lcom/pikminx/helper/PetalAccessibilityService$13;
.super Landroid/widget/LinearLayout;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->showSettingsOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;

.field final synthetic val$numberFields:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pikminx/helper/PetalAccessibilityService;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 6196
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$13;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-object p3, p0, Lcom/pikminx/helper/PetalAccessibilityService$13;->val$numberFields:Ljava/util/List;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6199
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$13;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$13;->val$numberFields:Ljava/util/List;

    invoke-static {v0, p0, v1, p1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdismissNumberKeyboardOnOutsideTap(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/view/View;Ljava/util/List;Landroid/view/MotionEvent;)V

    .line 6200
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
