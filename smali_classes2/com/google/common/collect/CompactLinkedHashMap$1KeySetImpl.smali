.class Lcom/google/common/collect/CompactLinkedHashMap$1KeySetImpl;
.super Lcom/google/common/collect/CompactHashMap$KeySetView;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CompactLinkedHashMap;->createKeySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>.KeySetView;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactLinkedHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactLinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap$1KeySetImpl;->this$0:Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-void
.end method


# virtual methods
.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    const/16 v0, 0x11

    .line 261
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 250
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 256
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
