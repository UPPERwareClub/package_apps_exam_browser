.class public Lcom/watermelonice/BrightnessTools/BrightnessTools;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "BrightnessTools.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "This extension is created for changing the brightness of user\'s phone. <br> Created by WatermelonIce <br><br> <b>My Profile in Kodular Community: </b><a href=\"https://community.kodular.io/u/WatermelonIce/summary\">My Profile</a><br><b>Support me by subscribing my YouTube Channel: </b> <a href=\"https://www.youtube.com/channel/UCBq9ouxr4C4OZG0sMCgmpwg\">WatermelonIce YouTube Channel</a>"
    iconName = "aiwebres/icon.png"
    nonVisible = true
    version = 0x3
    versionName = "v1.2"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_SETTINGS"
.end annotation


# static fields
.field private static final ADAPTIVE_CHNAGED:I = 0x1

.field private static final BRIGHTNESS_CHNAGED:I


# instance fields
.field private contentObserverAdaptive:Landroid/database/ContentObserver;

.field private contentObserverBrightness:Landroid/database/ContentObserver;

.field private context:Landroid/content/Context;

.field private registered:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 32
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->registered:Z

    .line 184
    new-instance v0, Lcom/watermelonice/BrightnessTools/BrightnessTools$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/watermelonice/BrightnessTools/BrightnessTools$1;-><init>(Lcom/watermelonice/BrightnessTools/BrightnessTools;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->contentObserverBrightness:Landroid/database/ContentObserver;

    .line 201
    new-instance v0, Lcom/watermelonice/BrightnessTools/BrightnessTools$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/watermelonice/BrightnessTools/BrightnessTools$2;-><init>(Lcom/watermelonice/BrightnessTools/BrightnessTools;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->contentObserverAdaptive:Landroid/database/ContentObserver;

    .line 33
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    .line 34
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 35
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    return-void
.end method

.method private getMaxBrightness(I)I
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 170
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 171
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BRIGHTNESS_ON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 174
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private unregisterOnChange()V
    .locals 2

    .line 219
    iget-boolean v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->registered:Z

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->contentObserverBrightness:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 222
    iget-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->contentObserverAdaptive:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public Adaptive(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set brightness to adaptive or non-adaptive. Adaptive if true, otherwise non-adaptive."
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->CanWriteSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "The system attempted to modify \"SCREEN_BRIGHTNESS_MODE\", but failed."

    .line 149
    invoke-virtual {p0, p1}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "Attempted to modify \"SCREEN_BRIGHTNESS_MODE\", but \"android.permission.WRITE_SETTINGS\" is not granted."

    .line 155
    invoke-virtual {p0, p1}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public Adaptive()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get current adaptive state. True if adaptive, otherwise false."
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public Brightness()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get current brightness of user\'s phone. Minimum value is 0. Return -1 if not found."
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Brightness(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the brightness of user\'s phone. Minimum value is 0."
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->CanWriteSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "The system attempted to modify \"SCREEN_BRIGHTNESS\", but failed."

    .line 122
    invoke-virtual {p0, p1}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Attempted to modify \"SCREEN_BRIGHTNESS\", but \"android.permission.WRITE_SETTINGS\" is not granted."

    .line 127
    invoke-virtual {p0, p1}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public CanWriteSettings()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if modify system setting permission is granted."
    .end annotation

    const/4 v0, 0x0

    .line 84
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    .line 88
    iget-object v3, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    .line 89
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V

    return v0
.end method

.method public Changed(IIZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when detected any brightness or adaptive change. The param \"changed\" indicate what has change."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "Changed"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when error occurred"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 58
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MaxBrightness()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Max brightness of user\'s phone. If max brightness not found, return 255."
    .end annotation

    const/16 v0, 0xff

    .line 140
    invoke-direct {p0, v0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->getMaxBrightness(I)I

    move-result v0

    return v0
.end method

.method public OpenWriteSettingsScreen()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show screen for controlling which apps are allowed to write/modify system settings."
    .end annotation

    .line 100
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :catch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const-string v0, "Write Setting screen failed to be opened because it does not exist before API level 23."

    .line 106
    invoke-virtual {p0, v0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Write Setting screen failed to be opened because it does not exist."

    .line 108
    invoke-virtual {p0, v0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public RegisterOnChange()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "After registering, you can detect the brightness and adaptive change."
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    .line 70
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->contentObserverBrightness:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 69
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    iget-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    .line 73
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->contentObserverAdaptive:Landroid/database/ContentObserver;

    .line 72
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    iput-boolean v3, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->registered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->unregisterOnChange()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->unregisterOnChange()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools;->registered:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->RegisterOnChange()V

    :cond_0
    return-void
.end method
