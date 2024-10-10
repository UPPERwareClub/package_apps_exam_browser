.class Lcom/google/appinventor/components/runtime/AsyncTask$1;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AsyncTask;->CallAsynchronous(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

.field final synthetic val$procedureName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->val$procedureName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->val$procedureName:Ljava/lang/String;

    const-string v2, "CallAsynchronous"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/google/appinventor/components/runtime/AsyncTask;->-$$Nest$mdoCall(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$1;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AsyncTask;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/AsyncTask$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/AsyncTask$1$1;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
