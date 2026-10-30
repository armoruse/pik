.class Lcom/pikminx/helper/PetalAccessibilityService$5;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->dispatchNextFeedHoldSlice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;

.field final synthetic val$generation:J

.field final synthetic val$nextStroke:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

.field final synthetic val$nextX:F


# direct methods
.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;JLandroid/accessibilityservice/GestureDescription$StrokeDescription;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/pikminx/helper/PetalAccessibilityService;

    .line 2812
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-wide p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->val$generation:J

    iput-object p4, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->val$nextStroke:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iput p5, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->val$nextX:F

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 3
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 2826
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2827
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mfinishFeedHoldGesture(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 2829
    :cond_0
    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 3
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 2815
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetfeedHoldReleasing(Lcom/pikminx/helper/PetalAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2818
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->val$nextStroke:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputfeedHoldStroke(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/accessibilityservice/GestureDescription$StrokeDescription;)V

    .line 2819
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->val$nextX:F

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputfeedHoldX(Lcom/pikminx/helper/PetalAccessibilityService;F)V

    .line 2820
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetfeedHoldDirection(Lcom/pikminx/helper/PetalAccessibilityService;)F

    move-result v1

    neg-float v1, v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputfeedHoldDirection(Lcom/pikminx/helper/PetalAccessibilityService;F)V

    .line 2821
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$5;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mschedule(Lcom/pikminx/helper/PetalAccessibilityService;J)V

    .line 2822
    return-void

    .line 2816
    :cond_1
    :goto_0
    return-void
.end method
