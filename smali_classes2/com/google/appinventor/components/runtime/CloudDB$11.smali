.class Lcom/google/appinventor/components/runtime/CloudDB$11;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .locals 0

    .line 1177
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$11;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$11;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$11;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$11;->val$message:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CloudDBError"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    new-instance v0, Lcom/google/appinventor/components/runtime/Notifier;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$11;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$11;->val$message:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloudDBError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
