.class Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;
.super Ljava/lang/Object;
.source "SocialProximitySensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SocialProximitySensor;->SocialProximityInfoReceived(FLjava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

.field final synthetic val$deviceName:Ljava/lang/String;

.field final synthetic val$mClass:I

.field final synthetic val$macAddress:Ljava/lang/String;

.field final synthetic val$rssi:I

.field final synthetic val$timestamp:F


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SocialProximitySensor;FLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    iput p2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$timestamp:F

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$deviceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$macAddress:Ljava/lang/String;

    iput p5, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$rssi:I

    iput p6, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$mClass:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "BluetoothSensor"

    const-string v1, "SocialProximityInfoReceived() is called"

    .line 395
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->this$0:Lcom/google/appinventor/components/runtime/SocialProximitySensor;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$timestamp:F

    .line 397
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$deviceName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$macAddress:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$rssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/appinventor/components/runtime/SocialProximitySensor$3;->val$mClass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "SocialProximityInfoReceived"

    .line 396
    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
