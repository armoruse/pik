.class Lcom/pikminx/helper/PetalAccessibilityService$10;
.super Ljava/lang/Object;
.source "PetalAccessibilityService.java"

# interfaces
.implements Lcom/pikminx/helper/OcrScanner$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->scanFocusedPetalRegion(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;

.field final synthetic val$generation:J

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method public static synthetic $r8$lambda$_03glfGeCZbYDE1jVlPYYShhJ2I(Lcom/pikminx/helper/PetalAccessibilityService$10;JLcom/pikminx/helper/OcrScan$Frame;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/pikminx/helper/PetalAccessibilityService$10;->lambda$onSuccess$0(JLcom/pikminx/helper/OcrScan$Frame;II)V

    return-void
.end method

.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;JII)V
    .locals 0
    .param p1, "this$0"    # Lcom/pikminx/helper/PetalAccessibilityService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5593
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iput-wide p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->val$generation:J

    iput p4, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->val$width:I

    iput p5, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(JLcom/pikminx/helper/OcrScan$Frame;II)V
    .locals 3
    .param p1, "generation"    # J
    .param p3, "frame"    # Lcom/pikminx/helper/OcrScan$Frame;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 5597
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0, p1, p2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5598
    return-void

    .line 5600
    :cond_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputbusy(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 5601
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetpostcardAutomation(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/PostcardAutomation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pikminx/helper/PostcardAutomation;->step()Lcom/pikminx/helper/PostcardAutomation$Step;

    move-result-object v0

    sget-object v1, Lcom/pikminx/helper/PostcardAutomation$Step;->SELECT_PETAL:Lcom/pikminx/helper/PostcardAutomation$Step;

    if-eq v0, v1, :cond_1

    .line 5602
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const-wide/16 v1, 0x708

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mschedule(Lcom/pikminx/helper/PetalAccessibilityService;J)V

    .line 5603
    return-void

    .line 5605
    :cond_1
    nop

    .line 5607
    invoke-virtual {p3}, Lcom/pikminx/helper/OcrScan$Frame;->tokens()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetpostcardAutomation(Lcom/pikminx/helper/PetalAccessibilityService;)Lcom/pikminx/helper/PostcardAutomation;

    move-result-object v1

    .line 5608
    invoke-virtual {v1}, Lcom/pikminx/helper/PostcardAutomation;->petalPotName()Ljava/lang/String;

    move-result-object v1

    .line 5606
    const/16 v2, 0x50

    invoke-static {v0, v1, v2, p4, p5}, Lcom/pikminx/helper/PostcardMatcher;->findSingleVisiblePetalPot(Ljava/util/List;Ljava/lang/String;III)Lcom/pikminx/helper/PostcardMatcher$PetalPot;

    move-result-object v0

    .line 5612
    .local v0, "focusedPot":Lcom/pikminx/helper/PostcardMatcher$PetalPot;
    if-nez v0, :cond_2

    .line 5613
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mhandleFocusedPetalMiss(Lcom/pikminx/helper/PetalAccessibilityService;)V

    goto :goto_0

    .line 5615
    :cond_2
    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v1, v0, p4, p5}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mconfirmPostcardPetalPot(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/PostcardMatcher$PetalPot;II)V

    .line 5617
    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .line 5622
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    iget-wide v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->val$generation:J

    invoke-static {v0, v1, v2}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$misActiveRun(Lcom/pikminx/helper/PetalAccessibilityService;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5623
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fputbusy(Lcom/pikminx/helper/PetalAccessibilityService;Z)V

    .line 5624
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mhandleFocusedPetalMiss(Lcom/pikminx/helper/PetalAccessibilityService;)V

    .line 5626
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/pikminx/helper/OcrScan$Frame;)V
    .locals 10
    .param p1, "frame"    # Lcom/pikminx/helper/OcrScan$Frame;

    .line 5596
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-virtual {p1}, Lcom/pikminx/helper/OcrScan$Frame;->captureGeometry()Lcom/pikminx/helper/CaptureGeometry;

    move-result-object v1

    iget-wide v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->val$generation:J

    iget v7, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->val$width:I

    iget v8, p0, Lcom/pikminx/helper/PetalAccessibilityService$10;->val$height:I

    new-instance v9, Lcom/pikminx/helper/PetalAccessibilityService$10$$ExternalSyntheticLambda0;

    move-object v2, v9

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/pikminx/helper/PetalAccessibilityService$10$$ExternalSyntheticLambda0;-><init>(Lcom/pikminx/helper/PetalAccessibilityService$10;JLcom/pikminx/helper/OcrScan$Frame;II)V

    invoke-static {v0, v1, v9}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mrunWithCaptureGeometry(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/CaptureGeometry;Ljava/lang/Runnable;)V

    .line 5618
    return-void
.end method
