.class public Lcom/google/appinventor/components/runtime/TelephonyInfo;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "TelephonyInfo.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A wrapper funciton of Android TelephonyManager. The components gives information about the telephony services on the device. Applications can use the methods in this class to determine telephony services and states, as well as to access some types of subscriber information. <p> For more info. check http://developer.android.com/reference/android/telephony/TelephonyManager.html"
    iconName = "images/telephony_manager.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.Manifest.permission.READ_PHONE_STATE"
.end annotation


# instance fields
.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field protected final TELEPHONY_PROBE:Ljava/lang/String;

.field private callState:I

.field private deviceId:Ljava/lang/String;

.field private deviceSoftwareVersion:I

.field private lineNumber:Ljava/lang/String;

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field final myHandler:Landroid/os/Handler;

.field private networkCounteryIso:Ljava/lang/String;

.field private networkOperator:Ljava/lang/String;

.field private networkOperatorName:Ljava/lang/String;

.field private probe:Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

.field private simCountryIso:Ljava/lang/String;

.field private simOperator:Ljava/lang/String;

.field private simOperatorName:Ljava/lang/String;

.field private simSerialNumber:Ljava/lang/String;

.field private subscriberId:Ljava/lang/String;

.field private voicemailNumber:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetdeviceId(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlineNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->lineNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnetworkCounteryIso(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkCounteryIso:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnetworkOperator(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperator:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnetworkOperatorName(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperatorName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsimOperator(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simOperator:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsimSerialNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simSerialNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvoicemailNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->voicemailNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcallState(Lcom/google/appinventor/components/runtime/TelephonyInfo;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->callState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdeviceId(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdeviceSoftwareVersion(Lcom/google/appinventor/components/runtime/TelephonyInfo;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->deviceSoftwareVersion:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlineNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->lineNumber:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnetworkCounteryIso(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkCounteryIso:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnetworkOperator(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperator:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnetworkOperatorName(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperatorName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsimCountryIso(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simCountryIso:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsimOperator(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simOperator:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsimSerialNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simSerialNumber:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsubscriberId(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->subscriberId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvoicemailNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->voicemailNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 71
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, "Telephony"

    .line 44
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->TAG:Ljava/lang/String;

    const-string v1, "edu.mit.media.funf.probe.builtin.TelephonyProbe"

    .line 45
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->TELEPHONY_PROBE:Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->callState:I

    const-string v2, ""

    .line 51
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->deviceId:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->deviceSoftwareVersion:I

    .line 53
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->lineNumber:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperator:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkOperatorName:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simCountryIso:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simOperator:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simOperatorName:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->simSerialNumber:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->subscriberId:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->networkCounteryIso:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->voicemailNumber:Ljava/lang/String;

    const v1, 0x93a80

    .line 64
    iput v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->SCHEDULE_INTERVAL:I

    const/16 v2, 0xf

    .line 65
    iput v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->SCHEDULE_DURATION:I

    .line 89
    new-instance v3, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/TelephonyInfo$1;-><init>(Lcom/google/appinventor/components/runtime/TelephonyInfo;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 117
    new-instance v3, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;-><init>(Lcom/google/appinventor/components/runtime/TelephonyInfo;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->myHandler:Landroid/os/Handler;

    .line 74
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 76
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->mainUIThreadActivity:Landroid/app/Activity;

    const-string p1, "Before create probe"

    .line 77
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->mainUIThreadActivity:Landroid/app/Activity;

    .line 79
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->gson:Lcom/google/gson/Gson;

    .line 81
    iput v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->interval:I

    .line 82
    iput v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->duration:I

    .line 84
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->gson:Lcom/google/gson/Gson;

    const-class v1, Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->probe:Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

    return-void
.end method


# virtual methods
.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable telephonyInfo sensor to run once"
    .end annotation

    .line 172
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 173
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->enabled:Z

    :cond_0
    const-string v0, "Telephony"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->probe:Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/TelephonyProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    const-string/jumbo p1, "register listener for run-once"

    .line 177
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->probe:Ledu/mit/media/funf/probe/builtin/TelephonyProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/TelephonyProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    const-string/jumbo p1, "unregister run-once listener"

    .line 180
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public TelephonyInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    move-object v10, p0

    .line 153
    iget-boolean v0, v10, Lcom/google/appinventor/components/runtime/TelephonyInfo;->enabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, v10, Lcom/google/appinventor/components/runtime/TelephonyInfo;->enabledSchedule:Z

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    iget-object v11, v10, Lcom/google/appinventor/components/runtime/TelephonyInfo;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v12, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;-><init>(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public registerDataRequest(II)V
    .locals 3

    const-string v0, "Telephony"

    const-string v1, "Registering data requests."

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "edu.mit.media.funf.probe.builtin.TelephonyProbe"

    .line 201
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 202
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->privacySafe:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hideSensitiveData"

    invoke-virtual {p2, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 203
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

    .line 205
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 2

    const-string v0, "Telephony"

    const-string v1, "Unregistering data requests."

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v0, v1}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    return-void
.end method
