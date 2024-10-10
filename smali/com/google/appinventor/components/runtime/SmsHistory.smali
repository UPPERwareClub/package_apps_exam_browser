.class public Lcom/google/appinventor/components/runtime/SmsHistory;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "SmsHistory.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Messages sent and received by this device using SMS. Sensitive data is hashed for user privacy.Could specifiy \"afterDate\" parameter to only read sms information after that date."
    iconName = "images/sms_history.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_SMS"
.end annotation


# instance fields
.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final SMS_PROBE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private afterDate:J

.field private body:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private date:J

.field jsonParser:Lcom/google/gson/JsonParser;

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field final myHandler:Landroid/os/Handler;

.field private probe:Ledu/mit/media/funf/probe/builtin/SmsProbe;

.field private read:Z

.field sdf:Ljava/text/SimpleDateFormat;

.field private type:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetaddress(Lcom/google/appinventor/components/runtime/SmsHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->address:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbody(Lcom/google/appinventor/components/runtime/SmsHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->body:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdate(Lcom/google/appinventor/components/runtime/SmsHistory;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->date:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetread(Lcom/google/appinventor/components/runtime/SmsHistory;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->read:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/google/appinventor/components/runtime/SmsHistory;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->type:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputaddress(Lcom/google/appinventor/components/runtime/SmsHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->address:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbody(Lcom/google/appinventor/components/runtime/SmsHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->body:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdate(Lcom/google/appinventor/components/runtime/SmsHistory;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->date:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputread(Lcom/google/appinventor/components/runtime/SmsHistory;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->read:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtype(Lcom/google/appinventor/components/runtime/SmsHistory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->type:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTypeName(Lcom/google/appinventor/components/runtime/SmsHistory;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/SmsHistory;->getTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 226
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, "SmsProbe"

    .line 41
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->TAG:Ljava/lang/String;

    const-string v1, "edu.mit.media.funf.probe.builtin.SmsProbe"

    .line 43
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->SMS_PROBE:Ljava/lang/String;

    const v1, 0xa8c0

    .line 54
    iput v1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->SCHEDULE_INTERVAL:I

    const/16 v2, 0xf

    .line 55
    iput v2, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->SCHEDULE_DURATION:I

    .line 56
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->sdf:Ljava/text/SimpleDateFormat;

    const-wide/16 v3, 0x0

    .line 59
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->afterDate:J

    .line 61
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->jsonParser:Lcom/google/gson/JsonParser;

    .line 65
    new-instance v3, Lcom/google/appinventor/components/runtime/SmsHistory$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/SmsHistory$1;-><init>(Lcom/google/appinventor/components/runtime/SmsHistory;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 137
    new-instance v3, Lcom/google/appinventor/components/runtime/SmsHistory$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/SmsHistory$2;-><init>(Lcom/google/appinventor/components/runtime/SmsHistory;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->myHandler:Landroid/os/Handler;

    .line 229
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 230
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->context:Landroid/content/Context;

    .line 231
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->mainUIThreadActivity:Landroid/app/Activity;

    const-string p1, "Before create probe"

    .line 232
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->mainUIThreadActivity:Landroid/app/Activity;

    .line 234
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 233
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->gson:Lcom/google/gson/Gson;

    .line 235
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/SmsProbe;

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/SmsProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->probe:Ledu/mit/media/funf/probe/builtin/SmsProbe;

    .line 239
    iput v1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->interval:I

    .line 240
    iput v2, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->duration:I

    return-void
.end method

.method private getTypeName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    const-string p1, "QUEUED"

    goto :goto_0

    :pswitch_1
    const-string p1, "FAILED"

    goto :goto_0

    :pswitch_2
    const-string p1, "OUTBOX"

    goto :goto_0

    :pswitch_3
    const-string p1, "DRAFT"

    goto :goto_0

    :pswitch_4
    const-string p1, "SENT"

    goto :goto_0

    :pswitch_5
    const-string p1, "INBOX"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public AfterDate(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Specify the date after which the SMS messages occurred. The formate should be \"YYYY-MM-DD HH:mm:ss\". Note everytime when the SMS messages are read, one needs toreset AfterDate if likes to read those messages again."
    .end annotation

    const-string v0, ""

    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2e40

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 267
    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "AfterDate"

    .line 266
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 269
    :goto_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 270
    sget-object p1, Ledu/mit/media/funf/time/TimeUnit;->MILLISECONDS:Ledu/mit/media/funf/time/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ledu/mit/media/funf/time/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->afterDate:J

    .line 272
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->afterDate:J

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

    const-string v0, "SmsProbe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public DefaultInterval()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The default interval (in seconds) between each scan for this probe"
    .end annotation

    const v0, 0x4728c000    # 43200.0f

    return v0
.end method

.method public Enabled(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable sms history sensor to run once"
    .end annotation

    .line 287
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 288
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->enabled:Z

    .line 289
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 292
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->afterDate:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    .line 293
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v3, "afterDate"

    invoke-virtual {v0, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 296
    :cond_1
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->privacySafe:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "hideSensitiveData"

    invoke-virtual {v0, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 297
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/SmsProbe;

    invoke-virtual {p1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/SmsProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->probe:Ledu/mit/media/funf/probe/builtin/SmsProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 299
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/SmsProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "run-once config for SMS:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsProbe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->probe:Ledu/mit/media/funf/probe/builtin/SmsProbe;

    new-array v0, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ledu/mit/media/funf/probe/builtin/SmsProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    :goto_0
    return-void
.end method

.method public SmsInfoReceived(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    move-object v8, p0

    .line 340
    iget-boolean v0, v8, Lcom/google/appinventor/components/runtime/SmsHistory;->enabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, v8, Lcom/google/appinventor/components/runtime/SmsHistory;->enabledSchedule:Z

    if-eqz v0, :cond_1

    .line 342
    :cond_0
    iget-object v9, v8, Lcom/google/appinventor/components/runtime/SmsHistory;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v10, Lcom/google/appinventor/components/runtime/SmsHistory$3;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/SmsHistory$3;-><init>(Lcom/google/appinventor/components/runtime/SmsHistory;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public registerDataRequest(II)V
    .locals 5

    const-string v0, "SmsProbe"

    const-string v1, "Registering sms requests."

    .line 320
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "edu.mit.media.funf.probe.builtin.SmsProbe"

    .line 323
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/SmsHistory;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 325
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->afterDate:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 326
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "afterDate"

    invoke-virtual {p2, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 328
    :cond_0
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->privacySafe:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hideSensitiveData"

    invoke-virtual {p2, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 330
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

    .line 332
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 2

    const-string v0, "SmsProbe"

    const-string v1, "Unregistering sms data requests."

    .line 311
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SmsHistory;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v0, v1}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    return-void
.end method
