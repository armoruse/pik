.class interface abstract Lcom/pikminx/helper/OcrScanner$FrameCallback;
.super Ljava/lang/Object;
.source "OcrScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/OcrScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FrameCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Lcom/pikminx/helper/OcrScan$Frame;)V
.end method
