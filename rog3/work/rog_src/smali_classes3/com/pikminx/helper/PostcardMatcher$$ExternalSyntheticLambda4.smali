.class public final synthetic Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/pikminx/helper/PetalMatcher$Token;


# direct methods
.method public synthetic constructor <init>(Lcom/pikminx/helper/PetalMatcher$Token;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda4;->f$0:Lcom/pikminx/helper/PetalMatcher$Token;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda4;->f$0:Lcom/pikminx/helper/PetalMatcher$Token;

    check-cast p1, Lcom/pikminx/helper/PetalMatcher$Token;

    invoke-static {v0, p1}, Lcom/pikminx/helper/PostcardMatcher;->lambda$findMapPostcardName$4(Lcom/pikminx/helper/PetalMatcher$Token;Lcom/pikminx/helper/PetalMatcher$Token;)Z

    move-result p1

    return p1
.end method
