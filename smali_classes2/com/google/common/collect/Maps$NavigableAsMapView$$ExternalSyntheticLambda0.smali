.class public final synthetic Lcom/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$NavigableAsMapView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Maps$NavigableAsMapView;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$NavigableAsMapView;->lambda$entrySpliterator$0$com-google-common-collect-Maps$NavigableAsMapView(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
