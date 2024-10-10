.class Lcom/google/appinventor/components/runtime/PedometerSensor$2;
.super Landroid/os/Handler;
.source "PedometerSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PedometerSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PedometerSensor;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$2;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 90
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ledu/mit/media/funf/json/IJsonObject;

    const-string v0, "PedometerSensor"

    const-string v1, "Update component\'s varibles....."

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$2;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/PedometerSensor;->-$$Nest$fputtimestamp(Lcom/google/appinventor/components/runtime/PedometerSensor;J)V

    const-string p1, " before call PedometerInfoReceived()"

    .line 95
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$2;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/PedometerSensor;->-$$Nest$fgettimestamp(Lcom/google/appinventor/components/runtime/PedometerSensor;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/appinventor/components/runtime/PedometerSensor;->PedometerInfoReceived(J)V

    const-string p1, " after call PedometerInfoReceived()"

    .line 97
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
