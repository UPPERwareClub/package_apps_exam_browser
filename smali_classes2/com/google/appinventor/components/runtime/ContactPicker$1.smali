.class Lcom/google/appinventor/components/runtime/ContactPicker$1;
.super Ljava/lang/Object;
.source "ContactPicker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ContactPicker;->click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ContactPicker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ContactPicker;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker$1;->this$0:Lcom/google/appinventor/components/runtime/ContactPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 139
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker$1;->this$0:Lcom/google/appinventor/components/runtime/ContactPicker;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/ContactPicker;->-$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/ContactPicker;Z)V

    .line 140
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker$1;->this$0:Lcom/google/appinventor/components/runtime/ContactPicker;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ContactPicker;->click()V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker$1;->this$0:Lcom/google/appinventor/components/runtime/ContactPicker;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/ContactPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ContactPicker$1;->this$0:Lcom/google/appinventor/components/runtime/ContactPicker;

    const-string v0, "Click"

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
