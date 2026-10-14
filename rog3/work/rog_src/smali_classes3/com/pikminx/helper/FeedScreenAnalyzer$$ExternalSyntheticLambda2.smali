.class public final synthetic Lcom/pikminx/helper/FeedScreenAnalyzer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;

    check-cast p2, Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;

    invoke-static {p1, p2}, Lcom/pikminx/helper/FeedScreenAnalyzer;->lambda$findBloomTargets$1(Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;Lcom/pikminx/helper/FeedScreenAnalyzer$BloomTarget;)I

    move-result p1

    return p1
.end method
