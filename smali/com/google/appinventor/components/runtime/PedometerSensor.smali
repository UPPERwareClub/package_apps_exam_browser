.class public Lcom/google/appinventor/components/runtime/PedometerSensor;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "PedometerSensor.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Detect people\'s walking activity. The sensor will output a stream of \"step\" events when a person starts walking. To continously detect whether a person is walking and keep track of how manysteps he walks, one could set \"interval\"= duration + 1. There are 9 different sensitivities for detecting walking step, including \"extra high\", \"very high\", \"high\", \"higher\", \"medium\", \"lower\", \"low\", \"very low\", \"extra low\". "
    iconName = "images/pedometer_sensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation


# instance fields
.field private final PEDOMETER_PROBE:Ljava/lang/String;

.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final SENSITIVITY_LEVEL:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field final myHandler:Landroid/os/Handler;

.field private probe:Ledu/mit/media/funf/probe/builtin/PedometerProbe;

.field private sensitivityLevel:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method static bridge synthetic -$$Nest$fgettimestamp(Lcom/google/appinventor/components/runtime/PedometerSensor;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->timestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputtimestamp(Lcom/google/appinventor/components/runtime/PedometerSensor;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->timestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 104
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, "PedometerSensor"

    .line 36
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->TAG:Ljava/lang/String;

    const-string v1, "edu.mit.media.funf.probe.builtin.PedometerProbe"

    .line 37
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->PEDOMETER_PROBE:Ljava/lang/String;

    const/16 v1, 0x78

    .line 48
    iput v1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->SCHEDULE_INTERVAL:I

    const/16 v2, 0xf

    .line 49
    iput v2, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->SCHEDULE_DURATION:I

    const-string v3, "low"

    .line 50
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->SENSITIVITY_LEVEL:Ljava/lang/String;

    .line 54
    new-instance v4, Lcom/google/appinventor/components/runtime/PedometerSensor$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/PedometerSensor$1;-><init>(Lcom/google/appinventor/components/runtime/PedometerSensor;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 86
    new-instance v4, Lcom/google/appinventor/components/runtime/PedometerSensor$2;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/PedometerSensor$2;-><init>(Lcom/google/appinventor/components/runtime/PedometerSensor;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->myHandler:Landroid/os/Handler;

    .line 107
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 109
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->mainUIThreadActivity:Landroid/app/Activity;

    const-string p1, "Before create probe"

    .line 110
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->mainUIThreadActivity:Landroid/app/Activity;

    .line 112
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->gson:Lcom/google/gson/Gson;

    .line 113
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->gson:Lcom/google/gson/Gson;

    const-class v4, Ledu/mit/media/funf/probe/builtin/PedometerProbe;

    invoke-virtual {v0, p1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/PedometerProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->probe:Ledu/mit/media/funf/probe/builtin/PedometerProbe;

    .line 118
    iput v1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->interval:I

    .line 119
    iput v2, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->duration:I

    .line 120
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->sensitivityLevel:Ljava/lang/String;

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

    const/high16 v0, 0x42f00000    # 120.0f

    return v0
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable pedometer sensor to run once"
    .end annotation

    .line 166
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 167
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->enabled:Z

    :cond_0
    const-string v0, "PedometerSensor"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->probe:Ledu/mit/media/funf/probe/builtin/PedometerProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/PedometerProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    const-string/jumbo p1, "register listener for run-once"

    .line 171
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->probe:Ledu/mit/media/funf/probe/builtin/PedometerProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/PedometerProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    const-string/jumbo p1, "unregister run-once listener"

    .line 174
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public PedometerInfoReceived(J)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 131
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->enabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->enabledSchedule:Z

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/PedometerSensor$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/PedometerSensor$3;-><init>(Lcom/google/appinventor/components/runtime/PedometerSensor;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public PedometerScanComplete()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 149
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->enabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->enabledSchedule:Z

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/PedometerSensor$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/PedometerSensor$4;-><init>(Lcom/google/appinventor/components/runtime/PedometerSensor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public SensitivityLevel()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->sensitivityLevel:Ljava/lang/String;

    return-object v0
.end method

.method public SensitivityLevel(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "low"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The sensitivity level used to detect walking. 9 different options for this value: \"extra high\", \"very high\", \"high\", \"higher\", \"medium\", \"lower\", \"low\", \"very low\", \"extra low\""
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->sensitivityLevel:Ljava/lang/String;

    return-void
.end method

.method public registerDataRequest(II)V
    .locals 3

    const-string v0, "PedometerSensor"

    const-string v1, "Registering data requests."

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "edu.mit.media.funf.probe.builtin.PedometerProbe"

    .line 197
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/PedometerSensor;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 200
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->sensitivityLevel:Ljava/lang/String;

    const-string/jumbo v2, "sensitivityLevel"

    invoke-virtual {p2, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
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

    .line 203
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 3

    const-string v0, "PedometerSensor"

    const-string v1, "Unregistering data requests."

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PedometerSensor;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v1, v2}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    const-string v1, "After Unregistering data requests."

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
