.class public Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "CellTowerProbeSensor.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that detects information of the cell tower that the cellphone connects to"
    iconName = "images/cell_tower_probe.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_COARSE_LOCATION"
.end annotation


# instance fields
.field private final CELLTOWER_PROBE:Ljava/lang/String;

.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field private cellid:J

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field private locationAreaCode:J

.field final myHandler:Landroid/os/Handler;

.field private probe:Ledu/mit/media/funf/probe/builtin/CellTowerProbe;

.field private timestamp:J


# direct methods
.method static bridge synthetic -$$Nest$fputcellid(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->cellid:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlocationAreaCode(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->locationAreaCode:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimestamp(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->timestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 48
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, "CellTowerProbe"

    .line 33
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->TAG:Ljava/lang/String;

    const-string v1, "edu.mit.media.funf.probe.builtin.CellTowerProbe"

    .line 34
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->CELLTOWER_PROBE:Ljava/lang/String;

    const/16 v1, 0x708

    .line 43
    iput v1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->SCHEDULE_INTERVAL:I

    const/16 v2, 0x1e

    .line 44
    iput v2, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->SCHEDULE_DURATION:I

    .line 67
    new-instance v3, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$1;-><init>(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->myHandler:Landroid/os/Handler;

    .line 125
    new-instance v3, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$4;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$4;-><init>(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 51
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->mainUIThreadActivity:Landroid/app/Activity;

    const-string p1, "Before create probe"

    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->mainUIThreadActivity:Landroid/app/Activity;

    .line 56
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->gson:Lcom/google/gson/Gson;

    .line 57
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/CellTowerProbe;

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/CellTowerProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->probe:Ledu/mit/media/funf/probe/builtin/CellTowerProbe;

    .line 61
    iput v1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->interval:I

    .line 62
    iput v2, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->duration:I

    return-void
.end method


# virtual methods
.method public CellInfoReceived()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 93
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->enabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->enabledSchedule:Z

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$2;-><init>(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public CellTowerScanComplete()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 113
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->enabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->enabledSchedule:Z

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$3;-><init>(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public Cellid()J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The cell id of the cell tower."
    .end annotation

    .line 223
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->cellid:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returning cell id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellTowerProbe"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->cellid:J

    return-wide v0
.end method

.method public DefaultDuration()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The default duration (in seconds) of each scan for this probe"
    .end annotation

    const/high16 v0, 0x41f00000    # 30.0f

    return v0
.end method

.method public DefaultInterval()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The default interval (in seconds) between each scan for this probe"
    .end annotation

    const/high16 v0, 0x44e10000    # 1800.0f

    return v0
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable location probe to run once"
    .end annotation

    .line 175
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 176
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->enabled:Z

    :cond_0
    const-string v0, "CellTowerProbe"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->probe:Ledu/mit/media/funf/probe/builtin/CellTowerProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/CellTowerProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    const-string/jumbo p1, "register listener for run-once"

    .line 180
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->probe:Ledu/mit/media/funf/probe/builtin/CellTowerProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/CellTowerProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    const-string/jumbo p1, "unregister run-once listener"

    .line 183
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public LocationAreaCode()J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The location area code of the cell tower."
    .end annotation

    .line 232
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->locationAreaCode:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returning cell id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellTowerProbe"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->locationAreaCode:J

    return-wide v0
.end method

.method public Timestamp()F
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The timestamp of this sensor event."
    .end annotation

    .line 241
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->timestamp:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returning timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellTowerProbe"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->timestamp:J

    long-to-float v0, v0

    return v0
.end method

.method public registerDataRequest(II)V
    .locals 3

    const-string v0, "CellTowerProbe"

    const-string v1, "Registering data requests."

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "edu.mit.media.funf.probe.builtin.CellTowerProbe"

    .line 208
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 211
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

    .line 213
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 3

    const-string v0, "CellTowerProbe"

    const-string v1, "Unregistering data requests."

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v1, v2}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    const-string v1, "After Unregistering data requests."

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
