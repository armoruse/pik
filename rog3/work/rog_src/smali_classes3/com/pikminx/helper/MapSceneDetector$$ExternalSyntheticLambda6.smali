.class public final synthetic Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/pikminx/helper/MapFlowerDetector$Point;


# direct methods
.method public synthetic constructor <init>(Lcom/pikminx/helper/MapFlowerDetector$Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda6;->f$0:Lcom/pikminx/helper/MapFlowerDetector$Point;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/pikminx/helper/MapSceneDetector$$ExternalSyntheticLambda6;->f$0:Lcom/pikminx/helper/MapFlowerDetector$Point;

    check-cast p1, Lcom/pikminx/helper/MapFlowerDetector$Point;

    invoke-static {v0, p1}, Lcom/pikminx/helper/MapSceneDetector;->lambda$detect$0(Lcom/pikminx/helper/MapFlowerDetector$Point;Lcom/pikminx/helper/MapFlowerDetector$Point;)Z

    move-result p1

    return p1
.end method
