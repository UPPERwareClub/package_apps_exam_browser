.class Lcom/google/appinventor/components/runtime/AsyncTask$3;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AsyncTask;->CallAfterDelay(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

.field final synthetic val$delay:I

.field final synthetic val$procedureName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AsyncTask;ILjava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$3;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iput p2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$3;->val$delay:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/AsyncTask$3;->val$procedureName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 103
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$3;->val$delay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$3;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AsyncTask;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/AsyncTask$3$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AsyncTask$3$1;-><init>(Lcom/google/appinventor/components/runtime/AsyncTask$3;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method