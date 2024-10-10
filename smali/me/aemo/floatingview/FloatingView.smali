.class public Lme/aemo/floatingview/FloatingView;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "FloatingView.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# static fields
.field private static final REQUEST_CODE_DRAW_OVERLAY_PERMISSION:I = 0x5

.field private static mIsFloatViewShowing:Z = false


# instance fields
.field private activity:Landroid/app/Activity;

.field private clickable:Z

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private indexChild:I

.field private isRepl:Z

.field private isScreenRecordingDisabled:Z

.field private mFloatViewFirstX:I

.field private mFloatViewFirstY:I

.field private mFloatViewLastX:I

.field private mFloatViewLastY:I

.field private mFloatViewTouchConsumedByMove:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private requestCode:I

.field private rl:Landroid/widget/RelativeLayout;

.field private viewHV:Landroid/view/View;

.field private viewParent:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lme/aemo/floatingview/FloatingView;->mFloatViewTouchConsumedByMove:Z

    .line 37
    iput-boolean v0, p0, Lme/aemo/floatingview/FloatingView;->clickable:Z

    .line 50
    iput-boolean v0, p0, Lme/aemo/floatingview/FloatingView;->isScreenRecordingDisabled:Z

    .line 51
    iput v0, p0, Lme/aemo/floatingview/FloatingView;->requestCode:I

    .line 55
    iput-object p1, p0, Lme/aemo/floatingview/FloatingView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lme/aemo/floatingview/FloatingView;->activity:Landroid/app/Activity;

    .line 57
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void
.end method

