.class Lcom/google/common/graph/MapIteratorCache$1$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "MapIteratorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/MapIteratorCache$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/graph/MapIteratorCache$1;

.field final synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/graph/MapIteratorCache$1;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$entryIterator"
        }
    .end annotation

    .line 113
    iput-object p2, p0, Lcom/google/common/graph/MapIteratorCache$1$1;->val$entryIterator:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/common/graph/MapIteratorCache$1$1;->this$1:Lcom/google/common/graph/MapIteratorCache$1;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache$1$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache$1$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    iget-object v1, p0, Lcom/google/common/graph/MapIteratorCache$1$1;->this$1:Lcom/google/common/graph/MapIteratorCache$1;

    iget-object v1, v1, Lcom/google/common/graph/MapIteratorCache$1;->this$0:Lcom/google/common/graph/MapIteratorCache;

    invoke-static {v1, v0}, Lcom/google/common/graph/MapIteratorCache;->access$102(Lcom/google/common/graph/MapIteratorCache;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method