.class Lcom/google/appinventor/components/runtime/BatterySensor$2;
.super Landroid/os/Handler;
.source "BatterySensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/BatterySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BatterySensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BatterySensor;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BatterySensor$2;->this$0:Lcom/google/appinventor/components/runtime/BatterySensor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 105
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ledu/mit/media/funf/json/IJsonObject;

    const-string v0, "BatterySensor"

    const-string v1, "Update component\'s varibles....."

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BatterySensor$2;->this$0:Lcom/google/appinventor/components/runtime/BatterySensor;

    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/BatterySensor;->-$$Nest$fputtimestamp(Lcom/google/appinventor/components/runtime/BatterySensor;J)V

    .line 110
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BatterySensor$2;->this$0:Lcom/google/appinventor/components/runtime/BatterySensor;

    const-string v2, "scale"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/BatterySensor;->-$$Nest$fputscale(Lcom/google/appinventor/components/runtime/BatterySensor;I)V

    .line 111
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BatterySensor$2;->this$0:Lcom/google/appinventor/components/runtime/BatterySensor;

    const-string v2, "level"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/BatterySensor;->-$$Nest$fputlevel(Lcom/google/appinventor/components/runtime/BatterySensor;I)V

    const-string p1, " before call BatteryInfoReceived()"

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BatterySensor$2;->this$0:Lcom/google/appinventor/components/runtime/BatterySensor;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BatterySensor;->-$$Nest$fgettimestamp(Lcom/google/appinventor/components/runtime/BatterySensor;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BatterySensor$2;->this$0:Lcom/google/appinventor/components/runtime/BatterySensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/BatterySensor;->-$$Nest$fgetscale(Lcom/google/appinventor/components/runtime/BatterySensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BatterySensor$2;->this$0:Lcom/google/appinventor/components/runtime/BatterySensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/BatterySensor;->-$$Nest$fgetlevel(Lcom/google/appinventor/components/runtime/BatterySensor;)I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/BatterySensor;->BatteryInfoReceived(JII)V

    const-string p1, " after call BatteryInfoReceived()"

    .line 115
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
