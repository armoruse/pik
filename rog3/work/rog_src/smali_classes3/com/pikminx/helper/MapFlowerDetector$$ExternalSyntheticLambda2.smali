.class public final synthetic Lcom/pikminx/helper/MapFlowerDetector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/pikminx/helper/MapFlowerDetector$Component;


# direct methods
.method public synthetic constructor <init>(Lcom/pikminx/helper/MapFlowerDetector$Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/MapFlowerDetector$$ExternalSyntheticLambda2;->f$0:Lcom/pikminx/helper/MapFlowerDetector$Component;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/pikminx/helper/MapFlowerDetector$$ExternalSyntheticLambda2;->f$0:Lcom/pikminx/helper/MapFlowerDetector$Component;

    check-cast p1, Lcom/pikminx/helper/MapFlowerDetector$Point;

    invoke-static {v0, p1}, Lcom/pikminx/helper/MapFlowerDetector;->lambda$findCandidates$1(Lcom/pikminx/helper/MapFlowerDetector$Component;Lcom/pikminx/helper/MapFlowerDetector$Point;)Z

    move-result p1

    return p1
.end method
