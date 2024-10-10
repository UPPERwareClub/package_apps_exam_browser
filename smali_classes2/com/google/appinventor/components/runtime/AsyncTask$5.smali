.class Lcom/google/appinventor/components/runtime/AsyncTask$5;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AsyncTask;->doCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

.field final synthetic val$caller:Ljava/lang/String;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AsyncTask;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->val$caller:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AsyncTask;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->val$caller:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    .line 232
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string v5, "an unknown error occurred"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/AsyncTask$5;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/16 v4, 0xce4

    .line 231
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
