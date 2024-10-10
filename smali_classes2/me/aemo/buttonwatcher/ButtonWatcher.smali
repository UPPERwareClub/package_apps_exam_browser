.class public Lme/aemo/buttonwatcher/ButtonWatcher;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ButtonWatcher.java"

# interfaces
.implements Lme/aemo/buttonwatcher/addons/OnHomePressedListener;


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private watcher:Lme/aemo/buttonwatcher/addons/HomeWatcher;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 18
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 19
    iput-object p1, p0, Lme/aemo/buttonwatcher/ButtonWatcher;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes the ButtonWatcher. This should be called before Start."
    .end annotation

    .line 23
    iget-object v0, p0, Lme/aemo/buttonwatcher/ButtonWatcher;->watcher:Lme/aemo/buttonwatcher/addons/HomeWatcher;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lme/aemo/buttonwatcher/addons/HomeWatcher;

    iget-object v1, p0, Lme/aemo/buttonwatcher/ButtonWatcher;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lme/aemo/buttonwatcher/addons/HomeWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/aemo/buttonwatcher/ButtonWatcher;->watcher:Lme/aemo/buttonwatcher/addons/HomeWatcher;

    .line 25
    invoke-virtual {v0, p0}, Lme/aemo/buttonwatcher/addons/HomeWatcher;->setOnHomePressedListener(Lme/aemo/buttonwatcher/addons/OnHomePressedListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "ButtonWatcher is already initialized"

    const-string v1, "Initialize"

    .line 27
    invoke-virtual {p0, v0, v1}, Lme/aemo/buttonwatcher/ButtonWatcher;->OnErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public OnErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when an error occurs. Provides error message and the source of the error."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OnErrorOccurred"

    .line 76
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnHomePressed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the home button is pressed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnHomePressed"

    .line 56
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnRecentAppPressed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the recent apps button is pressed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnRecentAppPressed"

    .line 66
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Start()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts watching for button presses. Call this to start monitoring."
    .end annotation

    .line 32
    iget-object v0, p0, Lme/aemo/buttonwatcher/ButtonWatcher;->watcher:Lme/aemo/buttonwatcher/addons/HomeWatcher;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Lme/aemo/buttonwatcher/addons/HomeWatcher;->startWatching()V

    goto :goto_0

    :cond_0
    const-string v0, "ButtonWatcher is not initialized"

    const-string v1, "Start"

    .line 35
    invoke-virtual {p0, v0, v1}, Lme/aemo/buttonwatcher/ButtonWatcher;->OnErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stops watching for button presses. Call this to stop monitoring."
    .end annotation

    .line 40
    iget-object v0, p0, Lme/aemo/buttonwatcher/ButtonWatcher;->watcher:Lme/aemo/buttonwatcher/addons/HomeWatcher;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lme/aemo/buttonwatcher/addons/HomeWatcher;->stopWatching()V

    goto :goto_0

    :cond_0
    const-string v0, "ButtonWatcher is not initialized"

    const-string v1, "Stop"

    .line 43
    invoke-virtual {p0, v0, v1}, Lme/aemo/buttonwatcher/ButtonWatcher;->OnErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lme/aemo/buttonwatcher/ButtonWatcher;->OnErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHomePressed()V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lme/aemo/buttonwatcher/ButtonWatcher;->OnHomePressed()V

    return-void
.end method

.method public onRecentAppPressed()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lme/aemo/buttonwatcher/ButtonWatcher;->OnRecentAppPressed()V

    return-void
.end method
