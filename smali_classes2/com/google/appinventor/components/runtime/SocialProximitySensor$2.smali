.class Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;
.super Ljava/lang/Object;
.source "SocialProximitySensor.java"

# interfaces
.implements Ledu/mit/media/funf/probe/Probe$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/SocialProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SocialProximitySensor;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCompleted(Ledu/mit/media/funf/json/IJsonObject;Lcom/google/gson/JsonElement;)V
    .locals 0

    const-string p1, "BluetoothSensor"

    const-string p2, " before call SocialProximityScanComplete()"

    .line 196
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->SocialProximityScanComplete()V

    return-void
.end method

.method public onDataReceived(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V
    .locals 3

    const-string v0, "BluetoothSensor"

    const-string v1, "received Bluetooth sensor info"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->enabledSaveToDB:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->saveToDB(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 230
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$2;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/SocialProximitySensor;->myHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
