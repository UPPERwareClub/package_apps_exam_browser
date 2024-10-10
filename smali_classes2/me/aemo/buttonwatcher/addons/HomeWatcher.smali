.class public Lme/aemo/buttonwatcher/addons/HomeWatcher;
.super Ljava/lang/Object;
.source "HomeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;
    }
.end annotation


# static fields
.field private static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field private static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field private static final TAG:Ljava/lang/String; = "HomeWatcher"


# instance fields
.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private listener:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

.field private final receiver:Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->context:Landroid/content/Context;

    .line 25
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->intentFilter:Landroid/content/IntentFilter;

    .line 26
    new-instance p1, Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;-><init>(Lme/aemo/buttonwatcher/addons/HomeWatcher;Lme/aemo/buttonwatcher/addons/HomeWatcher$1;)V

    iput-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->receiver:Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;

    return-void
.end method

.method static synthetic access$100(Lme/aemo/buttonwatcher/addons/HomeWatcher;)Lme/aemo/buttonwatcher/addons/OnHomePressedListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->listener:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    return-object p0
.end method


# virtual methods
.method public setOnHomePressedListener(Lme/aemo/buttonwatcher/addons/OnHomePressedListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->listener:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    return-void
.end method

.method public startWatching()V
    .locals 4

    .line 35
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->context:Landroid/content/Context;

    iget-object v1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->receiver:Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;

    iget-object v2, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->intentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->context:Landroid/content/Context;

    iget-object v1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->receiver:Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;

    iget-object v2, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    iget-object v1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->listener:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    if-eqz v1, :cond_1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register receiver.\nError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception ~ startWatching"

    invoke-interface {v1, v2, v3}, Lme/aemo/buttonwatcher/addons/OnHomePressedListener;->onErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "HomeWatcher"

    const-string v2, "Failed to register receiver"

    .line 46
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public stopWatching()V
    .locals 4

    .line 52
    :try_start_0
    iget-object v0, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->context:Landroid/content/Context;

    iget-object v1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->receiver:Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher;->listener:Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    if-eqz v1, :cond_0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered.\nError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IllegalArgumentException ~ stopWatching"

    invoke-interface {v1, v2, v3}, Lme/aemo/buttonwatcher/addons/OnHomePressedListener;->onErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "HomeWatcher"

    const-string v2, "Receiver not registered"

    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
