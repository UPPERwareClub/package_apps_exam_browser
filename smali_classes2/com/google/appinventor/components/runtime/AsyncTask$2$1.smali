.class Lcom/google/appinventor/components/runtime/AsyncTask$2$1;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AsyncTask$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/AsyncTask$2;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AsyncTask$2;Ljava/lang/Object;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2$1;->this$1:Lcom/google/appinventor/components/runtime/AsyncTask$2;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2$1;->this$1:Lcom/google/appinventor/components/runtime/AsyncTask$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AsyncTask$2;->this$0:Lcom/google/appinventor/components/runtime/AsyncTask;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2$1;->this$1:Lcom/google/appinventor/components/runtime/AsyncTask$2;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AsyncTask$2;->val$procedureName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2$1;->this$1:Lcom/google/appinventor/components/runtime/AsyncTask$2;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/AsyncTask$2;->val$arguments:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AsyncTask$2$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/AsyncTask;->CallFinishedWithResult(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V

    return-void
.end method
