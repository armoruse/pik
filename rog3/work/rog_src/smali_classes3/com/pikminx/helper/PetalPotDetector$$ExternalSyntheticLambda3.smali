.class public final synthetic Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IIFFLjava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$3:F

    iput p5, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$4:F

    iput-object p6, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$5:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$2:I

    iget v3, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$3:F

    iget v4, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$4:F

    iget-object v5, p0, Lcom/pikminx/helper/PetalPotDetector$$ExternalSyntheticLambda3;->f$5:Ljava/util/function/Function;

    move-object v6, p1

    check-cast v6, Lcom/pikminx/helper/PetalMatcher$Token;

    invoke-static/range {v0 .. v6}, Lcom/pikminx/helper/PetalPotDetector;->lambda$find$0(Ljava/lang/String;IIFFLjava/util/function/Function;Lcom/pikminx/helper/PetalMatcher$Token;)Z

    move-result p1

    return p1
.end method
