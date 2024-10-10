.class Lcom/google/appinventor/components/runtime/TelephonyInfo$2;
.super Landroid/os/Handler;
.source "TelephonyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/TelephonyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TelephonyInfo;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 121
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ledu/mit/media/funf/json/IJsonObject;

    const-string v0, "Telephony"

    const-string v1, "Update component\'s varibles....."

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "callState"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputcallState(Lcom/google/appinventor/components/runtime/TelephonyInfo;I)V

    .line 125
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "deviceId"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputdeviceId(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "deviceSoftwareVersion"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputdeviceSoftwareVersion(Lcom/google/appinventor/components/runtime/TelephonyInfo;I)V

    .line 127
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "line1Number"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputlineNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "networkOperator"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputnetworkOperator(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "networkOperatorName"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputnetworkOperatorName(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "simCountryIso"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputsimCountryIso(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "simOperator"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputsimOperator(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "simSerialNumber"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputsimSerialNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "subscriberId"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputsubscriberId(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "networkCountryIso"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputnetworkCounteryIso(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const-string v2, "voicemailNumber"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fputvoicemailNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;)V

    const-string p1, " before call LocationInfoReceived();"

    .line 137
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fgetdeviceId(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fgetlineNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fgetvoicemailNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fgetnetworkOperator(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fgetnetworkOperatorName(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fgetnetworkCounteryIso(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fgetsimSerialNumber(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$2;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->-$$Nest$fgetsimOperator(Lcom/google/appinventor/components/runtime/TelephonyInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/TelephonyInfo;->TelephonyInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, " after call LocationInfoReceived();"

    .line 139
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
