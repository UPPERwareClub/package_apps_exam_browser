.class public final synthetic Lcom/google/common/collect/ImmutableRangeMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Range;

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerBound()Lcom/google/common/collect/Cut;

    move-result-object p1

    return-object p1
.end method
