.class Lcom/google/common/collect/HashBiMap$1$MapEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$1;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$1",
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 536
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 537
    iput-object p2, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    .line 556
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 557
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v2, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    if-ne v1, v2, :cond_0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v2, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$500(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "value already present: %s"

    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 561
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v2, v3}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 562
    new-instance v2, Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v4, v4, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 563
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-static {p1, v2, v1}, Lcom/google/common/collect/HashBiMap;->access$600(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 564
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->prevInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 565
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKeyInsertionOrder:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 566
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$1;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    move-result v1

    iput v1, p1, Lcom/google/common/collect/HashBiMap$1;->expectedModCount:I

    .line 567
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$1;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    if-ne p1, v1, :cond_2

    .line 568
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->this$1:Lcom/google/common/collect/HashBiMap$1;

    iput-object v2, p1, Lcom/google/common/collect/HashBiMap$1;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 570
    :cond_2
    iput-object v2, p0, Lcom/google/common/collect/HashBiMap$1$MapEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    return-object v0
.end method
