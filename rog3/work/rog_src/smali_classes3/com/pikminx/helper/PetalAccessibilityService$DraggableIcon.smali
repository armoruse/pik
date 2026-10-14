.class final Lcom/pikminx/helper/PetalAccessibilityService$DraggableIcon;
.super Landroid/widget/ImageButton;
.source "PetalAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/PetalAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DraggableIcon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pikminx/helper/PetalAccessibilityService;


# direct methods
.method constructor <init>(Lcom/pikminx/helper/PetalAccessibilityService;)V
    .locals 0

    .line 8121
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$DraggableIcon;->this$0:Lcom/pikminx/helper/PetalAccessibilityService;

    .line 8122
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 8123
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    .line 8127
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0
.end method
