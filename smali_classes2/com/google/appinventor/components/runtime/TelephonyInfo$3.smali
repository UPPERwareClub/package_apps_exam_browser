.class Lcom/google/appinventor/components/runtime/TelephonyInfo$3;
.super Ljava/lang/Object;
.source "TelephonyInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TelephonyInfo;->TelephonyInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$lineNumber:Ljava/lang/String;

.field final synthetic val$networkCounteryIso:Ljava/lang/String;

.field final synthetic val$networkOperator:Ljava/lang/String;

.field final synthetic val$networkOperatorName:Ljava/lang/String;

.field final synthetic val$simOperator:Ljava/lang/String;

.field final synthetic val$simSerialNumber:Ljava/lang/String;

.field final synthetic val$voicemailNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TelephonyInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$deviceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$lineNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$voicemailNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$networkOperator:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$networkOperatorName:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$networkCounteryIso:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$simSerialNumber:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$simOperator:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Telephony"

    const-string v1, "TelephonyInfoReceived() is called"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->this$0:Lcom/google/appinventor/components/runtime/TelephonyInfo;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$deviceId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$lineNumber:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$voicemailNumber:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$networkOperator:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$networkOperatorName:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$networkCounteryIso:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$simSerialNumber:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TelephonyInfo$3;->val$simOperator:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "TelephonyInfoReceived"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
