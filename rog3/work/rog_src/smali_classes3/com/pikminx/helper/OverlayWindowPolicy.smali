.class final Lcom/pikminx/helper/OverlayWindowPolicy;
.super Ljava/lang/Object;
.source "OverlayWindowPolicy.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static shouldAttemptRemoval(ZZ)Z
    .locals 1
    .param p0, "hasView"    # Z
    .param p1, "hasWindowManager"    # Z

    .line 8
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static shouldDismissNumberKeyboard(ZZZ)Z
    .locals 1
    .param p0, "isActionDown"    # Z
    .param p1, "hasFocusedNumberField"    # Z
    .param p2, "touchInsideAnyField"    # Z

    .line 12
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
