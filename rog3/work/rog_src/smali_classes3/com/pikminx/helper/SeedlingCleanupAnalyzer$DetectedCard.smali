.class final Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;
.super Ljava/lang/Object;
.source "SeedlingCleanupAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/SeedlingCleanupAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DetectedCard"
.end annotation


# instance fields
.field final centerX:I

.field final centerY:I

.field final col:I

.field final isLarge:Z

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(IIILjava/lang/String;Z)V
    .locals 0
    .param p1, "col"    # I
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "isLarge"    # Z

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->col:I

    .line 91
    iput p2, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerX:I

    .line 92
    iput p3, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->centerY:I

    .line 93
    iput-object p4, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->name:Ljava/lang/String;

    .line 94
    iput-boolean p5, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$DetectedCard;->isLarge:Z

    .line 95
    return-void
.end method
