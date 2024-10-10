.class public Lcom/google/appinventor/components/runtime/util/ExponentialRegression;
.super Lcom/google/appinventor/components/runtime/util/OlsTrendLine;
.source "ExponentialRegression.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "x^2"

    .line 33
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "slope"

    .line 34
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-string p2, "intercept"

    .line 35
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v2, "a"

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "b"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public computePoints(Ljava/util/Map;FFII)[F
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;FFII)[F"
        }
    .end annotation

    move-object v0, p1

    move/from16 v1, p5

    const-string v2, "a"

    .line 44
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-array v0, v4, [F

    return-object v0

    .line 47
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v5, "b"

    .line 48
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-int/lit8 v0, v1, 0x4

    .line 49
    new-array v0, v0, [F

    const/high16 v7, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v8, 0x1

    move v10, v4

    move v9, v8

    move v8, v7

    :goto_0
    if-ge v10, v1, :cond_2

    if-eqz v9, :cond_1

    int-to-float v7, v10

    sub-float v8, p3, p2

    mul-float/2addr v7, v8

    int-to-float v8, v1

    div-float/2addr v7, v8

    add-float v7, p2, v7

    float-to-double v8, v7

    .line 57
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v2

    double-to-float v8, v8

    move v9, v4

    :cond_1
    mul-int/lit8 v11, v10, 0x4

    .line 59
    aput v7, v0, v11

    add-int/lit8 v7, v11, 0x1

    .line 60
    aput v8, v0, v7

    add-int/lit8 v10, v10, 0x1

    int-to-float v7, v10

    sub-float v8, p3, p2

    mul-float/2addr v7, v8

    int-to-float v8, v1

    div-float/2addr v7, v8

    add-float v7, p2, v7

    float-to-double v12, v7

    .line 62
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v12, v2

    double-to-float v8, v12

    add-int/lit8 v12, v11, 0x2

    .line 63
    aput v7, v0, v12

    add-int/lit8 v11, v11, 0x3

    .line 64
    aput v8, v0, v11

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected logY()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected size()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected xVector(D)[D
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    return-object v0
.end method
