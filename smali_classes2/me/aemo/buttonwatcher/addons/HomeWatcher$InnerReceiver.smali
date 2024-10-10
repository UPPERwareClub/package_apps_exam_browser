.class Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/aemo/buttonwatcher/addons/HomeWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lme/aemo/buttonwatcher/addons/HomeWatcher;


# direct methods
.method private constructor <init>(Lme/aemo/buttonwatcher/addons/HomeWatcher;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;->this$0:Lme/aemo/buttonwatcher/addons/HomeWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/aemo/buttonwatcher/addons/HomeWatcher;Lme/aemo/buttonwatcher/addons/HomeWatcher$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;-><init>(Lme/aemo/buttonwatcher/addons/HomeWatcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "reason"

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Reason: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HomeWatcher"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p2, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;->this$0:Lme/aemo/buttonwatcher/addons/HomeWatcher;

    invoke-static {p2}, Lme/aemo/buttonwatcher/addons/HomeWatcher;->access$100(Lme/aemo/buttonwatcher/addons/HomeWatcher;)Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "homekey"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    iget-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;->this$0:Lme/aemo/buttonwatcher/addons/HomeWatcher;

    invoke-static {p1}, Lme/aemo/buttonwatcher/addons/HomeWatcher;->access$100(Lme/aemo/buttonwatcher/addons/HomeWatcher;)Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    move-result-object p1

    invoke-interface {p1}, Lme/aemo/buttonwatcher/addons/OnHomePressedListener;->onHomePressed()V

    goto :goto_0

    :cond_0
    const-string p2, "recentapps"

    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Lme/aemo/buttonwatcher/addons/HomeWatcher$InnerReceiver;->this$0:Lme/aemo/buttonwatcher/addons/HomeWatcher;

    invoke-static {p1}, Lme/aemo/buttonwatcher/addons/HomeWatcher;->access$100(Lme/aemo/buttonwatcher/addons/HomeWatcher;)Lme/aemo/buttonwatcher/addons/OnHomePressedListener;

    move-result-object p1

    invoke-interface {p1}, Lme/aemo/buttonwatcher/addons/OnHomePressedListener;->onRecentAppPressed()V

    :cond_1
    :goto_0
    return-void
.end method
