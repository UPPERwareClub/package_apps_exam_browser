.class public final synthetic Lcom/google/common/collect/Multimaps$AsMap$EntrySet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/common/collect/Multimaps$AsMap$EntrySet;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Multimaps$AsMap$EntrySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Multimaps$AsMap$EntrySet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Multimaps$AsMap$EntrySet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->lambda$iterator$0$com-google-common-collect-Multimaps$AsMap$EntrySet(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
