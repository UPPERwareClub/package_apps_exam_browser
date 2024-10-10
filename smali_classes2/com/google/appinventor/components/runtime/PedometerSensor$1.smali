.class Lcom/google/appinventor/components/runtime/PedometerSensor$1;
.super Ljava/lang/Object;
.source "PedometerSensor.java"

# interfaces
.implements Ledu/mit/media/funf/probe/Probe$DataListener;


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

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCompleted(Ledu/mit/media/funf/json/IJsonObject;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/PedometerSensor;->PedometerScanComplete()V

    return-void
.end method

.method public onDataReceived(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V
    .locals 5

    const-string v0, "PedometerSensor"

    const-string v1, "receive pedometer data"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "timestamp"

    .line 68
    invoke-virtual {p2, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timestamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "rawValue"

    .line 69
    invoke-virtual {p2, v1}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rawVal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/PedometerSensor;->enabledSaveToDB:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/PedometerSensor;->saveToDB(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/PedometerSensor;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 78
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/PedometerSensor;->myHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
