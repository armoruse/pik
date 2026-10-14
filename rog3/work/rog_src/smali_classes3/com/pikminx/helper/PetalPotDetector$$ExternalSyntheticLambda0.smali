.class public final synthetic Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(IIFFLjava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;->f$2:F

    iput p4, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;->f$3:F

    iput-object p5, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;->f$4:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    iget v0, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;->f$2:F

    iget v3, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;->f$3:F

    iget-object v4, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda0;->f$4:Ljava/util/function/Predicate;

    move-object v5, p1

    check-cast v5, Lcom/pikminx/helper/PetalMatcher$Token;

    invoke-static/range {v0 .. v5}, Lcom/pikminx/helper/PetalPotDetector;->lambda$findSingleVisible$3(IIFFLjava/util/function/Predicate;Lcom/pikminx/helper/PetalMatcher$Token;)Z

    move-result p1

    return p1
.end method
