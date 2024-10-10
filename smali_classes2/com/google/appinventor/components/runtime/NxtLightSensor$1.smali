.class Lcom/google/appinventor/components/runtime/NxtLightSensor$1;
.super Ljava/lang/Object;
.source "NxtLightSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtLightSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtLightSensor;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->-$$Nest$mgetLightValue(Lcom/google/appinventor/components/runtime/NxtLightSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    .line 66
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_5

    .line 68
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->-$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 69
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->-$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 71
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    goto :goto_0

    .line 73
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->-$$Nest$fgetpreviousState(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 77
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->-$$Nest$fgetbelowRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BelowRange()V

    .line 80
    :cond_2
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->-$$Nest$fgetwithinRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->WithinRange()V

    .line 83
    :cond_3
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->-$$Nest$fgetaboveRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->AboveRange()V

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->-$$Nest$fputpreviousState(Lcom/google/appinventor/components/runtime/NxtLightSensor;Lcom/google/appinventor/components/runtime/NxtLightSensor$State;)V

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->-$$Nest$misHandlerNeeded(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->-$$Nest$fgetsensorReader(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method
