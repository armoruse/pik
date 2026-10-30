.class Lcom/pikminx/helper/PetalAccessibilityService$8;
.super Ljava/lang/Object;
.source "PetalAccessibilityService.java"

# interfaces
.implements Lcom/pikminx/helper/OcrScanner$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->scanFocusedDispatchList(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;

.field final synthetic val$generation:J

.field final synthetic val$height:I

.field final synthetic val$listStartVisible:Z

.field final synthetic val$width:I


# direct methods
.method public static synthetic $r8$lambda$mxVX8kTllEWAs1ztWOWwG0O5wt0(Lcom/pikminx/helper/PetalAccessibilityService$8;JLcom/pikminx/helper/OcrScan$Frame;IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/pikminx/helper/PetalAccessibilityService$8;->lambda$onSuccess$0(JLcom/pikminx/helper/OcrScan$Frame;IIZ)V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;JIIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/pikminx/helper/PetalAccessibilityService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3170
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-wide p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->val$generation:J

    iput p4, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->val$width:I

    iput p5, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->val$height:I

    iput-boolean p6, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->val$listStartVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(JLcom/pikminx/helper/OcrScan$Frame;IIZ)V
    .locals 9
    .param p1, "generation"    # J
    .param p3, "frame"    # Lcom/pikminx/helper/OcrScan$Frame;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "listStartVisible"    # Z

    .line 3174
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetexpeditionDispatchSession(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/ExpeditionDispatchSession;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetexpeditionDispatchSession(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/ExpeditionDispatchSession;

    move-result-object v0

    .line 3176
    invoke-virtual {v0}, Lcom/pikminx/helper/ExpeditionDispatchSession;->stage()Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;->LIST_SEARCH:Lcom/pikminx/helper/ExpeditionDispatchSession$Stage;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 3180
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputbusy(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 3181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3182
    .local v0, "now":J
    nop

    .line 3183
    invoke-virtual {p3}, Lcom/pikminx/helper/OcrScan$Frame;->tokens()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetexpeditionTargetMode(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/ExpeditionTargetMode;

    move-result-object v3

    .line 3187
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/pikminx/helper/PetalAccessibilityService$8$$ExternalSyntheticLambda1;

    invoke-direct {v6, p3}, Lcom/pikminx/helper/PetalAccessibilityService$8$$ExternalSyntheticLambda1;-><init>(Lcom/pikminx/helper/OcrScan$Frame;)V

    iget-object v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetexpeditionDispatchSession(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/ExpeditionDispatchSession;

    move-result-object v4

    .line 3188
    invoke-virtual {v4}, Lcom/pikminx/helper/ExpeditionDispatchSession;->skippedTargetKeys()Ljava/util/Set;

    move-result-object v7

    .line 3182
    move v4, p4

    move v5, p5

    invoke-static/range {v2 .. v7}, Lcom/pikminx/helper/ExpeditionScreenAnalyzer;->findTarget(Ljava/util/List;Lcom/pikminx/helper/ExpeditionTargetMode;IILjava/util/function/IntBinaryOperator;Ljava/util/Set;)Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;

    move-result-object v8

    .line 3189
    .local v8, "target":Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;
    if-nez v8, :cond_1

    .line 3190
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v2, p6, v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mhandleDispatchListMiss(Lcom/pikminx/helper/PetalAccessibilityService;ZJ)V

    goto :goto_0

    .line 3192
    :cond_1
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    move-object v3, v8

    move v4, p4

    move v5, p5

    move-wide v6, v0

    invoke-static/range {v2 .. v7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mhandleDispatchListTarget(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;IIJ)V

    .line 3194
    :goto_0
    return-void

    .line 3178
    .end local v0    # "now":J
    .end local v8    # "target":Lcom/pikminx/helper/ExpeditionScreenAnalyzer$Target;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Exception;

    .line 3199
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3200
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputbusy(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 3201
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-boolean v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->val$listStartVisible:Z

    .line 3202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3201
    invoke-static {v0, v1, v2, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mhandleDispatchListMiss(Lcom/pikminx/helper/PetalAccessibilityService;ZJ)V

    .line 3204
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/pikminx/helper/OcrScan$Frame;)V
    .locals 11
    .param p1, "frame"    # Lcom/pikminx/helper/OcrScan$Frame;

    .line 3173
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-virtual {p1}, Lcom/pikminx/helper/OcrScan$Frame;->captureGeometry()Lcom/pikminx/helper/CaptureGeometry;

    move-result-object v1

    iget-wide v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->val$generation:J

    iget v7, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->val$width:I

    iget v8, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->val$height:I

    iget-boolean v9, p0, Lcom/pikminx/helper/PetalAccessibilityService$8;->val$listStartVisible:Z

    new-instance v10, Lcom/pikminx/helper/PetalAccessibilityService$8$$ExternalSyntheticLambda0;

    move-object v2, v10

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v9}, Lcom/pikminx/helper/PetalAccessibilityService$8$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$8;JLcom/pikminx/helper/OcrScan$Frame;IIZ)V

    invoke-static {v0, v1, v10}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mrunWithCaptureGeometry(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/CaptureGeometry;Ljava/lang/Runnable;)V

    .line 3195
    return-void
.end method
