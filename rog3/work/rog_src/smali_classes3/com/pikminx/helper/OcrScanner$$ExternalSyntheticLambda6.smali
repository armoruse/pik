.class public final synthetic Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/pikminx/helper/OcrScanner;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$10:J

.field public final synthetic f$2:Lcom/pikminx/helper/OcrScan$Transform;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$5:Lcom/pikminx/helper/OcrScan$Profile;

.field public final synthetic f$6:Lcom/pikminx/helper/CaptureGeometry;

.field public final synthetic f$7:Lcom/pikminx/helper/OcrScanner$FrameCallback;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/pikminx/helper/OcrScanner;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/pikminx/helper/OcrScan$Transform;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/CaptureGeometry;Lcom/pikminx/helper/OcrScanner$FrameCallback;ZLandroid/graphics/Bitmap;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$0:Lcom/pikminx/helper/OcrScanner;

    iput-object p2, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$2:Lcom/pikminx/helper/OcrScan$Transform;

    iput-object p4, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$4:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$5:Lcom/pikminx/helper/OcrScan$Profile;

    iput-object p7, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$6:Lcom/pikminx/helper/CaptureGeometry;

    iput-object p8, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$7:Lcom/pikminx/helper/OcrScanner$FrameCallback;

    iput-boolean p9, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$8:Z

    iput-object p10, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$9:Landroid/graphics/Bitmap;

    iput-wide p11, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$10:J

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 13

    iget-object v0, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$0:Lcom/pikminx/helper/OcrScanner;

    iget-object v1, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$1:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$2:Lcom/pikminx/helper/OcrScan$Transform;

    iget-object v3, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$4:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$5:Lcom/pikminx/helper/OcrScan$Profile;

    iget-object v6, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$6:Lcom/pikminx/helper/CaptureGeometry;

    iget-object v7, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$7:Lcom/pikminx/helper/OcrScanner$FrameCallback;

    iget-boolean v8, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$8:Z

    iget-object v9, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$9:Landroid/graphics/Bitmap;

    iget-wide v10, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda6;->f$10:J

    move-object v12, p1

    invoke-static/range {v0 .. v12}, Lcom/pikminx/helper/OcrScanner;->$r8$lambda$Qgu987jTumWlYBujjq1-Z1_mxVQ(Lcom/pikminx/helper/OcrScanner;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/pikminx/helper/OcrScan$Transform;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Lcom/pikminx/helper/OcrScan$Profile;Lcom/pikminx/helper/CaptureGeometry;Lcom/pikminx/helper/OcrScanner$FrameCallback;ZLandroid/graphics/Bitmap;JLcom/google/android/gms/tasks/Task;)V

    return-void
.end method
