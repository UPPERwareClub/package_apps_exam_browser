.class Lcom/google/appinventor/components/runtime/RunningApplications$3;
.super Ljava/lang/Object;
.source "RunningApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/RunningApplications;->AppsInfoReceived(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/RunningApplications;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/RunningApplications;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/RunningApplications$3;->this$0:Lcom/google/appinventor/components/runtime/RunningApplications;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/RunningApplications$3;->val$timestamp:J

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/RunningApplications$3;->val$appName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/RunningApplications$3;->val$className:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/RunningApplications$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "RunningApplicationsProbe"

    const-string v1, "AppsInfoReceived() is called"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RunningApplications$3;->this$0:Lcom/google/appinventor/components/runtime/RunningApplications;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/RunningApplications$3;->val$timestamp:J

    .line 217
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/RunningApplications$3;->val$appName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/RunningApplications$3;->val$className:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/RunningApplications$3;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "AppsInfoReceived"

    .line 216
    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
