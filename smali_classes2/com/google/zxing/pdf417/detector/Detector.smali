.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final INTEGER_MATH_SHIFT:I = 0x8

.field private static final MAX_AVG_VARIANCE:I = 0x6b

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xcc

.field private static final PATTERN_MATCH_RESULT_SCALE_FACTOR:I = 0x100

.field private static final SKEW_THRESHOLD:I = 0x3

.field private static final START_PATTERN:[I

.field private static final START_PATTERN_REVERSE:[I

.field private static final STOP_PATTERN:[I

.field private static final STOP_PATTERN_REVERSE:[I


# instance fields
.field private final image:Lcom/google/zxing/BinaryBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 48
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    new-array v0, v0, [I

    .line 51
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 54
    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    new-array v0, v0, [I

    .line 58
    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/BinaryBitmap;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    return-void
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 0

    .line 400
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p0

    div-float/2addr p0, p4

    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result p0

    .line 401
    invoke-static {p2, p3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p1

    div-float/2addr p1, p4

    invoke-static {p1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result p1

    add-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x8

    .line 402
    div-int/lit8 p0, p0, 0x11

    mul-int/lit8 p0, p0, 0x11

    return p0
.end method

.method private static computeModuleWidth([Lcom/google/zxing/ResultPoint;)F
    .locals 4

    const/4 v0, 0x0

    .line 375
    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    const/4 v1, 0x1

    .line 376
    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x42080000    # 34.0f

    div-float/2addr v0, v1

    const/4 v1, 0x6

    .line 378
    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    const/4 v2, 0x7

    .line 379
    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {v2, p0}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p0

    add-float/2addr v1, p0

    const/high16 p0, 0x42100000    # 36.0f

    div-float/2addr v1, p0

    add-float/2addr v0, v1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method private static computeYDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 0

    .line 421
    invoke-static {p0, p2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p0

    div-float/2addr p0, p4

    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result p0

    .line 422
    invoke-static {p1, p3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p1

    div-float/2addr p1, p4

    invoke-static {p1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result p1

    add-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V
    .locals 13

    const/4 v0, 0x0

    .line 300
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 301
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    const/4 v2, 0x2

    .line 302
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    .line 303
    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    const/4 v4, 0x4

    .line 304
    aget-object v5, p0, v4

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    .line 305
    aget-object v6, p0, v4

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    const/4 v7, 0x6

    .line 306
    aget-object v8, p0, v7

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    .line 307
    aget-object v9, p0, v7

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    sub-float v10, v6, v9

    if-eqz p1, :cond_0

    neg-float v10, v10

    :cond_0
    const/high16 v11, 0x40400000    # 3.0f

    cmpl-float v12, v10, v11

    if-lez v12, :cond_1

    sub-float/2addr v8, v1

    sub-float/2addr v9, v0

    mul-float v2, v8, v8

    mul-float v3, v9, v9

    add-float/2addr v2, v3

    sub-float/2addr v5, v1

    mul-float/2addr v5, v8

    div-float/2addr v5, v2

    .line 319
    new-instance v2, Lcom/google/zxing/ResultPoint;

    mul-float/2addr v8, v5

    add-float/2addr v1, v8

    mul-float/2addr v5, v9

    add-float/2addr v0, v5

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, p0, v4

    goto :goto_0

    :cond_1
    neg-float v0, v10

    cmpl-float v0, v0, v11

    if-lez v0, :cond_2

    sub-float v0, v3, v5

    sub-float v1, v2, v6

    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    sub-float v5, v3, v8

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    .line 326
    new-instance v4, Lcom/google/zxing/ResultPoint;

    mul-float/2addr v0, v5

    sub-float/2addr v3, v0

    mul-float/2addr v5, v1

    sub-float/2addr v2, v5

    invoke-direct {v4, v3, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, p0, v7

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 329
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 330
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    const/4 v2, 0x3

    .line 331
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    .line 332
    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    const/4 v4, 0x5

    .line 333
    aget-object v5, p0, v4

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    .line 334
    aget-object v6, p0, v4

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    const/4 v7, 0x7

    .line 335
    aget-object v8, p0, v7

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    .line 336
    aget-object v9, p0, v7

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    sub-float v10, v9, v6

    if-eqz p1, :cond_3

    neg-float v10, v10

    :cond_3
    cmpl-float p1, v10, v11

    if-lez p1, :cond_4

    sub-float/2addr v8, v1

    sub-float/2addr v9, v0

    mul-float p1, v8, v8

    mul-float v2, v9, v9

    add-float/2addr p1, v2

    sub-float/2addr v5, v1

    mul-float/2addr v5, v8

    div-float/2addr v5, p1

    .line 348
    new-instance p1, Lcom/google/zxing/ResultPoint;

    mul-float/2addr v8, v5

    add-float/2addr v1, v8

    mul-float/2addr v5, v9

    add-float/2addr v0, v5

    invoke-direct {p1, v1, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p1, p0, v4

    goto :goto_1

    :cond_4
    neg-float p1, v10

    cmpl-float p1, p1, v11

    if-lez p1, :cond_5

    sub-float p1, v3, v5

    sub-float v0, v2, v6

    mul-float v1, p1, p1

    mul-float v4, v0, v0

    add-float/2addr v1, v4

    sub-float v4, v3, v8

    mul-float/2addr v4, p1

    div-float/2addr v4, v1

    .line 355
    new-instance v1, Lcom/google/zxing/ResultPoint;

    mul-float/2addr p1, v4

    sub-float/2addr v3, p1

    mul-float/2addr v4, v0

    sub-float/2addr v2, v4

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, p0, v7

    :cond_5
    :goto_1
    return-void
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
    .locals 15

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    .line 476
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 477
    array-length v2, v0

    move/from16 v5, p1

    move v7, v5

    move/from16 v4, p4

    move v6, v3

    :goto_0
    add-int v8, p1, p3

    if-ge v5, v8, :cond_3

    move-object v8, p0

    move/from16 v9, p2

    .line 483
    invoke-virtual {p0, v5, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    xor-int/2addr v10, v4

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    .line 485
    aget v10, v1, v6

    add-int/2addr v10, v11

    aput v10, v1, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v2, -0x1

    if-ne v6, v10, :cond_2

    const/16 v12, 0xcc

    .line 488
    invoke-static {v1, v0, v12}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[II)I

    move-result v12

    const/16 v13, 0x6b

    const/4 v14, 0x2

    if-ge v12, v13, :cond_1

    new-array v0, v14, [I

    aput v7, v0, v3

    aput v5, v0, v11

    return-object v0

    .line 491
    :cond_1
    aget v12, v1, v3

    aget v13, v1, v11

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    add-int/lit8 v12, v2, -0x2

    .line 492
    invoke-static {v1, v14, v1, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    aput v3, v1, v12

    .line 494
    aput v3, v1, v10

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 499
    :goto_1
    aput v11, v1, v6

    xor-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;
    .locals 16

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    const/16 v1, 0x8

    new-array v9, v1, [Lcom/google/zxing/ResultPoint;

    .line 146
    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    array-length v1, v1

    new-array v10, v1, [I

    const/4 v11, 0x7

    if-eqz p1, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    shr-int v1, v0, v1

    const/4 v12, 0x1

    .line 148
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    if-ge v15, v0, :cond_2

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 152
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object/from16 v1, p0

    move v3, v15

    move v4, v8

    move-object v7, v10

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 154
    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v3, v1, v14

    int-to-float v3, v3

    int-to-float v4, v15

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v9, v14

    const/4 v2, 0x4

    .line 155
    new-instance v3, Lcom/google/zxing/ResultPoint;

    aget v1, v1, v12

    int-to-float v1, v1

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v9, v2

    move v1, v12

    goto :goto_2

    :cond_1
    add-int/2addr v15, v13

    goto :goto_1

    :cond_2
    move v1, v14

    :goto_2
    if-eqz v1, :cond_5

    add-int/lit8 v1, v0, -0x1

    move v15, v1

    :goto_3
    if-lez v15, :cond_4

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 164
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object/from16 v1, p0

    move v3, v15

    move v4, v8

    move-object v7, v10

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v1

    if-eqz v1, :cond_3

    .line 166
    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v3, v1, v14

    int-to-float v3, v3

    int-to-float v4, v15

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v9, v12

    const/4 v2, 0x5

    .line 167
    new-instance v3, Lcom/google/zxing/ResultPoint;

    aget v1, v1, v12

    int-to-float v1, v1

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v9, v2

    move v1, v12

    goto :goto_4

    :cond_3
    sub-int/2addr v15, v13

    goto :goto_3

    :cond_4
    move v1, v14

    .line 174
    :cond_5
    :goto_4
    sget-object v2, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    array-length v2, v2

    new-array v10, v2, [I

    if-eqz v1, :cond_8

    move v15, v14

    :goto_5
    if-ge v15, v0, :cond_7

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 180
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object/from16 v1, p0

    move v3, v15

    move v4, v8

    move-object v7, v10

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x2

    .line 182
    new-instance v3, Lcom/google/zxing/ResultPoint;

    aget v4, v1, v12

    int-to-float v4, v4

    int-to-float v5, v15

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v9, v2

    const/4 v2, 0x6

    .line 183
    new-instance v3, Lcom/google/zxing/ResultPoint;

    aget v1, v1, v14

    int-to-float v1, v1

    invoke-direct {v3, v1, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v9, v2

    move v1, v12

    goto :goto_6

    :cond_6
    add-int/2addr v15, v13

    goto :goto_5

    :cond_7
    move v1, v14

    :cond_8
    :goto_6
    if-eqz v1, :cond_b

    sub-int/2addr v0, v12

    :goto_7
    if-lez v0, :cond_a

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 193
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object/from16 v1, p0

    move v3, v0

    move v4, v8

    move-object v7, v10

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v2, 0x3

    .line 195
    new-instance v3, Lcom/google/zxing/ResultPoint;

    aget v4, v1, v12

    int-to-float v4, v4

    int-to-float v0, v0

    invoke-direct {v3, v4, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v9, v2

    .line 196
    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v1, v1, v14

    int-to-float v1, v1

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v9, v11

    goto :goto_8

    :cond_9
    sub-int/2addr v0, v13

    goto :goto_7

    :cond_a
    move v12, v14

    goto :goto_8

    :cond_b
    move v12, v1

    :goto_8
    if-eqz v12, :cond_c

    goto :goto_9

    :cond_c
    const/4 v9, 0x0

    :goto_9
    return-object v9
.end method

.method private static findVertices180(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;
    .locals 17

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    const/16 v3, 0x8

    new-array v10, v3, [Lcom/google/zxing/ResultPoint;

    .line 231
    sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    array-length v3, v3

    new-array v11, v3, [I

    const/4 v12, 0x7

    if-eqz p1, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :cond_0
    move v3, v12

    :goto_0
    shr-int v3, v0, v3

    .line 233
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v14, v0, -0x1

    move v15, v14

    :goto_1
    const/16 v16, 0x0

    if-lez v15, :cond_2

    const/4 v7, 0x1

    .line 237
    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object/from16 v3, p0

    move v4, v1

    move v5, v15

    move v6, v1

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v3

    if-eqz v3, :cond_1

    .line 239
    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v3, v2

    int-to-float v5, v5

    int-to-float v6, v15

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v10, v16

    const/4 v4, 0x4

    .line 240
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v3, v3, v16

    int-to-float v3, v3

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v10, v4

    move v3, v2

    goto :goto_2

    :cond_1
    sub-int/2addr v15, v13

    goto :goto_1

    :cond_2
    move/from16 v3, v16

    :goto_2
    if-eqz v3, :cond_5

    move/from16 v15, v16

    :goto_3
    if-ge v15, v0, :cond_4

    const/4 v7, 0x1

    .line 249
    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object/from16 v3, p0

    move v4, v1

    move v5, v15

    move v6, v1

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v3

    if-eqz v3, :cond_3

    .line 251
    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v3, v2

    int-to-float v5, v5

    int-to-float v6, v15

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v10, v2

    const/4 v4, 0x5

    .line 252
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v3, v3, v16

    int-to-float v3, v3

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v10, v4

    move v3, v2

    goto :goto_4

    :cond_3
    add-int/2addr v15, v13

    goto :goto_3

    :cond_4
    move/from16 v3, v16

    .line 259
    :cond_5
    :goto_4
    sget-object v4, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    array-length v4, v4

    new-array v11, v4, [I

    if-eqz v3, :cond_8

    :goto_5
    if-lez v14, :cond_7

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 265
    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object/from16 v3, p0

    move v5, v14

    move v6, v1

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v4, 0x2

    .line 267
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v6, v3, v16

    int-to-float v6, v6

    int-to-float v7, v14

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v10, v4

    const/4 v4, 0x6

    .line 268
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v3, v3, v2

    int-to-float v3, v3

    invoke-direct {v5, v3, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v10, v4

    move v3, v2

    goto :goto_6

    :cond_6
    sub-int/2addr v14, v13

    goto :goto_5

    :cond_7
    move/from16 v3, v16

    :cond_8
    :goto_6
    if-eqz v3, :cond_b

    move/from16 v14, v16

    :goto_7
    if-ge v14, v0, :cond_a

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 278
    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object/from16 v3, p0

    move v5, v14

    move v6, v1

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v3

    if-eqz v3, :cond_9

    const/4 v0, 0x3

    .line 280
    new-instance v1, Lcom/google/zxing/ResultPoint;

    aget v4, v3, v16

    int-to-float v4, v4

    int-to-float v5, v14

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, v10, v0

    .line 281
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v1, v3, v2

    int-to-float v1, v1

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v10, v12

    goto :goto_8

    :cond_9
    add-int/2addr v14, v13

    goto :goto_7

    :cond_a
    move/from16 v2, v16

    goto :goto_8

    :cond_b
    move v2, v3

    :goto_8
    if-eqz v2, :cond_c

    goto :goto_9

    :cond_c
    const/4 v10, 0x0

    :goto_9
    return-object v10
.end method

.method private static patternMatchVariance([I[II)I
    .locals 8

    .line 522
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_0

    .line 526
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 527
    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    if-ge v3, v4, :cond_1

    return v2

    :cond_1
    shl-int/lit8 v5, v3, 0x8

    .line 537
    div-int/2addr v5, v4

    mul-int/2addr p2, v5

    shr-int/lit8 p2, p2, 0x8

    move v4, v1

    :goto_1
    if-ge v1, v0, :cond_4

    .line 542
    aget v6, p0, v1

    shl-int/lit8 v6, v6, 0x8

    .line 543
    aget v7, p1, v1

    mul-int/2addr v7, v5

    if-le v6, v7, :cond_2

    sub-int/2addr v6, v7

    goto :goto_2

    :cond_2
    sub-int v6, v7, v6

    :goto_2
    if-le v6, p2, :cond_3

    return v2

    :cond_3
    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 550
    :cond_4
    div-int/2addr v4, v3

    return v4
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    .line 436
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    move/from16 v4, p5

    int-to-float v6, v4

    move v8, v6

    move/from16 v4, p6

    int-to-float v11, v4

    move v9, v11

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v19}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    invoke-virtual {v0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    .line 87
    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v8

    goto :goto_0

    :cond_0
    move p1, v0

    .line 90
    :goto_0
    invoke-static {v1, p1}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    if-nez v2, :cond_1

    .line 93
    invoke-static {v1, p1}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices180(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 95
    invoke-static {v2, v8}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    goto :goto_1

    .line 98
    :cond_1
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    :cond_2
    :goto_1
    move-object p1, v2

    if-eqz p1, :cond_6

    .line 105
    invoke-static {p1}, Lcom/google/zxing/pdf417/detector/Detector;->computeModuleWidth([Lcom/google/zxing/ResultPoint;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_5

    const/4 v9, 0x4

    .line 110
    aget-object v3, p1, v9

    const/4 v10, 0x6

    aget-object v4, p1, v10

    const/4 v11, 0x5

    aget-object v5, p1, v11

    const/4 v12, 0x7

    aget-object v6, p1, v12

    invoke-static {v3, v4, v5, v6, v2}, Lcom/google/zxing/pdf417/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v6

    if-lt v6, v8, :cond_4

    .line 116
    aget-object v3, p1, v9

    aget-object v4, p1, v10

    aget-object v5, p1, v11

    aget-object v7, p1, v12

    invoke-static {v3, v4, v5, v7, v2}, Lcom/google/zxing/pdf417/detector/Detector;->computeYDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v2

    if-le v2, v6, :cond_3

    move v7, v2

    goto :goto_2

    :cond_3
    move v7, v6

    .line 120
    :goto_2
    aget-object v2, p1, v9

    aget-object v3, p1, v11

    aget-object v4, p1, v10

    aget-object v5, p1, v12

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 121
    new-instance v2, Lcom/google/zxing/common/DetectorResult;

    new-array v3, v9, [Lcom/google/zxing/ResultPoint;

    aget-object v4, p1, v11

    aput-object v4, v3, v0

    aget-object v0, p1, v9

    aput-object v0, v3, v8

    const/4 v0, 0x2

    aget-object v4, p1, v10

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aget-object p1, p1, v12

    aput-object p1, v3, v0

    invoke-direct {v2, v1, v3}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v2

    .line 113
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 107
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 102
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