.method private EnableScreenRecordingProtection()V
    .locals 3

    .line 300
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 302
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->rl:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lme/aemo/floatingview/FloatingView;->isScreenRecordingDisabled:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lme/aemo/floatingview/FloatingView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 28
    iget-object p0, p0, Lme/aemo/floatingview/FloatingView;->rl:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$002(Lme/aemo/floatingview/FloatingView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 28
    iput-object p1, p0, Lme/aemo/floatingview/FloatingView;->rl:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 28
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    return v0
.end method

.method static synthetic access$1000(Lme/aemo/floatingview/FloatingView;)I
    .locals 0

    .line 28
    iget p0, p0, Lme/aemo/floatingview/FloatingView;->mFloatViewFirstX:I

    return p0
.end method

.method static synthetic access$1002(Lme/aemo/floatingview/FloatingView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lme/aemo/floatingview/FloatingView;->mFloatViewFirstX:I

    return p1
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 28
    sput-boolean p0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    return p0
.end method

.method static synthetic access$1100(Lme/aemo/floatingview/FloatingView;)I
    .locals 0

    .line 28
    iget p0, p0, Lme/aemo/floatingview/FloatingView;->mFloatViewLastY:I

    return p0
.end method

.method static synthetic access$1102(Lme/aemo/floatingview/FloatingView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lme/aemo/floatingview/FloatingView;->mFloatViewLastY:I

    return p1
.end method

.method static synthetic access$1200(Lme/aemo/floatingview/FloatingView;)I
    .locals 0

    .line 28
    iget p0, p0, Lme/aemo/floatingview/FloatingView;->mFloatViewFirstY:I

    return p0
.end method

.method static synthetic access$1202(Lme/aemo/floatingview/FloatingView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lme/aemo/floatingview/FloatingView;->mFloatViewFirstY:I

    return p1
.end method

.method static synthetic access$1300(Lme/aemo/floatingview/FloatingView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lme/aemo/floatingview/FloatingView;->mFloatViewTouchConsumedByMove:Z

    return p0
.end method

.method static synthetic access$1302(Lme/aemo/floatingview/FloatingView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lme/aemo/floatingview/FloatingView;->mFloatViewTouchConsumedByMove:Z

    return p1
.end method

.method static synthetic access$1400(Lme/aemo/floatingview/FloatingView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lme/aemo/floatingview/FloatingView;->clickable:Z

    return p0
.end method

.method static synthetic access$200(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lme/aemo/floatingview/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$202(Lme/aemo/floatingview/FloatingView;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0

    .line 28
    iput-object p1, p0, Lme/aemo/floatingview/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$300(Lme/aemo/floatingview/FloatingView;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lme/aemo/floatingview/FloatingView;->viewHV:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lme/aemo/floatingview/FloatingView;)I
    .locals 0

    .line 28
    iget p0, p0, Lme/aemo/floatingview/FloatingView;->indexChild:I

    return p0
.end method

.method static synthetic access$500(Lme/aemo/floatingview/FloatingView;)Landroid/view/ViewGroup;
    .locals 0

    .line 28
    iget-object p0, p0, Lme/aemo/floatingview/FloatingView;->viewParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 28
    iget-object p0, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$700(Lme/aemo/floatingview/FloatingView;)Landroid/app/Activity;
    .locals 0

    .line 28
    iget-object p0, p0, Lme/aemo/floatingview/FloatingView;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lme/aemo/floatingview/FloatingView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lme/aemo/floatingview/FloatingView;->isScreenRecordingDisabled:Z

    return p0
.end method

.method static synthetic access$900(Lme/aemo/floatingview/FloatingView;)I
    .locals 0

    .line 28
    iget p0, p0, Lme/aemo/floatingview/FloatingView;->mFloatViewLastX:I

    return p0
.end method

.method static synthetic access$902(Lme/aemo/floatingview/FloatingView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lme/aemo/floatingview/FloatingView;->mFloatViewLastX:I

    return p1
.end method

.method private checkDrawOverlayPermission(Z)Z
    .locals 2

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 251
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 252
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    iget v0, p0, Lme/aemo/floatingview/FloatingView;->requestCode:I

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lme/aemo/floatingview/FloatingView;->requestCode:I

    .line 255
    :cond_0
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private dismissFloatView()V
    .locals 2

    .line 287
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 288
    sput-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    .line 289
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->activity:Landroid/app/Activity;

    new-instance v1, Lme/aemo/floatingview/FloatingView$7;

    invoke-direct {v1, p0}, Lme/aemo/floatingview/FloatingView$7;-><init>(Lme/aemo/floatingview/FloatingView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private floatViewHV(II)V
    .locals 8

    .line 314
    invoke-direct {p0}, Lme/aemo/floatingview/FloatingView;->dismissFloatView()V

    .line 315
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/aemo/floatingview/FloatingView;->rl:Landroid/widget/RelativeLayout;

    .line 316
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d2

    :goto_0
    move v5, v1

    const v6, 0x40008

    const/4 v7, -0x3

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    .line 323
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 324
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 325
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 328
    iget-boolean p1, p0, Lme/aemo/floatingview/FloatingView;->isScreenRecordingDisabled:Z

    if-eqz p1, :cond_1

    .line 329
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p2, p2, 0x2000

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 332
    :cond_1
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->viewHV:Landroid/view/View;

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 333
    :cond_2
    new-instance p2, Lme/aemo/floatingview/FloatingView$8;

    invoke-direct {p2, p0}, Lme/aemo/floatingview/FloatingView$8;-><init>(Lme/aemo/floatingview/FloatingView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    new-instance p2, Lme/aemo/floatingview/FloatingView$9;

    invoke-direct {p2, p0}, Lme/aemo/floatingview/FloatingView$9;-><init>(Lme/aemo/floatingview/FloatingView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 384
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 385
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lme/aemo/floatingview/FloatingView;->viewParent:Landroid/view/ViewGroup;

    .line 386
    iget-object p2, p0, Lme/aemo/floatingview/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lme/aemo/floatingview/FloatingView;->indexChild:I

    .line 387
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lme/aemo/floatingview/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 389
    :cond_3
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->rl:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lme/aemo/floatingview/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private overlapView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p4, :cond_0

    const/16 p4, 0x33

    goto :goto_0

    :cond_0
    if-ne p4, v2, :cond_1

    const/16 p4, 0x31

    goto :goto_0

    :cond_1
    if-ne p4, v1, :cond_2

    const/16 p4, 0x35

    goto :goto_0

    :cond_2
    if-ne p4, v0, :cond_3

    const/16 p4, 0x13

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne p4, v3, :cond_4

    const/16 p4, 0x11

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    if-ne p4, v3, :cond_5

    const/16 p4, 0x15

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    if-ne p4, v3, :cond_6

    const/16 p4, 0x53

    goto :goto_0

    :cond_6
    const/4 v3, 0x7

    if-ne p4, v3, :cond_7

    const/16 p4, 0x51

    goto :goto_0

    :cond_7
    const/16 v3, 0x8

    if-ne p4, v3, :cond_8

    const/16 p4, 0x55

    .line 412
    :cond_8
    :goto_0
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p2

    .line 413
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 414
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 415
    :cond_9
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lme/aemo/floatingview/FloatingView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 416
    invoke-virtual {v3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 417
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {p2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 419
    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 420
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 421
    array-length p4, p3

    const/4 v4, 0x0

    if-lez p4, :cond_a

    aget-object p4, p3, v4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    goto :goto_1

    :cond_a
    move p4, v4

    :goto_1
    array-length v5, p3

    if-le v5, v2, :cond_b

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_b
    move v2, v4

    :goto_2
    array-length v5, p3

    if-le v5, v1, :cond_c

    aget-object v1, p3, v1

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_c
    move v1, v4

    :goto_3
    array-length v5, p3

    if-le v5, v0, :cond_d

    aget-object p3, p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 421
    :cond_d
    invoke-virtual {p2, p4, v2, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 423
    invoke-virtual {v3, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showFloatView()V
    .locals 2

    .line 264
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 265
    sput-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    .line 266
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->activity:Landroid/app/Activity;

    new-instance v1, Lme/aemo/floatingview/FloatingView$6;

    invoke-direct {v1, p0}, Lme/aemo/floatingview/FloatingView$6;-><init>(Lme/aemo/floatingview/FloatingView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public ChangeHeight(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change floating window height."
    .end annotation

    .line 181
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->activity:Landroid/app/Activity;

    new-instance v1, Lme/aemo/floatingview/FloatingView$3;

    invoke-direct {v1, p0, p1}, Lme/aemo/floatingview/FloatingView$3;-><init>(Lme/aemo/floatingview/FloatingView;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public ChangeWidth(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change floating window width."
    .end annotation

    .line 162
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->activity:Landroid/app/Activity;

    new-instance v1, Lme/aemo/floatingview/FloatingView$2;

    invoke-direct {v1, p0, p1}, Lme/aemo/floatingview/FloatingView$2;-><init>(Lme/aemo/floatingview/FloatingView;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public CheckDrawOverlayPermission()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether the overlay permission is active."
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lme/aemo/floatingview/FloatingView;->checkDrawOverlayPermission(Z)Z

    move-result v0

    return v0
.end method

.method public ClickView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Executes after clicking on the floating component."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ClickView"

    .line 137
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DisableScreenRecordingProtection()V
    .locals 3

    .line 307
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 309
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->rl:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lme/aemo/floatingview/FloatingView;->isScreenRecordingDisabled:Z

    :cond_0
    return-void
.end method

.method public DismissViewFloating()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hides the floating component."
    .end annotation

    .line 82
    invoke-direct {p0}, Lme/aemo/floatingview/FloatingView;->dismissFloatView()V

    return-void
.end method

.method public GetClickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Checks whether the floating view is clickable."
    .end annotation

    .line 122
    iget-boolean v0, p0, Lme/aemo/floatingview/FloatingView;->clickable:Z

    return v0
.end method

.method public GetFloatingViewVisible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Checks if the floating is present on the screen."
    .end annotation

    .line 127
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    return v0
.end method

.method public GetPositionX()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the X coordinate that the floating view is in."
    .end annotation

    .line 97
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method

.method public GetPositionY()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the Y coordinate that the floating view is in."
    .end annotation

    .line 102
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method public LoseFocusFloatingView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loses focus on the floating window."
    .end annotation

    .line 215
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->activity:Landroid/app/Activity;

    new-instance v1, Lme/aemo/floatingview/FloatingView$5;

    invoke-direct {v1, p0}, Lme/aemo/floatingview/FloatingView$5;-><init>(Lme/aemo/floatingview/FloatingView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public OverlapView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Through this block it is possible to overlap any visible component on another.\nmargins (list):\n\tindex 1 -> margin left (number)\n\tindex 2 -> margin top (number)\n\tindex 3 -> margin right(number)\n\tindex 4 -> margin bottom (number)\ngravity (number):\n\t0  -> TOP-LEFT\n\t1  -> TOP-CENTER\n\t2  -> TOP-RIGHT\n\t3  -> CENTER-LEFT\n\t4  -> CENTER\n\t5  -> CENTER-RIGHT\n\t6  -> BOTTOM-LEFT\n\t7  -> BOTTOM-CENTER\n\t8  -> BOTTOM-RIGHT\n"
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lme/aemo/floatingview/FloatingView;->overlapView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;I)V

    return-void
.end method

.method public PositionMoved(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "View moved from position"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "PositionMoved"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RequestDrawOverlayPermission()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Redirects to application settings to allow overlay permission."
    .end annotation

    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, v0}, Lme/aemo/floatingview/FloatingView;->checkDrawOverlayPermission(Z)Z

    return-void
.end method

.method public RequestFocusFloatingView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Prompts to focus on the floating window."
    .end annotation

    .line 201
    sget-boolean v0, Lme/aemo/floatingview/FloatingView;->mIsFloatViewShowing:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->activity:Landroid/app/Activity;

    new-instance v1, Lme/aemo/floatingview/FloatingView$4;

    invoke-direct {v1, p0}, Lme/aemo/floatingview/FloatingView$4;-><init>(Lme/aemo/floatingview/FloatingView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public RestoreFloatingView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the floating window to the screen."
    .end annotation

    .line 142
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->activity:Landroid/app/Activity;

    new-instance v1, Lme/aemo/floatingview/FloatingView$1;

    invoke-direct {v1, p0}, Lme/aemo/floatingview/FloatingView$1;-><init>(Lme/aemo/floatingview/FloatingView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ScreenRecording(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    if-eqz p1, :cond_0

    .line 231
    invoke-direct {p0}, Lme/aemo/floatingview/FloatingView;->EnableScreenRecordingProtection()V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lme/aemo/floatingview/FloatingView;->DisableScreenRecordingProtection()V

    :goto_0
    return-void
.end method

.method public SetClickable(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Adjusts whether the floating view is clickable"
    .end annotation

    .line 117
    iput-boolean p1, p0, Lme/aemo/floatingview/FloatingView;->clickable:Z

    return-void
.end method

.method public SetPosition(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the floating view to the indicated coordinates."
    .end annotation

    .line 107
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 108
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 109
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p2, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, p1, p2}, Lme/aemo/floatingview/FloatingView;->PositionMoved(II)V

    .line 111
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lme/aemo/floatingview/FloatingView;->rl:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public SetupView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ZII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes the component you want to float."
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lme/aemo/floatingview/FloatingView;->viewHV:Landroid/view/View;

    .line 63
    iput-boolean p2, p0, Lme/aemo/floatingview/FloatingView;->clickable:Z

    .line 64
    invoke-direct {p0, p3, p4}, Lme/aemo/floatingview/FloatingView;->floatViewHV(II)V

    return-void
.end method

.method public ShowFloatingView()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Displays the floating component."
    .end annotation

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, v0}, Lme/aemo/floatingview/FloatingView;->checkDrawOverlayPermission(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lme/aemo/floatingview/FloatingView;->showFloatView()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 429
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 430
    iget-object v1, p0, Lme/aemo/floatingview/FloatingView;->rl:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 240
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    .line 241
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    invoke-direct {p0}, Lme/aemo/floatingview/FloatingView;->showFloatView()V

    :cond_0
    return-void
.end method
