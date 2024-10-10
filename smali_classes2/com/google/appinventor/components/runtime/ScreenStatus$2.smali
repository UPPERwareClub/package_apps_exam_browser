.class Lcom/google/appinventor/components/runtime/ScreenStatus$2;
.super Landroid/os/Handler;
.source "ScreenStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ScreenStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ScreenStatus;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$2;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 94
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ledu/mit/media/funf/json/IJsonObject;

    const-string v0, "ScreenStatus"

    const-string v1, "Update component\'s varibles....."

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$2;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    const-string v2, "screenOn"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/ScreenStatus;->-$$Nest$fputscreen_on(Lcom/google/appinventor/components/runtime/ScreenStatus;Z)V

    .line 98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$2;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/ScreenStatus;->-$$Nest$fputtimestamp(Lcom/google/appinventor/components/runtime/ScreenStatus;J)V

    const-string p1, " before call ApplicationsInfoReceived()"

    .line 101
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$2;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ScreenStatus;->-$$Nest$fgettimestamp(Lcom/google/appinventor/components/runtime/ScreenStatus;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$2;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/ScreenStatus;->-$$Nest$fgetscreen_on(Lcom/google/appinventor/components/runtime/ScreenStatus;)Z

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/ScreenStatus;->ScreenInfoReceived(JZ)V

    const-string p1, " after call ApplicationsInfoReceived()"

    .line 103
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
