.class Lcom/google/common/graph/UndirectedMultiNetworkConnections$1;
.super Lcom/google/common/graph/MultiEdgesConnecting;
.source "UndirectedMultiNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/UndirectedMultiNetworkConnections;->edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/MultiEdgesConnecting<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/UndirectedMultiNetworkConnections;

.field final synthetic val$node:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/graph/UndirectedMultiNetworkConnections;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "outEdgeToNode",
            "targetNode",
            "val$node"
        }
    .end annotation

    .line 77
    iput-object p4, p0, Lcom/google/common/graph/UndirectedMultiNetworkConnections$1;->val$node:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/graph/UndirectedMultiNetworkConnections$1;->this$0:Lcom/google/common/graph/UndirectedMultiNetworkConnections;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/MultiEdgesConnecting;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/google/common/graph/UndirectedMultiNetworkConnections$1;->this$0:Lcom/google/common/graph/UndirectedMultiNetworkConnections;

    invoke-static {v0}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->access$000(Lcom/google/common/graph/UndirectedMultiNetworkConnections;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/UndirectedMultiNetworkConnections$1;->val$node:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
