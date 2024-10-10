.class public Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;
.super Ljava/lang/Object;
.source "KeyboardChangeListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;
    }
.end annotation


# static fields
.field public static final MIN_KEYBOARD_HEIGHT:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "KeyboardChangeListener"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mKeyboardListener:Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;

.field private mShowFlag:Z

.field private mWindow:Landroid/view/Window;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mShowFlag:Z

    if-nez p1, :cond_0

    const-string p1, "KeyboardChangeListener"

    const-string v0, "contextObj is null"

    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 49
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->findContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mContentView:Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mWindow:Landroid/view/Window;

    goto :goto_0

    .line 51
    :cond_1
    instance-of v0, p1, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 52
    check-cast p1, Landroid/app/Dialog;

    invoke-direct {p0, p1}, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->findContentView(Landroid/app/Dialog;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mContentView:Landroid/view/View;

    .line 53
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mWindow:Landroid/view/Window;

    .line 55
    :cond_2
    :goto_0
    iget-object p1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_3

    .line 56
    invoke-direct {p0}, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->addContentTreeObserver()V

    :cond_3
    return-void
.end method

.method private addContentTreeObserver()V
    .locals 1

    .line 70
    iget-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;
    .locals 1

    .line 36
    new-instance v0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;

    invoke-direct {v0, p0}, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static create(Landroid/app/Dialog;)Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;
    .locals 1

    .line 40
    new-instance v0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;

    invoke-direct {v0, p0}, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private findContentView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    const v0, 0x1020002

    .line 62
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findContentView(Landroid/app/Dialog;)Landroid/view/View;
    .locals 1

    const v0, 0x1020002

    .line 66
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getScreenHeight()I
    .locals 4

    .line 106
    iget-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 108
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 109
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 114
    :goto_0
    iget v0, v1, Landroid/graphics/Point;->y:I

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 120
    iget-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .line 76
    iget-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const-string v1, "KeyboardChangeListener"

    if-nez v0, :cond_1

    const-string v0, "currHeight is 0"

    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_1
    invoke-direct {p0}, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->getScreenHeight()I

    move-result v0

    .line 88
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 89
    iget-object v3, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 90
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v2

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGlobalLayout() called  screenHeight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " VisibleDisplayHeight "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mKeyboardListener:Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;

    if-eqz v0, :cond_3

    const/16 v1, 0x12c

    if-le v3, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 98
    :goto_0
    iget-boolean v2, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mShowFlag:Z

    if-eq v2, v1, :cond_3

    .line 99
    iput-boolean v1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mShowFlag:Z

    .line 100
    invoke-interface {v0, v1, v3}, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;->onKeyboardChange(ZI)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setKeyboardListener(Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lme/aemo/specialkeyboard/addon/KeyboardChangeListener;->mKeyboardListener:Lme/aemo/specialkeyboard/addon/KeyboardChangeListener$KeyboardListener;

    return-void
.end method
