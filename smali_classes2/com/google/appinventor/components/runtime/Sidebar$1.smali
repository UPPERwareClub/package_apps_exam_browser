.class Lcom/google/appinventor/components/runtime/Sidebar$1;
.super Ljava/lang/Object;
.source "Sidebar.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Sidebar;->addListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Sidebar;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Sidebar;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sidebar$1;->this$0:Lcom/google/appinventor/components/runtime/Sidebar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sidebar$1;->this$0:Lcom/google/appinventor/components/runtime/Sidebar;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Sidebar;->MenuItemSelected(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
