.class public Lcom/google/appinventor/components/runtime/util/SensorDbUtil;
.super Ljava/lang/Object;
.source "SensorDbUtil.java"


# static fields
.field public static DB_NAME:Ljava/lang/String;

.field public static final sensorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ActivitySensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.ActivityProbe"

    .line 30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BatterySensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.BatteryProbe"

    .line 31
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CallLogHistory"

    const-string v2, "edu.mit.media.funf.probe.builtin.CallLogProbe"

    .line 32
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CellTowerProbeSensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.CellTowerProbe"

    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LightSensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.LightSensorProbe"

    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LocationProbeSensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.SimpleLocationProbe"

    .line 35
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PedometerSensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.PedometerProbe"

    .line 36
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ProximitySensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.ProximitySensorProbe"

    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RunningApplications"

    const-string v2, "edu.mit.media.funf.probe.builtin.RunningApplicationsProbe"

    .line 38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ScreenStatus"

    const-string v2, "edu.mit.media.funf.probe.builtin.ScreenProbe"

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SmsHistory"

    const-string v2, "edu.mit.media.funf.probe.builtin.SmsProbe"

    .line 40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SocialProximitySensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.BluetoothProbe"

    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TelephonyInfo"

    const-string v2, "edu.mit.media.funf.probe.builtin.TelephonyProbe"

    .line 42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WifiSensor"

    const-string v2, "edu.mit.media.funf.probe.builtin.WifiProbe"

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/SensorDbUtil;->sensorMap:Ljava/util/Map;

    const-string v0, "__SENSOR_DB__"

    .line 51
    sput-object v0, Lcom/google/appinventor/components/runtime/util/SensorDbUtil;->DB_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPipelineName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".__SENSOR_DB__"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
