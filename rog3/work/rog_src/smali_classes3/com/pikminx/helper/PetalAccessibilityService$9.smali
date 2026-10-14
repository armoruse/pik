.class Lcom/pikminx/helper/PetalAccessibilityService$9;
.super Ljava/lang/Object;
.source "PetalAccessibilityService.java"

# interfaces
.implements Lcom/pikminx/helper/OcrScanner$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->scanFocusedPlantingPetalRegion(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;

.field final synthetic val$generation:J

.field final synthetic val$height:I

.field final synthetic val$monitorRead:Z

.field final synthetic val$scanTarget:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method public static synthetic $r8$lambda$niUgBjQ-0-IqSm8rvprjLdZyESg(Lcom/pikminx/helper/PetalAccessibilityService$9;JZLjava/lang/String;Lcom/pikminx/helper/OcrScan$Frame;II)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/pikminx/helper/PetalAccessibilityService$9;->lambda$onSuccess$0(JZLjava/lang/String;Lcom/pikminx/helper/OcrScan$Frame;II)V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;JZLjava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/pikminx/helper/PetalAccessibilityService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4237
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-wide p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$generation:J

    iput-boolean p4, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$monitorRead:Z

    iput-object p5, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$scanTarget:Ljava/lang/String;

    iput p6, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$width:I

    iput p7, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(JZLjava/lang/String;Lcom/pikminx/helper/OcrScan$Frame;II)V
    .locals 6
    .param p1, "generation"    # J
    .param p3, "monitorRead"    # Z
    .param p4, "scanTarget"    # Ljava/lang/String;
    .param p5, "frame"    # Lcom/pikminx/helper/OcrScan$Frame;
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 4241
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4242
    return-void

    .line 4244
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputbusy(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 4245
    const-wide/16 v2, 0x708

    if-eqz p3, :cond_4

    .line 4246
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetautomationStep(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    move-result-object v0

    sget-object v4, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->MONITORING:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetcurrentFlower(Lcom/pikminx/helper/PetalAccessibilityService;)Ljava/lang/String;

    move-result-object v0

    .line 4247
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4251
    :cond_1
    nop

    .line 4252
    invoke-virtual {p5}, Lcom/pikminx/helper/OcrScan$Frame;->tokens()Ljava/util/List;

    move-result-object v0

    .line 4251
    invoke-static {v0, p4, p6, p7}, Lcom/pikminx/helper/PetalMatcher;->findFlower(Ljava/util/List;Ljava/lang/String;II)Lcom/pikminx/helper/PetalMatcher$Selection;

    move-result-object v0

    .line 4253
    .local v0, "current":Lcom/pikminx/helper/PetalMatcher$Selection;
    if-nez v0, :cond_2

    .line 4254
    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v4, Lcom/pikminx/helper/R$string;->overlay_planting_unreadable:I

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v5

    .line 4255
    invoke-virtual {v3, v4, v5}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4254
    invoke-static {v2, v3, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$msetPlantingNoticeText(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;Z)V

    .line 4256
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mscheduleNext(Lcom/pikminx/helper/PetalAccessibilityService;)V

    goto :goto_0

    .line 4258
    :cond_2
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v1, v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mhandlePlantingMonitorSelection(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/PetalMatcher$Selection;)V

    .line 4260
    :goto_0
    return-void

    .line 4248
    .end local v0    # "current":Lcom/pikminx/helper/PetalMatcher$Selection;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0, v2, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mschedule(Lcom/pikminx/helper/PetalAccessibilityService;J)V

    .line 4249
    return-void

    .line 4262
    :cond_4
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetautomationStep(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    move-result-object v0

    sget-object v1, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->SELECTING_SEARCH_RESULT:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    if-eq v0, v1, :cond_5

    .line 4263
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0, v2, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mschedule(Lcom/pikminx/helper/PetalAccessibilityService;J)V

    .line 4264
    return-void

    .line 4266
    :cond_5
    nop

    .line 4267
    invoke-virtual {p5}, Lcom/pikminx/helper/OcrScan$Frame;->tokens()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgettargetFlower(Lcom/pikminx/helper/PetalAccessibilityService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetplantingSearchMinimumCount(Lcom/pikminx/helper/PetalAccessibilityService;)I

    move-result v2

    .line 4266
    invoke-static {v0, v1, v2, p6, p7}, Lcom/pikminx/helper/PetalMatcher;->findSearchedFlower(Ljava/util/List;Ljava/lang/String;III)Lcom/pikminx/helper/PetalMatcher$Selection;

    move-result-object v0

    .line 4272
    .local v0, "pot":Lcom/pikminx/helper/PetalMatcher$Selection;
    if-nez v0, :cond_6

    .line 4273
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mhandlePlantingSearchMiss(Lcom/pikminx/helper/PetalAccessibilityService;)V

    goto :goto_2

    .line 4275
    :cond_6
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v1, v0, p6, p7}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mconfirmPlantingSearchResult(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/PetalMatcher$Selection;II)V

    .line 4277
    :goto_2
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/Exception;

    .line 4282
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4283
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputbusy(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 4284
    iget-boolean v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$monitorRead:Z

    if-eqz v0, :cond_0

    .line 4285
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v3, Lcom/pikminx/helper/R$string;->overlay_planting_unreadable:I

    iget-object v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$scanTarget:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 4286
    invoke-virtual {v2, v3, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4285
    invoke-static {v0, v2, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$msetPlantingNoticeText(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;Z)V

    .line 4287
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mscheduleNext(Lcom/pikminx/helper/PetalAccessibilityService;)V

    goto :goto_0

    .line 4289
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mhandlePlantingSearchMiss(Lcom/pikminx/helper/PetalAccessibilityService;)V

    .line 4292
    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/pikminx/helper/OcrScan$Frame;)V
    .locals 12
    .param p1, "frame"    # Lcom/pikminx/helper/OcrScan$Frame;

    .line 4240
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-virtual {p1}, Lcom/pikminx/helper/OcrScan$Frame;->captureGeometry()Lcom/pikminx/helper/CaptureGeometry;

    move-result-object v1

    iget-wide v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$generation:J

    iget-boolean v6, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$monitorRead:Z

    iget-object v7, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$scanTarget:Ljava/lang/String;

    iget v9, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$width:I

    iget v10, p0, Lcom/pikminx/helper/PetalAccessibilityService$9;->val$height:I

    new-instance v11, Lcom/pikminx/helper/PetalAccessibilityService$9$$ExternalSyntheticLambda0;

    move-object v2, v11

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v10}, Lcom/pikminx/helper/PetalAccessibilityService$9$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$9;JZLjava/lang/String;Lcom/pikminx/helper/OcrScan$Frame;II)V

    invoke-static {v0, v1, v11}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mrunWithCaptureGeometry(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/CaptureGeometry;Ljava/lang/Runnable;)V

    .line 4278
    return-void
.end method
