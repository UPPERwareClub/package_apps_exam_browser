.class Lcom/google/appinventor/components/runtime/Form$11;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->ShowNavigationBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Z)V
    .locals 0

    .line 1835
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$11;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/Form$11;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 1838
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form$11;->val$enabled:Z

    if-nez p1, :cond_0

    .line 1839
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$11;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$11;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
