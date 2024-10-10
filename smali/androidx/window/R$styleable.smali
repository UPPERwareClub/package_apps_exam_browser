.class public final Landroidx/window/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ActivityFilter:[I

.field public static final ActivityFilter_activityAction:I = 0x0

.field public static final ActivityFilter_activityName:I = 0x1

.field public static final ActivityRule:[I

.field public static final ActivityRule_alwaysExpand:I = 0x0

.field public static final SplitPairFilter:[I

.field public static final SplitPairFilter_primaryActivityName:I = 0x0

.field public static final SplitPairFilter_secondaryActivityAction:I = 0x1

.field public static final SplitPairFilter_secondaryActivityName:I = 0x2

.field public static final SplitPairRule:[I

.field public static final SplitPairRule_clearTop:I = 0x0

.field public static final SplitPairRule_finishPrimaryWithSecondary:I = 0x1

.field public static final SplitPairRule_finishSecondaryWithPrimary:I = 0x2

.field public static final SplitPairRule_splitLayoutDirection:I = 0x3

.field public static final SplitPairRule_splitMinSmallestWidth:I = 0x4

.field public static final SplitPairRule_splitMinWidth:I = 0x5

.field public static final SplitPairRule_splitRatio:I = 0x6

.field public static final SplitPlaceholderRule:[I

.field public static final SplitPlaceholderRule_placeholderActivityName:I = 0x0

.field public static final SplitPlaceholderRule_splitLayoutDirection:I = 0x1

.field public static final SplitPlaceholderRule_splitMinSmallestWidth:I = 0x2

.field public static final SplitPlaceholderRule_splitMinWidth:I = 0x3

.field public static final SplitPlaceholderRule_splitRatio:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/window/R$styleable;->ActivityFilter:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f030031

    aput v2, v0, v1

    .line 36
    sput-object v0, Landroidx/window/R$styleable;->ActivityRule:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 38
    fill-array-data v0, :array_1

    sput-object v0, Landroidx/window/R$styleable;->SplitPairFilter:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 42
    fill-array-data v0, :array_2

    sput-object v0, Landroidx/window/R$styleable;->SplitPairRule:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 50
    fill-array-data v0, :array_3

    sput-object v0, Landroidx/window/R$styleable;->SplitPlaceholderRule:[I

    return-void

    :array_0
    .array-data 4
        0x7f030026
        0x7f030028
    .end array-data

    :array_1
    .array-data 4
        0x7f030337
        0x7f03035b
        0x7f03035c
    .end array-data

    :array_2
    .array-data 4
        0x7f0300c3
        0x7f03019f
        0x7f0301a0
        0x7f030380
        0x7f030381
        0x7f030382
        0x7f030383
    .end array-data

    :array_3
    .array-data 4
        0x7f030328
        0x7f030380
        0x7f030381
        0x7f030382
        0x7f030383
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
