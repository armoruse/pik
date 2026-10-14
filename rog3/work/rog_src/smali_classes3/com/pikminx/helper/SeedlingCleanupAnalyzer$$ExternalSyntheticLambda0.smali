.class public final synthetic Lcom/pikminx/helper/SeedlingCleanupAnalyzer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;

    check-cast p2, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;

    invoke-static {v0, p1, p2}, Lcom/pikminx/helper/SeedlingCleanupAnalyzer;->lambda$extractCardsFromTokens$2(ILcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;)I

    move-result p1

    return p1
.end method
