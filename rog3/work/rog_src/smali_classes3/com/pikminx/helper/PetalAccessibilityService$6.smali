.class Lcom/pikminx/helper/PetalAccessibilityService$6;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->releaseFeedHoldGesture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;

.field final synthetic val$generation:J


# direct methods
.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/pikminx/helper/PetalAccessibilityService;

    .line 2875
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$6;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-wide p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$6;->val$generation:J

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 3
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 2885
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$6;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$6;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2886
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$6;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mfinishFeedHoldGesture(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 2888
    :cond_0
    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 3
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 2878
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$6;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$6;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2879
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$6;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mfinishFeedHoldGesture(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 2881
    :cond_0
    return-void
.end method
