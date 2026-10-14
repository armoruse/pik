.class final Lcom/pikminx/helper/PostcardPageRecovery;
.super Ljava/lang/Object;
.source "PostcardPageRecovery.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isPetalFlow(Lcom/pikminx/helper/PostcardAutomation$Step;)Z
    .locals 1
    .param p0, "step"    # Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 13
    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->OPEN_PETAL_SEARCH:Lcom/pikminx/helper/PostcardAutomation$Step;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->ENTER_PETAL_SEARCH:Lcom/pikminx/helper/PostcardAutomation$Step;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->CLOSE_PETAL_KEYBOARD:Lcom/pikminx/helper/PostcardAutomation$Step;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->SELECT_PETAL:Lcom/pikminx/helper/PostcardAutomation$Step;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->TAP_NEXT:Lcom/pikminx/helper/PostcardAutomation$Step;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->NEXT:Lcom/pikminx/helper/PostcardAutomation$Step;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/pikminx/helper/PostcardAutomation$Step;->OPEN_SORT:Lcom/pikminx/helper/PostcardAutomation$Step;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static shouldRetryStableFrame(Lcom/pikminx/helper/PostcardMatcher$Page;Lcom/pikminx/helper/PostcardAutomation$Step;)Z
    .locals 1
    .param p0, "detectedPage"    # Lcom/pikminx/helper/PostcardMatcher$Page;
    .param p1, "step"    # Lcom/pikminx/helper/PostcardAutomation$Step;

    .line 9
    sget-object v0, Lcom/pikminx/helper/PostcardMatcher$Page;->UNKNOWN:Lcom/pikminx/helper/PostcardMatcher$Page;

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/pikminx/helper/PostcardPageRecovery;->isPetalFlow(Lcom/pikminx/helper/PostcardAutomation$Step;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
