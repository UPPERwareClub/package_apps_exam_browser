.class public Lcom/google/appinventor/components/runtime/NiotronBottomSheet;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "NiotronBottomSheet.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/bottomsheet.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private backgroundColor:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private final context:Landroid/content/Context;

.field private cornerRadius:I

.field private mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private mCancelabOnOutSideTouch:Z

.field private mCancelable:Z

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$mupdateAppearance(Lcom/google/appinventor/components/runtime/NiotronBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->updateAppearance()V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 30
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mCancelable:Z

    .line 24
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mCancelabOnOutSideTouch:Z

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->backgroundColor:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->cornerRadius:I

    .line 31
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 32
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->context:Landroid/content/Context;

    return-void
.end method

.method private SetListener()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronBottomSheet;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronBottomSheet;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronBottomSheet;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private px(I)I
    .locals 1

    int-to-float p1, p1

    .line 156
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private updateAppearance()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 147
    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->cornerRadius:I

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->px(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->cornerRadius:I

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->px(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v2

    const/4 v2, 0x2

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->cornerRadius:I

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->px(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v2

    const/4 v2, 0x3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->cornerRadius:I

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->px(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v2

    const/4 v2, 0x4

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v4, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 148
    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 149
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->cornerRadius:I

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->px(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the background color of the bottom sheet"
    .end annotation

    .line 113
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the background color of the bottom sheet"
    .end annotation

    .line 108
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->backgroundColor:I

    return-void
.end method

.method public BottomSheetCanceled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggeres when BottomSheet canceled"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BottomSheetCanceled"

    .line 62
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BottomSheetDismissed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggeres when BottomSheet dismissed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BottomSheetDismissed"

    .line 57
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BottomSheetOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggeres when BottomSheet opened"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BottomSheetOpened"

    .line 52
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CancelOnOutsideTouch(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Makes the dialog cancleable when touvhed outside of the dialog"
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mCancelabOnOutSideTouch:Z

    .line 100
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public CancelOnOutsideTouch()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the dialog cancleable when touvhed outside of the dialog"
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 131
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mCancelabOnOutSideTouch:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public Cancelable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Makes the dialog cancleable"
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public Cancelable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns if the dialog cancleable"
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 90
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mCancelable:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public CornerRadius()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the  corner radius of the bottom sheet"
    .end annotation

    .line 125
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->cornerRadius:I

    return v0
.end method

.method public CornerRadius(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the corner radius of the bottom sheet"
    .end annotation

    .line 120
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->cornerRadius:I

    return-void
.end method

.method public HideDialog()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hides the bottomsheet"
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public InitializeDialog(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes the provided Component/Layout as BottomSheet"
    .end annotation

    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mView:Landroid/view/View;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 43
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->SetListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ShowDialog()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the bottomsheet"
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the dialog cancleable when touvhed outside of the dialog"
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
