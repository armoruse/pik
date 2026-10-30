.class Lcom/pikminx/helper/PetalAccessibilityService$2;
.super Ljava/lang/Object;
.source "PetalAccessibilityService.java"

# interfaces
.implements Lcom/pikminx/helper/ScreenshotOverlayMask$PixelBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pikminx/helper/PetalAccessibilityService;->maskOverlayRegions(Landroid/graphics/Bitmap;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$rowBuffer:[I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 916
    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$2;->val$rowBuffer:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillRow(IIII)V
    .locals 9
    .param p1, "y"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "color"    # I

    .line 924
    sub-int v8, p3, p2

    .line 925
    .local v8, "length":I
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$2;->val$rowBuffer:[I

    const/4 v1, 0x0

    invoke-static {v0, v1, v8, p4}, Ljava/util/Arrays;->fill([IIII)V

    .line 926
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$2;->val$rowBuffer:[I

    const/4 v2, 0x0

    const/4 v7, 0x1

    move v3, v8

    move v4, p2

    move v5, p1

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 927
    return-void
.end method

.method public get(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 919
    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    return v0
.end method
