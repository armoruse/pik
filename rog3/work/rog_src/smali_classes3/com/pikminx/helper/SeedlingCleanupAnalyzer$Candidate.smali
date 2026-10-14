.class final Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;
.super Ljava/lang/Object;
.source "SeedlingCleanupAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/SeedlingCleanupAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Candidate"
.end annotation


# instance fields
.field private final centerX:I

.field private final centerY:I

.field private final protectedLarge:Z

.field private final yellowSamples:I


# direct methods
.method constructor <init>(IIIZ)V
    .locals 0
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "yellowSamples"    # I
    .param p4, "protectedLarge"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->centerX:I

    .line 36
    iput p2, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->centerY:I

    .line 37
    iput p3, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->yellowSamples:I

    .line 38
    iput-boolean p4, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->protectedLarge:Z

    .line 39
    return-void
.end method


# virtual methods
.method centerX()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->centerX:I

    return v0
.end method

.method centerY()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->centerY:I

    return v0
.end method

.method protectedLarge()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->protectedLarge:Z

    return v0
.end method

.method yellowSamples()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$Candidate;->yellowSamples:I

    return v0
.end method
