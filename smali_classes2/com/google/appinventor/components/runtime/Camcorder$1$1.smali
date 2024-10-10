.class Lcom/google/appinventor/components/runtime/Camcorder$1$1;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Camcorder$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Camcorder$1;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Camcorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 105
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Camcorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Camcorder$1;->val$me:Lcom/google/appinventor/components/runtime/Camcorder;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Camcorder;->-$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/Camcorder;Z)V

    .line 106
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Camcorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Camcorder$1;->val$me:Lcom/google/appinventor/components/runtime/Camcorder;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Camcorder;->RecordVideo()V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Camcorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Camcorder$1;->this$0:Lcom/google/appinventor/components/runtime/Camcorder;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Camcorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/Camcorder$1;->val$me:Lcom/google/appinventor/components/runtime/Camcorder;

    const-string v0, "RecordVideo"

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
