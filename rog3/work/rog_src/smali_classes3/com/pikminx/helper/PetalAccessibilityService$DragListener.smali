.class final Lcom/pikminx/helper/PetalAccessibilityService$DragListener;
.super Ljava/lang/Object;
.source "PetalAccessibilityService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DragListener"
.end annotation


# instance fields
.field private moved:Z

.field private startX:I

.field private startY:I

.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;

.field private touchX:F

.field private touchY:F


# direct methods
.method private constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;)V
    .locals 0

    .line 8075
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;Lcom/pikminx/helper/PetalAccessibilityService$DragListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;-><init>(Lcom/pikminx/helper/PetalAccessibilityService;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 8085
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 8086
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetoverlayParams(Lcom/pikminx/helper/PetalAccessibilityService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->startX:I

    .line 8087
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetoverlayParams(Lcom/pikminx/helper/PetalAccessibilityService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->startY:I

    .line 8088
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->touchX:F

    .line 8089
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->touchY:F

    .line 8090
    iput-boolean v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->moved:Z

    .line 8091
    return v2

    .line 8093
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 8094
    iget-boolean v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->moved:Z

    if-nez v0, :cond_1

    .line 8095
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->touchX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 8096
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->touchY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v3, v4}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mdp(Lcom/pikminx/helper/PetalAccessibilityService;I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->moved:Z

    .line 8097
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetoverlayParams(Lcom/pikminx/helper/PetalAccessibilityService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->startX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->touchX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 8098
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetoverlayParams(Lcom/pikminx/helper/PetalAccessibilityService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->startY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->touchY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 8099
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetoverlay(Lcom/pikminx/helper/PetalAccessibilityService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetoverlay(Lcom/pikminx/helper/PetalAccessibilityService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8101
    :try_start_0
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetwindowManager(Lcom/pikminx/helper/PetalAccessibilityService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v1}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetoverlay(Lcom/pikminx/helper/PetalAccessibilityService;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v3}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$fgetoverlayParams(Lcom/pikminx/helper/PetalAccessibilityService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8102
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    invoke-static {v0}, Lcom/pikminx/helper/PetalAccessibilityService;->-$$Nest$mupdateSeedlingNextButtonPosition(Lcom/pikminx/helper/PetalAccessibilityService;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8105
    goto :goto_0

    .line 8103
    :catch_0
    move-exception v0

    .line 8104
    .local v0, "exception":Ljava/lang/RuntimeException;
    const-string v1, "PikminX"

    const-string v3, "Unable to move icon overlay"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8107
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    :cond_3
    :goto_0
    return v2

    .line 8109
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 8110
    iget-boolean v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$DragListener;->moved:Z

    if-nez v0, :cond_5

    .line 8111
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 8113
    :cond_5
    return v2

    .line 8115
    :cond_6
    return v1
.end method
