.class public Lcom/google/appinventor/components/runtime/ScaledFrameLayout;
.super Landroid/view/ViewGroup;
.source "ScaledFrameLayout.java"


# static fields
.field private static final MATRIX_SAVE_FLAG:I = 0x1


# instance fields
.field private mLeftWidth:I

.field private mRightWidth:I

.field private mScale:F

.field private final mTmpChildRect:Landroid/graphics/Rect;

.field private final mTmpContainerRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpChildRect:Landroid/graphics/Rect;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 44
    iput p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpChildRect:Landroid/graphics/Rect;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 44
    iput p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method private updatePadding(II)V
    .locals 3

    int-to-float p1, p1

    .line 100
    iget v0, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v0, v1

    mul-float/2addr p1, v2

    div-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    sub-float v1, v0, v1

    mul-float/2addr p2, v1

    div-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    iget v0, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 63
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 88
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 72
    aget v2, p1, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    float-to-int p1, p1

    aput p1, v0, v1

    .line 75
    new-instance p1, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget v4, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    mul-float/2addr p2, v4

    float-to-int p2, p2

    invoke-direct {p1, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 81
    invoke-super {p0, v0, p1}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 171
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildCount()I

    move-result p1

    .line 173
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getPaddingLeft()I

    move-result p2

    .line 175
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getPaddingTop()I

    move-result p4

    sub-int/2addr p5, p3

    .line 176
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    .line 179
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 184
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    iput p2, v3, Landroid/graphics/Rect;->left:I

    .line 185
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    iput p2, v3, Landroid/graphics/Rect;->right:I

    .line 186
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 187
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    iput p4, v3, Landroid/graphics/Rect;->top:I

    .line 188
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    iput p5, v3, Landroid/graphics/Rect;->bottom:I

    const/16 v3, 0x33

    .line 190
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpContainerRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpChildRect:Landroid/graphics/Rect;

    invoke-static {v3, v1, v2, v4, v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 193
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpChildRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpChildRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpChildRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mTmpChildRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 124
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    .line 126
    iput v1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mLeftWidth:I

    .line 127
    iput v1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mRightWidth:I

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0xb

    if-ge v2, v0, :cond_1

    .line 134
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 135
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 136
    invoke-virtual {p0, v6, p1, p2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->measureChild(Landroid/view/View;II)V

    .line 138
    iget v7, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mLeftWidth:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mLeftWidth:I

    .line 140
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 141
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v7

    if-lt v7, v5, :cond_0

    .line 143
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->getMeasuredState(Landroid/view/View;)I

    move-result v5

    .line 142
    invoke-static {p0, v4, v5}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->combineMeasuredStates(Landroid/view/ViewGroup;II)I

    move-result v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mLeftWidth:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mRightWidth:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 150
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 151
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 153
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    if-lt v2, v5, :cond_2

    .line 155
    invoke-static {p0, v1, p1, v4}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->resolveSizeAndState(Landroid/view/ViewGroup;III)I

    move-result p1

    shl-int/lit8 v1, v4, 0x10

    .line 156
    invoke-static {p0, v0, p2, v1}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->resolveSizeAndState(Landroid/view/ViewGroup;III)I

    move-result p2

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setMeasuredDimension(II)V

    goto :goto_1

    .line 160
    :cond_2
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->resolveSize(II)I

    move-result p1

    .line 161
    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->resolveSize(II)I

    move-result p2

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setMeasuredDimension(II)V

    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->updatePadding(II)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 93
    iput p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->mScale:F

    .line 94
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->updatePadding(II)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
