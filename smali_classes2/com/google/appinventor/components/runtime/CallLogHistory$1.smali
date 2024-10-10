.class Lcom/google/appinventor/components/runtime/CallLogHistory$1;
.super Ljava/lang/Object;
.source "CallLogHistory.java"

# interfaces
.implements Ledu/mit/media/funf/probe/Probe$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/CallLogHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CallLogHistory;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$1;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCompleted(Ledu/mit/media/funf/json/IJsonObject;Lcom/google/gson/JsonElement;)V
    .locals 0

    return-void
.end method

.method public onDataReceived(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V
    .locals 4

    const-string v0, "CallLogProbe"

    const-string v1, "receive data of calllog"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p2}, Ledu/mit/media/funf/json/IJsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$1;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/CallLogHistory;->enabledSaveToDB:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$1;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/CallLogHistory;->saveToDB(Ledu/mit/media/funf/json/IJsonObject;Ledu/mit/media/funf/json/IJsonObject;)V

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$1;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/CallLogHistory;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 105
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/CallLogHistory$1;->this$0:Lcom/google/appinventor/components/runtime/CallLogHistory;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/CallLogHistory;->myHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
