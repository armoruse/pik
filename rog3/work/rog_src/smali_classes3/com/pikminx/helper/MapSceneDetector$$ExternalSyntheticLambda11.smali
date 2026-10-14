.class public final synthetic Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/pikminx/helper/MapFlowerDetector$Point;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/pikminx/helper/MapFlowerDetector$Point;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda11;->f$0:Lcom/pikminx/helper/MapFlowerDetector$Point;

    iput p2, p0, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda11;->f$1:I

    iput p3, p0, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda11;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda11;->f$0:Lcom/pikminx/helper/MapFlowerDetector$Point;

    iget v1, p0, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda11;->f$1:I

    iget v2, p0, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda11;->f$2:I

    check-cast p1, Lcom/pikminx/helper/MapFlowerDetector$Point;

    invoke-static {v0, v1, v2, p1}, Lcom/pikminx/helper/MapSceneDetector;->lambda$detect$3(Lcom/pikminx/helper/MapFlowerDetector$Point;IILcom/pikminx/helper/MapFlowerDetector$Point;)Z

    move-result p1

    return p1
.end method
