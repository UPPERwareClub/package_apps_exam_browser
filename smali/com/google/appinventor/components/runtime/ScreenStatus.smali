.class public Lcom/google/appinventor/components/runtime/ScreenStatus;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "ScreenStatus.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Return information about the  "
    iconName = "images/screen_status.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation


# instance fields
.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final SCREENSTATUS_PROBE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field final myHandler:Landroid/os/Handler;

.field private probe:Ledu/mit/media/funf/probe/builtin/ScreenProbe;

.field private screen_on:Z

.field private timestamp:J


# direct methods
.method static bridge synthetic -$$Nest$fgetscreen_on(Lcom/google/appinventor/components/runtime/ScreenStatus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->screen_on:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettimestamp(Lcom/google/appinventor/components/runtime/ScreenStatus;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->timestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputscreen_on(Lcom/google/appinventor/components/runtime/ScreenStatus;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->screen_on:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimestamp(Lcom/google/appinventor/components/runtime/ScreenStatus;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->timestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 40
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, "ScreenStatus"

    .line 28
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->TAG:Ljava/lang/String;

    const-string v1, "edu.mit.media.funf.probe.builtin.ScreenProbe"

    .line 30
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->SCREENSTATUS_PROBE:Ljava/lang/String;

    const/16 v1, 0x384

    .line 36
    iput v1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->SCHEDULE_INTERVAL:I

    const/16 v2, 0xf

    .line 37
    iput v2, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->SCHEDULE_DURATION:I

    .line 56
    new-instance v3, Lcom/google/appinventor/components/runtime/ScreenStatus$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/ScreenStatus$1;-><init>(Lcom/google/appinventor/components/runtime/ScreenStatus;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 90
    new-instance v3, Lcom/google/appinventor/components/runtime/ScreenStatus$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/ScreenStatus$2;-><init>(Lcom/google/appinventor/components/runtime/ScreenStatus;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->myHandler:Landroid/os/Handler;

    .line 42
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->mainUIThreadActivity:Landroid/app/Activity;

    const-string p1, "Before create probe"

    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->mainUIThreadActivity:Landroid/app/Activity;

    .line 47
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->gson:Lcom/google/gson/Gson;

    .line 48
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/ScreenProbe;

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/ScreenProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->probe:Ledu/mit/media/funf/probe/builtin/ScreenProbe;

    .line 52
    iput v1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->interval:I

    .line 53
    iput v2, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->duration:I

    return-void
.end method


# virtual methods
.method public DefaultDuration()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The default duration (in seconds) of each scan for this probe"
    .end annotation

    const/high16 v0, 0x41700000    # 15.0f

    return v0
.end method

.method public DefaultInterval()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The default interval (in seconds) between each scan for this probe"
    .end annotation

    const/high16 v0, 0x44610000    # 900.0f

    return v0
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable screen status sensor to run once"
    .end annotation

    .line 117
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 118
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->enabled:Z

    :cond_0
    const-string v0, "ScreenStatus"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->probe:Ledu/mit/media/funf/probe/builtin/ScreenProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/ScreenProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    const-string/jumbo p1, "register listener for run-once"

    .line 122
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->probe:Ledu/mit/media/funf/probe/builtin/ScreenProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/ScreenProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    const-string/jumbo p1, "unregister run-once listener"

    .line 125
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public ScreenInfoReceived(JZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 158
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->enabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->enabledSchedule:Z

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/ScreenStatus$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ScreenStatus$3;-><init>(Lcom/google/appinventor/components/runtime/ScreenStatus;JZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public registerDataRequest(II)V
    .locals 3

    const-string v0, "ScreenStatus"

    const-string v1, "Registering data requests."

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "edu.mit.media.funf.probe.builtin.ScreenProbe"

    .line 145
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/ScreenStatus;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 3

    const-string v0, "ScreenStatus"

    const-string v1, "Unregistering data requests."

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ScreenStatus;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v1, v2}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    const-string v1, "After Unregistering data requests."

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
