.class Lcom/pikminx/helper/ScreenshotOverlayMask$1;
.super Ljava/lang/Object;
.source "ScreenshotOverlayMask.java"

# interfaces
.implements Lcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/ScreenshotOverlayMask;->erase(II[ILjava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pixels:[I

.field final synthetic val$width:I


# direct methods
.method constructor <init>([II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/pikminx/helper/ScreenshotOverlayMask$1;->val$pixels:[I

    iput p2, p0, Lcom/pikminx/helper/ScreenshotOverlayMask$1;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillRow(IIII)V
    .locals 3
    .param p1, "y"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "color"    # I

    .line 36
    iget-object v0, p0, Lcom/pikminx/helper/ScreenshotOverlayMask$1;->val$pixels:[I

    iget v1, p0, Lcom/pikminx/helper/ScreenshotOverlayMask$1;->val$width:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    iget v2, p0, Lcom/pikminx/helper/ScreenshotOverlayMask$1;->val$width:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p3

    invoke-static {v0, v1, v2, p4}, Ljava/util/Arrays;->fill([IIII)V

    .line 37
    return-void
.end method

.method public get(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 31
    iget-object v0, p0, Lcom/pikminx/helper/ScreenshotOverlayMask$1;->val$pixels:[I

    iget v1, p0, Lcom/pikminx/helper/ScreenshotOverlayMask$1;->val$width:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method
