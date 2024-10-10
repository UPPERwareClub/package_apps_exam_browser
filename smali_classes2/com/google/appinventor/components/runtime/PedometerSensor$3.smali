.class Lcom/google/appinventor/components/runtime/PedometerSensor$3;
.super Ljava/lang/Object;
.source "PedometerSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PedometerSensor;->PedometerInfoReceived(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PedometerSensor;J)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$3;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$3;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "PedometerSensor"

    const-string v1, "PedometerInfoReceived() is called"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$3;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$3;->val$timestamp:J

    .line 137
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PedometerInfoReceived"

    .line 136
    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
