.class Lcom/pikminx/helper/PetalAccessibilityService$12;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->dispatchPath(Landroid/graphics/Path;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
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


# direct methods
.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pikminx/helper/PetalAccessibilityService;

    .line 6006
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$12;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-wide p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$12;->val$generation:J

    iput-object p4, p0, Lcom/pikminx/helper/PetalAccessibilityService$12;->val$completed:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/pikminx/helper/PetalAccessibilityService$12;->val$failed:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 3
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 6016
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$12;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$12;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6017
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$12;->val$failed:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6019
    :cond_0
    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 3
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 6009
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$12;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$12;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6010
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$12;->val$completed:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6012
    :cond_0
    return-void
.end method
