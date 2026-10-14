.class public final synthetic Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/pikminx/helper/PetalMatcher$Token;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/pikminx/helper/PetalMatcher$Token;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda5;->f$0:Lcom/pikminx/helper/PetalMatcher$Token;

    iput p2, p0, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda5;->f$0:Lcom/pikminx/helper/PetalMatcher$Token;

    iget v1, p0, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Lcom/pikminx/helper/PetalMatcher$Token;

    invoke-static {v0, v1, p1}, Lcom/pikminx/helper/PostcardMatcher;->lambda$findMapPostcardName$5(Lcom/pikminx/helper/PetalMatcher$Token;ILcom/pikminx/helper/PetalMatcher$Token;)Z

    move-result p1

    return p1
.end method
