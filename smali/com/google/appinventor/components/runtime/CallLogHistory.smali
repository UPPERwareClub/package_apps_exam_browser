.class public Lcom/google/appinventor/components/runtime/CallLogHistory;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "CallLogHistory.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Return information of recent calls. A wrapper around Android.Calllog.Calls (see http://developer.android.com/reference/android/provider/CallLog.Calls.html). Could specifiy \"afterDate\" parameter to only read calllog information after that date. Some of the returning fields (name, number, numberType, numberLabel) can be returned as hashed for privacy reasons"
    iconName = "images/phoneCall.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# instance fields
.field private final CALLLOG_PROBE:Ljava/lang/String;

.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field private afterDate:J

.field context:Landroid/content/Context;

.field private date:J

.field private duration:I

.field jsonParser:Lcom/google/gson/JsonParser;

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field final myHandler:Landroid/os/Handler;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private numberLabel:Ljava/lang/String;

.field private numberType:Ljava/lang/String;

.field private probe:Ledu/mit/media/funf/probe/builtin/CallLogProbe;

.field sdf:Ljava/text/SimpleDateFormat;

.field private type:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetdate(Lcom/google/appinventor/components/runtime/CallLogHistory;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->date:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetduration(Lcom/google/appinventor/components/runtime/CallLogHistory;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->duration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetname(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnumber(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->number:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnumberType(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->numberType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/google/appinventor/components/runtime/CallLogHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->type:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdate(Lcom/google/appinventor/components/runtime/CallLogHistory;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->date:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputduration(Lcom/google/appinventor/components/runtime/CallLogHistory;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->duration:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputname(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->name:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnumber(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->number:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnumberLabel(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->numberLabel:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnumberType(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->numberType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtype(Lcom/google/appinventor/components/runtime/CallLogHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->type:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTypeName(Lcom/google/appinventor/components/runtime/CallLogHistory;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->getTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 184
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, "CallLogProbe"

    .line 44
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->TAG:Ljava/lang/String;

    const-string v1, "edu.mit.media.funf.probe.builtin.CallLogProbe"

    .line 46
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->CALLLOG_PROBE:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 58
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->afterDate:J

    const v1, 0x15180

    .line 62
    iput v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->SCHEDULE_INTERVAL:I

    const/16 v2, 0xf

    .line 63
    iput v2, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->SCHEDULE_DURATION:I

    .line 64
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->sdf:Ljava/text/SimpleDateFormat;

    .line 67
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->jsonParser:Lcom/google/gson/JsonParser;

    .line 71
    new-instance v3, Lcom/google/appinventor/components/runtime/CallLogHistory$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/CallLogHistory$1;-><init>(Lcom/google/appinventor/components/runtime/CallLogHistory;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 113
    new-instance v3, Lcom/google/appinventor/components/runtime/CallLogHistory$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/CallLogHistory$2;-><init>(Lcom/google/appinventor/components/runtime/CallLogHistory;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->myHandler:Landroid/os/Handler;

    .line 187
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 188
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->context:Landroid/content/Context;

    .line 189
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->mainUIThreadActivity:Landroid/app/Activity;

    const-string p1, "Before create probe"

    .line 190
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->mainUIThreadActivity:Landroid/app/Activity;

    .line 192
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 191
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->gson:Lcom/google/gson/Gson;

    .line 193
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->probe:Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    .line 197
    iput v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->interval:I

    .line 198
    iput v2, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->duration:I

    return-void
.end method

.method private getTypeName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "MISSED"

    goto :goto_0

    :cond_1
    const-string p1, "OUTGOING"

    goto :goto_0

    :cond_2
    const-string p1, "INCOMING"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public AfterDate(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Specify the date after which the callogs occurred. The formate should be \"YYYY-MM-DD HH:mm:ss\""
    .end annotation

    const-string v0, ""

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2e40

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 222
    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "AfterDate"

    .line 221
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 224
    :goto_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 225
    sget-object p1, Ledu/mit/media/funf/time/TimeUnit;->MILLISECONDS:Ledu/mit/media/funf/time/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ledu/mit/media/funf/time/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->afterDate:J

    .line 227
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->afterDate:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CallLogProbe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public CalllogsInfoReceived(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    move-object v10, p0

    .line 315
    iget-boolean v0, v10, Lcom/google/appinventor/components/runtime/CallLogHistory;->enabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, v10, Lcom/google/appinventor/components/runtime/CallLogHistory;->enabledSchedule:Z

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    iget-object v11, v10, Lcom/google/appinventor/components/runtime/CallLogHistory;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v12, Lcom/google/appinventor/components/runtime/CallLogHistory$3;

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/CallLogHistory$3;-><init>(Lcom/google/appinventor/components/runtime/CallLogHistory;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public DefaultInterval()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The default interval (in seconds) between each scan for this probe"
    .end annotation

    const v0, 0x47a8c000    # 86400.0f

    return v0
.end method

.method public Enabled(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable calllog history probe to run once"
    .end annotation

    .line 258
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 259
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->enabled:Z

    .line 260
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 263
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->afterDate:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    .line 264
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v3, "afterDate"

    invoke-virtual {v0, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 267
    :cond_1
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->privacySafe:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "hideSensitiveData"

    invoke-virtual {v0, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 268
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    invoke-virtual {p1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->probe:Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 269
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/CallLogProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "run-once config:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CallLogProbe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->probe:Ledu/mit/media/funf/probe/builtin/CallLogProbe;

    new-array v0, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ledu/mit/media/funf/probe/builtin/CallLogProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    :goto_0
    return-void
.end method

.method public registerDataRequest(II)V
    .locals 5

    const-string v0, "CallLogProbe"

    const-string v1, "Registering calllogs requests."

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "edu.mit.media.funf.probe.builtin.CallLogProbe"

    .line 294
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/CallLogHistory;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 296
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->afterDate:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 297
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "afterDate"

    invoke-virtual {p2, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 299
    :cond_0
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->privacySafe:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hideSensitiveData"

    invoke-virtual {p2, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 300
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallLog request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 2

    const-string v0, "CallLogProbe"

    const-string v1, "Unregistering calllog data requests."

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v0, v1}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    return-void
.end method
