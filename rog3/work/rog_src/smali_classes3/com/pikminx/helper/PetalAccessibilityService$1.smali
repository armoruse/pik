.class Lcom/pikminx/helper/PetalAccessibilityService$1;
.super Ljava/lang/Object;
.source "PetalAccessibilityService.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->screenshotCallback(Ljava/util/List;JLcom/pikminx/helper/CaptureGeometry$Mode;Lcom/pikminx/helper/CaptureGeometry$Bounds;Lcom/pikminx/helper/CaptureGeometry$Bounds;IJ)Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;

.field final synthetic val$captureMode:Lcom/pikminx/helper/CaptureGeometry$Mode;

.field final synthetic val$displayId:I

.field final synthetic val$expectedSourceBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

.field final synthetic val$generation:J

.field final synthetic val$overlayRegions:Ljava/util/List;

.field final synthetic val$sequence:J

.field final synthetic val$targetWindowBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;


# direct methods
.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;JLcom/pikminx/helper/CaptureGeometry$Mode;Lcom/pikminx/helper/CaptureGeometry$Bounds;Lcom/pikminx/helper/CaptureGeometry$Bounds;IJLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pikminx/helper/PetalAccessibilityService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 725
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-wide p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$generation:J

    iput-object p4, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$captureMode:Lcom/pikminx/helper/CaptureGeometry$Mode;

    iput-object p5, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$expectedSourceBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

    iput-object p6, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$targetWindowBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

    iput p7, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$displayId:I

    iput-wide p8, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$sequence:J

    iput-object p10, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$overlayRegions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .line 806
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v2, Lcom/pikminx/helper/R$string;->status_capture_failed:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$generation:J

    invoke-static {v0, v1, v2, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mscanFailed(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;J)V

    .line 810
    return-void
.end method

.method public onSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
    .locals 21
    .param p1, "result"    # Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    .line 728
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    move-object/from16 v2, p1

    invoke-static {v0, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mcopyBitmap(Lcom/pikminx/helper/PetalAccessibilityService;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 729
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v3, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$generation:J

    invoke-static {v0, v3, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 730
    if-eqz v9, :cond_0

    .line 731
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 733
    :cond_0
    return-void

    .line 735
    :cond_1
    if-nez v9, :cond_2

    .line 736
    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v3, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v4, Lcom/pikminx/helper/R$string;->status_copy_failed:I

    invoke-virtual {v3, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$generation:J

    invoke-static {v0, v3, v4, v5}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mscanFailed(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;J)V

    .line 737
    return-void

    .line 739
    :cond_2
    new-instance v6, Lcom/pikminx/helper/CaptureGeometry;

    iget-object v11, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$captureMode:Lcom/pikminx/helper/CaptureGeometry$Mode;

    .line 741
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 742
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    iget-object v14, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$expectedSourceBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

    iget-object v15, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$targetWindowBoundsOnScreen:Lcom/pikminx/helper/CaptureGeometry$Bounds;

    iget v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$displayId:I

    iget-wide v3, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$sequence:J

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->getTimestamp()J

    move-result-wide v19

    move-object v10, v6

    move/from16 v16, v0

    move-wide/from16 v17, v3

    invoke-direct/range {v10 .. v20}, Lcom/pikminx/helper/CaptureGeometry;-><init>(Lcom/pikminx/helper/CaptureGeometry$Mode;IILcom/pikminx/helper/CaptureGeometry$Bounds;Lcom/pikminx/helper/CaptureGeometry$Bounds;IJJ)V

    .line 748
    .local v6, "captureGeometry":Lcom/pikminx/helper/CaptureGeometry;
    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$overlayRegions:Ljava/util/List;

    invoke-static {v9, v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$smmaskOverlayRegions(Landroid/graphics/Bitmap;Ljava/util/List;)V

    .line 751
    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetautomationMode(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    move-result-object v0

    sget-object v3, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->POSTCARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetpostcardAutomation(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/PostcardAutomation;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Lcom/pikminx/helper/PostcardAutomation;->step()Lcom/pikminx/helper/PostcardAutomation$Step;

    move-result-object v0

    sget-object v3, Lcom/pikminx/helper/PostcardAutomation$Step;->CLOSE_PETAL_KEYBOARD:Lcom/pikminx/helper/PostcardAutomation$Step;

    if-ne v0, v3, :cond_3

    .line 754
    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputbusy(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 756
    :try_start_0
    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mclosePostcardKeyboard(Lcom/pikminx/helper/PetalAccessibilityService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 759
    nop

    .line 760
    return-void

    .line 758
    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 759
    throw v0

    .line 762
    :cond_3
    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetautomationMode(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    move-result-object v0

    sget-object v3, Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;->PLANTING:Lcom/pikminx/helper/PetalAccessibilityService$AutomationMode;

    if-ne v0, v3, :cond_4

    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetautomationStep(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    move-result-object v0

    sget-object v3, Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;->CLOSING_SEARCH_KEYBOARD:Lcom/pikminx/helper/PetalAccessibilityService$AutomationStep;

    if-ne v0, v3, :cond_4

    .line 764
    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputbusy(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 766
    :try_start_1
    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mclosePlantingSearchKeyboard(Lcom/pikminx/helper/PetalAccessibilityService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 768
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 769
    nop

    .line 770
    return-void

    .line 768
    :catchall_1
    move-exception v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 769
    throw v0

    .line 772
    :cond_4
    iget-object v0, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mocrProfileForCurrentStep(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/OcrScan$Profile;

    move-result-object v0

    .line 773
    .local v0, "profile":Lcom/pikminx/helper/OcrScan$Profile;
    new-instance v8, Lcom/pikminx/helper/PetalAccessibilityService$1$1;

    invoke-direct {v8, v1, v9}, Lcom/pikminx/helper/PetalAccessibilityService$1$1;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$1;Landroid/graphics/Bitmap;)V

    .line 801
    .local v8, "ocrCallback":Lcom/pikminx/helper/OcrScanner$FrameCallback;
    iget-object v3, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetscanner(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/OcrScanner;

    move-result-object v3

    iget-object v4, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-virtual {v4}, Lcom/pikminx/helper/PetalAccessibilityService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    move-object v4, v9

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, Lcom/pikminx/helper/OcrScanner;->scan(Landroid/graphics/Bitmap;Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/CaptureGeometry;Ljava/util/concurrent/Executor;Lcom/pikminx/helper/OcrScanner$FrameCallback;)V

    .line 802
    return-void
.end method
