.class public final synthetic Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda8;->f$0:I

    iput p2, p0, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda8;->f$0:I

    iget v1, p0, Lcom/pikminx/helper/PostcardMatcher$$ExternalSyntheticLambda8;->f$1:I

    check-cast p1, Lcom/pikminx/helper/PetalMatcher$Token;

    invoke-static {v0, v1, p1}, Lcom/pikminx/helper/PostcardMatcher;->lambda$findDetailFlowerName$11(IILcom/pikminx/helper/PetalMatcher$Token;)I

    move-result p1

    return p1
.end method
