.class Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;
.super Lcom/google/common/collect/HashBiMap$Itr;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap<",
        "TK;TV;>.Itr<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 687
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap$Itr;-><init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$1;)V

    return-void
.end method


# virtual methods
.method output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 691
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object p1
.end method
