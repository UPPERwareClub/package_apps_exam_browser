.class public Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field entriesUsed:Z

.field size:I

.field valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 427
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-array p1, p1, [Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    const/4 p1, 0x0

    .line 433
    iput p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    .line 434
    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    return-void
.end method

.method private build(Z)Lcom/google/common/collect/ImmutableMap;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwIfDuplicateKeys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 537
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 554
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-nez v3, :cond_0

    .line 555
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    goto :goto_0

    .line 557
    :cond_0
    iget-boolean v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    if-eqz v3, :cond_1

    .line 558
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Map$Entry;

    iput-object v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    .line 561
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    if-nez p1, :cond_2

    .line 565
    iget v4, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->lastEntryForEachKey([Ljava/util/Map$Entry;I)[Ljava/util/Map$Entry;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 568
    array-length v0, v4

    move-object v3, v4

    .line 571
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 575
    invoke-static {v4}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-static {}, Lcom/google/common/collect/Maps;->valueFunction()Lcom/google/common/base/Function;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 571
    invoke-static {v3, v1, v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move-object v1, v3

    .line 578
    :goto_0
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 579
    invoke-static {v0, v1, p1}, Lcom/google/common/collect/RegularImmutableMap;->fromEntryArray(I[Ljava/util/Map$Entry;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1

    .line 542
    :cond_3
    iget-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 543
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1

    .line 539
    :cond_4
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method private ensureCapacity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minCapacity"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 439
    array-length v1, v0

    .line 441
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result p1

    .line 440
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    const/4 p1, 0x0

    .line 442
    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    :cond_0
    return-void
.end method

.method private static lastEntryForEachKey([Ljava/util/Map$Entry;I)[Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;I)[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 654
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 655
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    add-int/lit8 v2, p1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 657
    aget-object v3, p0, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 658
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 661
    :cond_1
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 665
    :cond_2
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    sub-int v0, p1, v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v2, p1, :cond_4

    .line 667
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 668
    aget-object v5, p0, v2

    aput-object v5, v0, v3

    move v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method buildJdkBacked()Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "buildJdkBacked is only for testing; can\'t use valueComparator"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 633
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    .line 641
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 642
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/JdkBackedImmutableMap;->create(I[Ljava/util/Map$Entry;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 639
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 635
    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public buildKeepingLast()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 626
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public buildOrThrow()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 607
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method combine(Lcom/google/common/collect/ImmutableMap$Builder;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 522
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget v1, p1, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 524
    iget-object v0, p1, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget v3, p1, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget p1, p1, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    return-object p0
.end method

.method public orderEntriesByValue(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueComparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "valueComparator was already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "valueComparator"

    .line 516
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 453
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 454
    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 456
    iget-object p2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    aput-object p1, p2, v0

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 1
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
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 469
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 494
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 495
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 497
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 498
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 481
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    return-object p1
.end method
