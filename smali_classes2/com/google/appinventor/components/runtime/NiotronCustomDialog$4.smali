.class Lcom/google/appinventor/components/runtime/NiotronCustomDialog$4;
.super Ljava/lang/Object;
.source "NiotronCustomDialog.java"

# interfaces
.implements Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->ShowErrorDialogWithButtons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronCustomDialog;

.field final synthetic val$confirmText:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronCustomDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronCustomDialog;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$4;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$4;->val$confirmText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/ontbee/legacyforks/cn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronCustomDialog;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$4;->val$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCustomDialog$4;->val$confirmText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronCustomDialog;->ConfirmButtonClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
