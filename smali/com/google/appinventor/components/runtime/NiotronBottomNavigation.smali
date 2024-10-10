.class public final Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "NiotronBottomNavigation.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Bottom navigation view"
    iconName = "images/bottomnavigation.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = ""
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "Bottom Navigation"


# instance fields
.field private activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private iconSelectColor:I

.field private iconUnSelectColor:I

.field private nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private textSelectColor:I

.field private textUnSelectColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0xffff01

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->iconSelectColor:I

    const v1, -0x777778

    .line 35
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->iconUnSelectColor:I

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->textSelectColor:I

    .line 37
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->textUnSelectColor:I

    .line 44
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 45
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 46
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->context:Landroid/content/Context;

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->activity:Landroid/app/Activity;

    const/4 p1, -0x2

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->Width(I)V

    const/4 p1, -0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->Height(I)V

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setBackgroundColor(I)V

    .line 54
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->AddListener()V

    .line 55
    sget-object p1, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Botton nav created"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private AddListener()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V

    return-void
.end method

.method private UpdateIconColor()V
    .locals 7

    .line 176
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, -0x10100a0

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    const v5, 0x10100a0

    aput v5, v4, v6

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->iconUnSelectColor:I

    aput v4, v1, v6

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->iconSelectColor:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 185
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private UpdateTextColor()V
    .locals 7

    .line 189
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, -0x10100a0

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    const v5, 0x10100a0

    aput v5, v4, v6

    aput-object v4, v2, v3

    new-array v1, v1, [I

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->textUnSelectColor:I

    aput v4, v1, v6

    iget v4, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->textSelectColor:I

    aput v4, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 198
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the background color"
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setBackgroundColor(I)V

    return-void
.end method

.method public ClearAllItem()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear all item"
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public ClearItem(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears item"
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    .line 172
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public IconSelectedColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF0000FF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Selected item color"
    .end annotation

    .line 87
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->iconSelectColor:I

    .line 88
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->UpdateIconColor()V

    return-void
.end method

.method public IconUnSelectedColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Unselected item color"
    .end annotation

    .line 96
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->iconUnSelectColor:I

    .line 97
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->UpdateIconColor()V

    return-void
.end method

.method public OnItemReSelected(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "On item re selected"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnItemReSelected"

    .line 149
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnItemSelected(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "On item selected"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnItemSelected"

    .line 144
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RippleColor(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF0000FF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Ripple color"
    .end annotation

    .line 120
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    new-array v3, v1, [I

    const v4, -0x10100a0

    const/4 v5, 0x0

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v1, v1, [I

    aput p1, v1, v5

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 127
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public SelectItem(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Select item"
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    return-void
.end method

.method public TitleSelectedColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF0000FF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Title selected color"
    .end annotation

    .line 104
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->textSelectColor:I

    .line 105
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->UpdateTextColor()V

    return-void
.end method

.method public TitleUnSelectedColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Title unselected color"
    .end annotation

    .line 112
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->textUnSelectColor:I

    .line 113
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->UpdateTextColor()V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds a new item"
    .end annotation

    .line 60
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p3, v1, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomNavigation;->nav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    return-object v0
.end method
