.class public final synthetic Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:F

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;IIIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput p2, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$4:F

    iput p6, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$5:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget v1, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$4:F

    iget v5, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda1;->f$5:F

    move-object v6, p1

    check-cast v6, Lcom/pikminx/helper/PetalMatcher$Token;

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/PetalPotDetector;->lambda$findSingleVisible$4(Ljava/util/List;IIIFFLcom/pikminx/helper/PetalMatcher$Token;)Lcom/pikminx/helper/PetalPotDetector$Match;

    move-result-object p1

    return-object p1
.end method
