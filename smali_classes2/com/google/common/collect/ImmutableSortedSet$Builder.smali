.class public final Lcom/google/common/collect/ImmutableSortedSet$Builder;
.super Lcom/google/common/collect/ImmutableSet$Builder;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 452
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comparator",
            "expectedSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 458
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>(Z)V

    .line 459
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    .line 460
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 461
    iput p1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    return-void
.end method

.method private sortAndDedup()V
    .locals 5

    .line 470
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x1

    move v1, v0

    .line 475
    :goto_0
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-ge v0, v2, :cond_3

    .line 476
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v1, -0x1

    aget-object v4, v3, v4

    aget-object v3, v3, v0

    invoke-interface {v2, v4, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v0

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_1
    if-gtz v2, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " compare method violates its contract"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 485
    iput v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elements"
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elements"
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 500
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->copyIfNecessary()V

    .line 502
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->sortAndDedup()V

    .line 514
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    .line 515
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 516
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 534
    invoke-static {p1}, Lcom/google/common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 535
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 536
    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elements"
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elements"
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elements"
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elements"
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 552
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 567
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 435
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->build()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 435
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->build()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 588
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->sortAndDedup()V

    .line 589
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 592
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->forceCopy:Z

    .line 593
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    .line 594
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method bridge synthetic combine(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "builder"
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->combine(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method combine(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 574
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->copyIfNecessary()V

    .line 575
    check-cast p1, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    const/4 v0, 0x0

    .line 576
    :goto_0
    iget v1, p1, Lcom/google/common/collect/ImmutableSortedSet$Builder;->n:I

    if-ge v0, v1, :cond_0

    .line 577
    iget-object v1, p1, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method copy()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    return-void
.end method
