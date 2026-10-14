.class final Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;
.super Ljava/lang/Object;
.source "SeedlingCleanupAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pikminx/helper/SeedlingCleanupAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "YellowRun"
.end annotation


# instance fields
.field bottom:I

.field final top:I

.field yellowSamples:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "yellowSamples"    # I

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput p1, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;->top:I

    .line 374
    iput p2, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;->bottom:I

    .line 375
    iput p3, p0, Lcom/pikminx/helper/SeedlingCleanupAnalyzer$YellowRun;->yellowSamples:I

    .line 376
    return-void
.end method
