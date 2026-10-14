.class public final synthetic Lcom/pikminx/helper/PetalAccessibilityService$8$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# instance fields
.field public final synthetic f$0:Lcom/pikminx/helper/OcrScan$Frame;


# direct methods
.method public synthetic constructor <init>(Lcom/pikminx/helper/OcrScan$Frame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PetalAccessibilityService$8$$ExternalSyntheticLambda1;->f$0:Lcom/pikminx/helper/OcrScan$Frame;

    return-void
.end method


# virtual methods
.method public final applyAsInt(II)I
    .locals 1

    iget-object v0, p0, Lcom/pikminx/helper/PetalAccessibilityService$8$$ExternalSyntheticLambda1;->f$0:Lcom/pikminx/helper/OcrScan$Frame;

    invoke-virtual {v0, p1, p2}, Lcom/pikminx/helper/OcrScan$Frame;->pixelAtSource(II)I

    move-result p1

    return p1
.end method
