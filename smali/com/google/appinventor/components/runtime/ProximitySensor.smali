.class public Lcom/google/appinventor/components/runtime/ProximitySensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/RealTimeDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that can measures the proximity of an object in cm relative to the view screen of a device. This sensor is typically used to determine whether a handset is being held up to a persons ear; i.e. lets you determine how far away an object is from a device. Many devices return the absolute distance, in cm, but some return only near and far values. In this case, the sensor usually reports its maximum range value in the far state and a lesser value in the near state.</p>"
    iconName = "images/proximitysensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/OnStopListener;",
        "Lcom/google/appinventor/components/runtime/OnResumeListener;",
        "Lcom/google/appinventor/components/runtime/SensorComponent;",
        "Lcom/google/appinventor/components/runtime/OnPauseListener;",
        "Landroid/hardware/SensorEventListener;",
        "Lcom/google/appinventor/components/runtime/Deleteable;",
        "Lcom/google/appinventor/components/runtime/RealTimeDataSource<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataSourceObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private distance:F

.field private enabled:Z

.field private keepRunningWhenOnPause:Z

.field private final proximitySensor:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 78
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->dataSourceObservers:Ljava/util/Set;

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    .line 85
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    .line 86
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    return-void
.end method

.method private startListening()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether or not the device has a proximity sensor."
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the distance from the object to the device"
    .end annotation

    .line 261
    iget v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then device will listen for changes in proximity."
    .end annotation

    .line 198
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 202
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz p1, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    :goto_0
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 184
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    return v0
.end method

.method public KeepRunningWhenOnPause(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, it will keep sensing for proximity changes even when the app is not visible"
    .end annotation

    .line 232
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->keepRunningWhenOnPause:Z

    return-void
.end method

.method public KeepRunningWhenOnPause()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 217
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->keepRunningWhenOnPause:Z

    return v0
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports the Maximum Range of the device\'s ProximitySensor"
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public ProximityChanged(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when distance (in cm) of the object to the device changes."
    .end annotation

    .line 243
    iput p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    .line 247
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "distance"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 249
    iget v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "ProximityChanged"

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    const-string v0, "distance"

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 303
    iget p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 305
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->getDataValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ProximitySensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 289
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->keepRunningWhenOnPause:Z

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x0

    .line 156
    aget p1, p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    .line 157
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->ProximityChanged(F)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    :cond_0
    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
