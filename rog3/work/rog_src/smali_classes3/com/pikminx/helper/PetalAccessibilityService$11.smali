.class Lcom/pikminx/helper/PetalAccessibilityService$11;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->dispatchTap(IIJLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;

.field final synthetic val$completed:Ljava/lang/Runnable;

.field final synthetic val$failed:Ljava/lang/Runnable;

.field final synthetic val$generation:J

.field final synthetic val$plantingEntryPhase:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;JLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pikminx/helper/PetalAccessibilityService;

    .line 5957
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-wide p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->val$generation:J

    iput-object p4, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->val$plantingEntryPhase:Ljava/lang/String;

    iput-object p5, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->val$completed:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->val$failed:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 3
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 5972
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5973
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v2, Lcom/pikminx/helper/R$string;->status_tap_cancelled:I

    invoke-virtual {v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$msetStatus(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;)V

    .line 5974
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->val$failed:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5976
    :cond_0
    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 3
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 5960
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5961
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->val$plantingEntryPhase:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5962
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->val$plantingEntryPhase:Ljava/lang/String;

    sget v2, Lcom/pikminx/helper/R$string;->status_planting_entry_tap_completed:I

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mshowPlantingEntryGestureStatus(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;I)V

    .line 5966
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$11;->val$completed:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5968
    :cond_1
    return-void
.end method
