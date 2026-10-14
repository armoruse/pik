.class Lcom/pikminx/helper/PetalAccessibilityService$1$1;
.super Ljava/lang/Object;
.source "PetalAccessibilityService.java"

# interfaces
.implements Lcom/pikminx/helper/OcrScanner$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService$1;->onSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public static synthetic $r8$lambda$s6ejcBMRxG6n8wETaojDfnlU1xE(Lcom/pikminx/helper/PetalAccessibilityService$1$1;Lcom/pikminx/helper/OcrScan$Frame;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->lambda$onSuccess$0(Lcom/pikminx/helper/OcrScan$Frame;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/pikminx/helper/PetalAccessibilityService$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 773
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

    iput-object p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Lcom/pikminx/helper/OcrScan$Frame;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "frame"    # Lcom/pikminx/helper/OcrScan$Frame;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 784
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

    iget-object v0, v0, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mhandleTokens(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/OcrScan$Frame;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Exception;

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

    iget-object v0, v0, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

    iget-wide v1, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    .line 795
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

    iget-object v0, v0, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

    iget-object v1, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    sget v2, Lcom/pikminx/helper/R$string;->status_ocr_failed:I

    invoke-virtual {v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

    iget-wide v2, v2, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$generation:J

    invoke-static {v0, v1, v2, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mscanFailed(Lcom/pikminx/helper/PetalAccessibilityService;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 798
    nop

    .line 799
    return-void

    .line 797
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 798
    throw v0
.end method

.method public onSuccess(Lcom/pikminx/helper/OcrScan$Frame;)V
    .locals 4
    .param p1, "frame"    # Lcom/pikminx/helper/OcrScan$Frame;

    .line 776
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

    iget-object v0, v0, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

    iget-wide v1, v1, Lcom/pikminx/helper/PetalAccessibilityService$1;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 778
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

    iget-object v0, v0, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputbusy(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->this$1:Lcom/pikminx/helper/PetalAccessibilityService$1;

    iget-object v0, v0, Lcom/pikminx/helper/PetalAccessibilityService$1;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 784
    invoke-virtual {p1}, Lcom/pikminx/helper/OcrScan$Frame;->captureGeometry()Lcom/pikminx/helper/CaptureGeometry;

    move-result-object v1

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/pikminx/helper/PetalAccessibilityService$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v2}, Lcom/pikminx/helper/PetalAccessibilityService$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$1$1;Lcom/pikminx/helper/OcrScan$Frame;Landroid/graphics/Bitmap;)V

    .line 783
    invoke-static {v0, v1, v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mrunWithCaptureGeometry(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/CaptureGeometry;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 787
    nop

    .line 788
    return-void

    .line 786
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 787
    throw v0
.end method
