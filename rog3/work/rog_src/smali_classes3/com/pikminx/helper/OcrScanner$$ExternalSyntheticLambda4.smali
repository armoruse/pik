.class public final synthetic Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/pikminx/helper/OcrScanner;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/pikminx/helper/OcrScanner$RecognizerEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/pikminx/helper/OcrScanner;Ljava/util/List;Lcom/pikminx/helper/OcrScanner$RecognizerEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda4;->f$0:Lcom/pikminx/helper/OcrScanner;

    iput-object p2, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda4;->f$2:Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda4;->f$0:Lcom/pikminx/helper/OcrScanner;

    iget-object v1, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/pikminx/helper/OcrScanner$$ExternalSyntheticLambda4;->f$2:Lcom/pikminx/helper/OcrScanner$RecognizerEntry;

    check-cast p1, Lcom/google/mlkit/vision/text/Text;

    invoke-static {v0, v1, v2, p1}, Lcom/pikminx/helper/OcrScanner;->$r8$lambda$9fDdLmoUAJ24-orzLu2nb-oKKwo(Lcom/pikminx/helper/OcrScanner;Ljava/util/List;Lcom/pikminx/helper/OcrScanner$RecognizerEntry;Lcom/google/mlkit/vision/text/Text;)V

    return-void
.end method
