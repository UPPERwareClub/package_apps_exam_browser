.class public final synthetic Lcom/google/common/collect/Streams$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Streams$TemporaryPair;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/Streams$TemporaryPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method