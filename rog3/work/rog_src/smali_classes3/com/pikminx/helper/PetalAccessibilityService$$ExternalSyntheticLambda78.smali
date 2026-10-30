.class public final synthetic Lcom/pikminx/helper/PetalAccessibilityService$$ExternalSyntheticLambda78;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(IILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$$ExternalSyntheticLambda78;->f$0:I

    iput p2, p0, Lcom/pikminx/helper/PetalAccessibilityService$$ExternalSyntheticLambda78;->f$1:I

    iput-object p3, p0, Lcom/pikminx/helper/PetalAccessibilityService$$ExternalSyntheticLambda78;->f$2:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$$ExternalSyntheticLambda78;->f$0:I

    iget v1, p0, Lcom/pikminx/helper/PetalAccessibilityService$$ExternalSyntheticLambda78;->f$1:I

    iget-object v2, p0, Lcom/pikminx/helper/PetalAccessibilityService$$ExternalSyntheticLambda78;->f$2:Landroid/graphics/Bitmap;

    check-cast p1, Lcom/pikminx/helper/PetalMatcher$Selection;

    invoke-static {v0, v1, v2, p1}, Lcom/pikminx/helper/PetalAccessibilityService;->lambda$handleTokens$0(IILandroid/graphics/Bitmap;Lcom/pikminx/helper/PetalMatcher$Selection;)I

    move-result p1

    return p1
.end method
