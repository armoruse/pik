.class final Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;
.super Ljava/lang/Object;
.source "SeedlingCleanupAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/SeedlingCleanupAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field private final inventoryScreen:Z

.field private final protectedLargeCount:I

.field private final recyclable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/List;I)V
    .locals 1
    .param p1, "inventoryScreen"    # Z
    .param p3, "protectedLargeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;",
            ">;I)V"
        }
    .end annotation

    .line 63
    .local p2, "recyclable":Ljava/util/List;, "Ljava/util/List<Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;->inventoryScreen:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;->recyclable:Ljava/util/List;

    .line 66
    iput p3, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;->protectedLargeCount:I

    .line 67
    return-void
.end method


# virtual methods
.method inventoryScreen()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;->inventoryScreen:Z

    return v0
.end method

.method protectedLargeCount()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;->protectedLargeCount:I

    return v0
.end method

.method recyclable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Result;->recyclable:Ljava/util/List;

    return-object v0
.end method
