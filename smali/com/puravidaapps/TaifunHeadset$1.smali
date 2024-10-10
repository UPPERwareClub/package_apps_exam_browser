.class Lcom/puravidaapps/TaifunHeadset$1;
.super Landroid/content/BroadcastReceiver;
.source "TaifunHeadset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/puravidaapps/TaifunHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/puravidaapps/TaifunHeadset;


# direct methods
.method constructor <init>(Lcom/puravidaapps/TaifunHeadset;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/puravidaapps/TaifunHeadset$1;->this$0:Lcom/puravidaapps/TaifunHeadset;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string/jumbo v0, "state"

    .line 98
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 107
    iget-object p1, p0, Lcom/puravidaapps/TaifunHeadset$1;->this$0:Lcom/puravidaapps/TaifunHeadset;

    const-string/jumbo p2, "unknown"

    invoke-static {p1, p2}, Lcom/puravidaapps/TaifunHeadset;->access$002(Lcom/puravidaapps/TaifunHeadset;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/puravidaapps/TaifunHeadset$1;->this$0:Lcom/puravidaapps/TaifunHeadset;

    const-string/jumbo p2, "plugged"

    invoke-static {p1, p2}, Lcom/puravidaapps/TaifunHeadset;->access$002(Lcom/puravidaapps/TaifunHeadset;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/puravidaapps/TaifunHeadset$1;->this$0:Lcom/puravidaapps/TaifunHeadset;

    const-string/jumbo p2, "unplugged"

    invoke-static {p1, p2}, Lcom/puravidaapps/TaifunHeadset;->access$002(Lcom/puravidaapps/TaifunHeadset;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    :goto_0
    iget-object p1, p0, Lcom/puravidaapps/TaifunHeadset$1;->this$0:Lcom/puravidaapps/TaifunHeadset;

    invoke-static {p1}, Lcom/puravidaapps/TaifunHeadset;->access$000(Lcom/puravidaapps/TaifunHeadset;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/puravidaapps/TaifunHeadset;->Changed(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
