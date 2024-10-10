.class Lcom/google/appinventor/components/runtime/WebViewer$4;
.super Ljava/lang/Object;
.source "WebViewer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/WebViewer;

.field final synthetic val$caller:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 711
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/WebViewer;->-$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/WebViewer;Z)V

    .line 712
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/WebViewer;->-$$Nest$fgetwebview(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->val$url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$4;->val$caller:Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
