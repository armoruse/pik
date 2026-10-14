.class public final synthetic Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/pikminx/helper/PetalMatcher$Token;

    invoke-static {p1}, Lcom/pikminx/helper/PostcardMatcher;->$r8$lambda$A0jctdvFT2_DGiOMOK9HART79hg(Lcom/pikminx/helper/PetalMatcher$Token;)Lcom/pikminx/helper/PostcardMatcher$Target;

    move-result-object p1

    return-object p1
.end method
