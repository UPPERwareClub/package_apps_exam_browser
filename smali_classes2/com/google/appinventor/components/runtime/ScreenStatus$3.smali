.class Lcom/google/appinventor/components/runtime/ScreenStatus$3;
.super Ljava/lang/Object;
.source "ScreenStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ScreenStatus;->ScreenInfoReceived(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

.field final synthetic val$screenOn:Z

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ScreenStatus;JZ)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->val$timestamp:J

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->val$screenOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ScreenStatus"

    const-string v1, "ScreenInfoReceived() is called"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->this$0:Lcom/google/appinventor/components/runtime/ScreenStatus;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->val$timestamp:J

    .line 164
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ScreenStatus$3;->val$screenOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "ScreenInfoReceived"

    .line 163
    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
