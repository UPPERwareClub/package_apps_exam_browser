.class Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$1;
.super Landroid/os/Handler;
.source "CellTowerProbeSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ledu/mit/media/funf/json/IJsonObject;

    const-string v0, "CellTowerProbe"

    const-string v1, "Update component\'s varibles....."

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;

    const-string v2, "cid"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->-$$Nest$fputcellid(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;J)V

    .line 75
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;

    const-string v2, "lac"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->-$$Nest$fputlocationAreaCode(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;J)V

    .line 77
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;

    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->-$$Nest$fputtimestamp(Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;J)V

    const-string p1, " before call CellInfoReceived()"

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor$1;->this$0:Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/CellTowerProbeSensor;->CellInfoReceived()V

    const-string p1, " after call CellInfoReceived()"

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
