.class Lcom/pikminx/helper/PetalAccessibilityService$3;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->zoomOutFeedView(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;

.field final synthetic val$completed:Ljava/lang/Runnable;

.field final synthetic val$generation:J


# direct methods
.method public static synthetic $r8$lambda$WzhQIlsfmq_vUNr25taktC3-7fk(Lcom/pikminx/helper/PetalAccessibilityService$3;JLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/pikminx/helper/PetalAccessibilityService$3;->lambda$onCompleted$0(JLjava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;JLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pikminx/helper/PetalAccessibilityService;

    .line 2246
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-wide p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->val$generation:J

    iput-object p4, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->val$completed:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCompleted$0(JLjava/lang/Runnable;)V
    .locals 2
    .param p1, "generation"    # J
    .param p3, "completed"    # Ljava/lang/Runnable;

    .line 2251
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2252
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputfeedZoomReady(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 2253
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 2255
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 3
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 2261
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2262
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v2, Lcom/pikminx/helper/R$string;->status_feed_zoom_failed:I

    invoke-virtual {v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mstopWithError(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;)V

    .line 2264
    :cond_0
    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 5
    .param p1, "gestureDescription"    # Landroid/accessibilityservice/GestureDescription;

    .line 2249
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgethandler(Lcom/pikminx/helper/PetalAccessibilityService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->val$generation:J

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$3;->val$completed:Ljava/lang/Runnable;

    new-instance v4, Lcom/pikminx/helper/PetalAccessibilityService$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/pikminx/helper/PetalAccessibilityService$3$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$3;JLjava/lang/Runnable;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2257
    :cond_0
    return-void
.end method
