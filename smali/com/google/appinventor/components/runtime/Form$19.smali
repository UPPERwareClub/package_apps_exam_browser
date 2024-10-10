.class Lcom/google/appinventor/components/runtime/Form$19;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$permissionsToAsk:Ljava/util/List;

.field final synthetic val$request:Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V
    .locals 0

    .line 3357
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$19;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$19;->val$permissionsToAsk:Ljava/util/List;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Form$19;->val$request:Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3360
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$19;->val$permissionsToAsk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3361
    new-instance v1, Lcom/google/appinventor/components/runtime/Form$19$1;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Form$19$1;-><init>(Lcom/google/appinventor/components/runtime/Form$19;Ljava/util/Iterator;)V

    .line 3380
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$19;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method
