.class Lcom/google/appinventor/components/runtime/DataCollection$13;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->importFromWebAsync(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$webColumns:Ljava/util/concurrent/Future;

.field final synthetic val$webComponent:Lcom/google/appinventor/components/runtime/Web;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/util/concurrent/Future;Lcom/google/appinventor/components/runtime/Web;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$13;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$13;->val$webColumns:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/DataCollection$13;->val$webComponent:Lcom/google/appinventor/components/runtime/Web;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 787
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$13;->val$webColumns:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 791
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 789
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v1, v0

    .line 794
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$13;->val$webComponent:Lcom/google/appinventor/components/runtime/Web;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/DataCollection$13;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fgetdataSource(Lcom/google/appinventor/components/runtime/DataCollection;)Lcom/google/appinventor/components/runtime/DataSource;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 795
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$13;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fgetdataSource(Lcom/google/appinventor/components/runtime/DataCollection;)Lcom/google/appinventor/components/runtime/DataSource;

    move-result-object v3

    invoke-static {v2, v3, v0, v0}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$mupdateCurrentDataSourceValue(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$13;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/DataModel;->importFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    .line 800
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$13;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->onDataChange()V

    return-void
.end method
