.class Lcom/google/appinventor/components/runtime/PedometerSensor$4;
.super Ljava/lang/Object;
.source "PedometerSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PedometerSensor;->PedometerScanComplete()V
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

    .line 151
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$4;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "PedometerSensor"

    const-string v1, "PedometerScanComplete() is called"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PedometerSensor$4;->this$0:Lcom/google/appinventor/components/runtime/PedometerSensor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PedometerScanComplete"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method