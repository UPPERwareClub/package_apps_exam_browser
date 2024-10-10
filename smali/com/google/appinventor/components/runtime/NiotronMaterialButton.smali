.class public final Lcom/google/appinventor/components/runtime/NiotronMaterialButton;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "NiotronMaterialButton.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "New Material design buttom. Helps to create button with material design provided by google"
    iconName = "images/material_textbox.png"
    nonVisible = false
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NiotronMaterialButton"


# instance fields
.field private argb:I

.field private backgroundColor:I

.field private bold:Z

.field private bottomleft:F

.field private bottomright:F

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private elevation:F

.field private enabled:Z

.field private errorText:Ljava/lang/String;

.field private fontAwesome:Z

.field private fontTypeface:Ljava/lang/String;

.field private helperText:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private iconTint:I

.field private inputTypeArgs:[Ljava/lang/String;

.field private isRepl:Z

.field private italic:Z

.field private mainView:Landroid/widget/LinearLayout;

.field private materialButton:Lcom/google/android/material/button/MaterialButton;

.field private maxLength:I

.field private paddingBottom2:I

.field private paddingLeft2:I

.field private paddingRight2:I

.field private paddingTop2:I

.field private rid:I

.field private size:F

.field private text:Ljava/lang/String;

.field private textAppearence:Ljava/lang/String;

.field private topleft:F

.field private topright:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0x9dff12

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->argb:I

    const-string/jumbo v0, "unspecified"

    .line 35
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->textAppearence:Ljava/lang/String;

    const/high16 v0, 0x41600000    # 14.0f

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->size:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->topleft:F

    .line 38
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->topright:F

    .line 39
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->bottomleft:F

    .line 40
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->bottomright:F

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->helperText:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->errorText:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->text:Ljava/lang/String;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->bold:Z

    .line 52
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->enabled:Z

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingLeft2:I

    .line 57
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingTop2:I

    .line 58
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingRight2:I

    .line 59
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingBottom2:I

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 64
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->context:Landroid/content/Context;

    .line 65
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->isRepl:Z

    .line 66
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->mainView:Landroid/widget/LinearLayout;

    .line 67
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, -0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->Width(I)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->Height(I)V

    const-string p1, "5,5,5,5"

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->HeihMargin(Ljava/lang/String;)V

    return-void
.end method

.method private addListeners()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMaterialButton$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialButton;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronMaterialButton$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronMaterialButton;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private getTextAppearance(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.material.R$style"

    .line 426
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 427
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private refreshPadding()V
    .locals 5

    .line 397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingLeft2:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->px(I)I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingTop2:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingRight2:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingBottom2:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->px(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/button/MaterialButton;->setPadding(IIII)V

    return-void
.end method

.method private updateAppearance()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->backgroundColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 402
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->argb:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the background color"
    .end annotation

    .line 325
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the background color"
        userVisible = false
    .end annotation

    .line 319
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->backgroundColor:I

    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public ButtonType(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "Filled"
        editorArgs = {
            "Filled",
            "Outlined",
            "Elevated",
            "Tonal",
            "Text"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set to true if to create a material button with different styles"
        userVisible = false
    .end annotation

    const-string v0, "Filled"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "niotron_m3_button_filled"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Outlined"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "niotron_m3_button_outlined"

    goto :goto_0

    :cond_1
    const-string v0, "Elevated"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "niotron_m3_button_elevated"

    goto :goto_0

    :cond_2
    const-string v0, "Tonal"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "niotron_m3_button_filled_tonal"

    goto :goto_0

    :cond_3
    const-string v0, "Text"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v1, "niotron_m3_button_text"

    .line 88
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "com.google.android.material.R$layout"

    .line 90
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->rid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->rid:I

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 97
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->mainView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 98
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->mainView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->updateAppearance()V

    .line 100
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->addListeners()V

    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when button is clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 337
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CustomFontTypeFace(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the custom font typeface"
    .end annotation

    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->italic:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Elevation()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the elevation"
    .end annotation

    .line 146
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->elevation:F

    return v0
.end method

.method public Elevation(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the elevation"
    .end annotation

    .line 140
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->elevation:F

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setElevation(F)V

    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets if enabled"
    .end annotation

    .line 278
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->enabled:Z

    .line 279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns if enabled"
    .end annotation

    .line 284
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->enabled:Z

    return v0
.end method

.method public FontBold(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 271
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->bold:Z

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->italic:Z

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the font for the text should be bold.  By default, it is not."
        userVisible = false
    .end annotation

    .line 257
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->bold:Z

    return v0
.end method

.method public FontTypeface(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the font typeface"
        userVisible = false
    .end annotation

    const-string v0, "5"

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->fontAwesome:Z

    .line 225
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->fontTypeface:Ljava/lang/String;

    .line 226
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->fontTypeface:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->italic:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the height"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    .line 365
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public HeihMargin(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5,5,0,0"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets paddings"
        userVisible = false
    .end annotation

    .line 393
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->HeihMargin(Ljava/lang/String;)V

    return-void
.end method

.method public HeihPadding(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16,16,0,0"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the padding"
        userVisible = false
    .end annotation

    const-string v0, ","

    .line 381
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 382
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingLeft2:I

    const/4 v0, 0x1

    .line 383
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingRight2:I

    const/4 v0, 0x2

    .line 384
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingTop2:I

    const/4 v0, 0x3

    .line 385
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingBottom2:I

    .line 386
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->refreshPadding()V

    return-void
.end method

.method public Icon()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the icon"
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->icon:Ljava/lang/String;

    const-string v0, ""

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public IconTint()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the icon tint"
    .end annotation

    .line 313
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->iconTint:I

    return v0
.end method

.method public IconTint(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the icon tint"
        userVisible = false
    .end annotation

    .line 307
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->iconTint:I

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when button is long clicked"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 342
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RippleColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the ripple color"
        userVisible = false
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    .line 332
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public SetPadding(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets padding to the component"
    .end annotation

    .line 370
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingTop2:I

    .line 371
    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingBottom2:I

    .line 372
    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingRight2:I

    .line 373
    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->paddingLeft2:I

    .line 374
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->refreshPadding()V

    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "returns the text"
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the text"
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->text:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public TextAppearance(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unspecified"
        editorType = "text_appearance"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the text appearance"
        userVisible = false
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->textAppearence:Ljava/lang/String;

    const-string v0, "Material3_ActionBar_Title"

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "TextAppearance_Material3_ActionBar_Title"

    .line 155
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "Material3_ActionBar_Subtitle"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "TextAppearance_Material3_ActionBar_Subtitle"

    .line 158
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "Material3_DisplayLarge"

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "TextAppearance_Material3_DisplayLarge"

    .line 161
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "Material3_DisplayMedium"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "TextAppearance_Material3_DisplayMedium"

    .line 164
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "Material3_DisplaySmall"

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "TextAppearance_Material3_DisplaySmall"

    .line 167
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "TextAppearance_Material3_HeadlineLarge"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "Material3_HeadlineMedium"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "TextAppearance_Material3_HeadlineMedium"

    .line 173
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "Material3_HeadlineSmall"

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "TextAppearance_Material3_HeadlineSmall"

    .line 176
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "Material3_TitleLarge"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "TextAppearance_Material3_TitleLarge"

    .line 179
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "Material3_TitleMedium"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "TextAppearance_Material3_TitleMedium"

    .line 182
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "Material3_TitleSmall"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "TextAppearance_Material3_TitleSmall"

    .line 185
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "Material3_BodyLarge"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "TextAppearance_Material3_BodyLarge"

    .line 188
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto :goto_0

    :cond_b
    const-string v0, "Material3_BodyMedium"

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "TextAppearance_Material3_BodyMedium"

    .line 191
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto :goto_0

    :cond_c
    const-string v0, "Material3_BodySmall"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "TextAppearance_Material3_BodySmall"

    .line 194
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto :goto_0

    :cond_d
    const-string v0, "Material3_LabelLarge"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "TextAppearance_Material3_LabelLarge"

    .line 197
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 198
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto :goto_0

    :cond_e
    const-string v0, "Material3_LabelMedium"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "TextAppearance_Material3_LabelMedium"

    .line 200
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    goto :goto_0

    :cond_f
    const-string v0, "Material3_LabelSmall"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "TextAppearance_Material3_LabelSmall"

    .line 203
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->getTextAppearance(Ljava/lang/String;)I

    move-result p1

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextAppearance(I)V

    :cond_10
    :goto_0
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color"
    .end annotation

    .line 113
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->argb:I

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6200EE"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set text color of the button"
    .end annotation

    .line 107
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->argb:I

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    return-void
.end method

.method public TextSize(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the text size"
    .end annotation

    .line 131
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->size:F

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->textAppearence:Ljava/lang/String;

    const-string/jumbo v1, "unspecified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->materialButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the width"
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    .line 356
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->mainView:Landroid/widget/LinearLayout;

    return-object v0
.end method
