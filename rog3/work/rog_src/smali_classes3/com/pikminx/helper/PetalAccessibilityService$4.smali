.class Lcom/pikminx/helper/PetalAccessibilityService$4;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->dispatchFeedHoldGesture(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;

.field final synthetic val$generation:J

.field final synthetic val$stroke:Landroid/accessibilityservice/GestureDescription$StrokeDescription;


# direct methods
.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;JLandroid/accessibilityservice/GestureDescription$StrokeDescription;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pikminx/helper/PetalAccessibilityService;

    .line 2774
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-wide p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->val$generation:J

    iput-object p4, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->val$stroke:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 3
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 2786
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2787
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mfinishFeedHoldGesture(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 2789
    :cond_0
    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 3
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 2777
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2778
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->val$stroke:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputfeedHoldStroke(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/accessibilityservice/GestureDescription$StrokeDescription;)V

    .line 2779
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputfeedHoldStartedAt(Lcom/pikminx/helper/PetalAccessibilityService;J)V

    .line 2780
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$4;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdispatchNextFeedHoldSlice(Lcom/pikminx/helper/PetalAccessibilityService;)V

    .line 2782
    :cond_0
    return-void
.end method
