.class Lcom/google/appinventor/components/runtime/WebViewer$3;
.super Ljava/lang/Object;
.source "WebViewer.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer;->RunJavaScript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$3;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 635
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer$3;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$3;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->AfterJavaScriptEvaluated(Ljava/lang/String;)V

    return-void
.end method
