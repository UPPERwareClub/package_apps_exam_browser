.class final Lcom/google/common/collect/ImmutableSortedAsList;
.super Lcom/google/common/collect/RegularImmutableAsList;
.source "ImmutableSortedAsList.java"

# interfaces
.implements Lcom/google/common/collect/SortedIterable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableAsList<",
        "TE;>;",
        "Lcom/google/common/collect/SortedIterable<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backingSet",
            "backingList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableAsList;-><init>(Lcom/google/common/collect/ImmutableCollection;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedAsList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method bridge synthetic delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 41
    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableAsList;->delegateCollection()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedAsList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedAsList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->size()I

    move-result v0

    .line 94
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->delegateList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/common/collect/ImmutableList$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/google/common/collect/ImmutableList$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->comparator()Ljava/util/Comparator;

    move-result-object v1

    const/16 v3, 0x515

    .line 91
    invoke-static {v0, v3, v2, v1}, Lcom/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method subListUnchecked(II)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableAsList;->subListUnchecked(II)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 86
    new-instance p2, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-virtual {p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableAsList;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method