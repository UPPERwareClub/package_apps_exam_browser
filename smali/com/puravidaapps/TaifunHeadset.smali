.class public Lcom/puravidaapps/TaifunHeadset;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TaifunHeadset.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Headset extension. Version 1 as of 2018-02-15 for App Inventor version version nb166 and Companion version 2.66."
    helpUrl = "https://puravidaapps.com/headset.php"
    iconName = "https://puravidaapps.com/images/taifun16.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.MODIFY_AUDIO_SETTINGS"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaifunHeadset"

.field public static final VERSION:I = 0x1


# instance fields
.field private final activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private listening:Z

.field private final myReceiver:Landroid/content/BroadcastReceiver;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->listening:Z

    const-string/jumbo v0, "unknown"

    .line 45
    iput-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->status:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/puravidaapps/TaifunHeadset$1;

    invoke-direct {v0, p0}, Lcom/puravidaapps/TaifunHeadset$1;-><init>(Lcom/puravidaapps/TaifunHeadset;)V

    iput-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p1, p0, Lcom/puravidaapps/TaifunHeadset;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->context:Landroid/content/Context;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/puravidaapps/TaifunHeadset;->activity:Landroid/app/Activity;

    .line 53
    invoke-direct {p0}, Lcom/puravidaapps/TaifunHeadset;->startListeningAudio()V

    const-string p1, "TaifunHeadset"

    const-string v0, "TaifunHeadset Created"

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/puravidaapps/TaifunHeadset;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/puravidaapps/TaifunHeadset;->status:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/puravidaapps/TaifunHeadset;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/puravidaapps/TaifunHeadset;->status:Ljava/lang/String;

    return-object p1
.end method

.method private startListeningAudio()V
    .locals 3

    .line 59
    iget-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->listening:Z

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/puravidaapps/TaifunHeadset;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/puravidaapps/TaifunHeadset;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->listening:Z

    :cond_0
    return-void
.end method

.method private stopListeningAudio()V
    .locals 2

    .line 68
    iget-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->listening:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/puravidaapps/TaifunHeadset;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/puravidaapps/TaifunHeadset;->listening:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Changed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that headset plug changed."
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaifunHeadset"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Changed"

    .line 121
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Status()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the headset plug status. Possible values are: unplugged, plugged or unknown."
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/puravidaapps/TaifunHeadset;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaifunHeadset"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->status:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 86
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "plugged"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unplugged"

    :goto_0
    return-object v0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/puravidaapps/TaifunHeadset;->status:Ljava/lang/String;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TaifunHeadset"

    const-string v1, "onDestroy"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/puravidaapps/TaifunHeadset;->stopListeningAudio()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/puravidaapps/TaifunHeadset;->startListeningAudio()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/puravidaapps/TaifunHeadset;->stopListeningAudio()V

    return-void
.end method
