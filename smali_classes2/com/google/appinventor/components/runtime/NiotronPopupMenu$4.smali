.class Lcom/google/appinventor/components/runtime/NiotronPopupMenu$4;
.super Ljava/lang/Object;
.source "NiotronPopupMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->AddItems(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronPopupMenu;

.field final synthetic val$item:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronPopupMenu;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronPopupMenu;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$4;->val$item:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronPopupMenu;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$4;->val$item:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->MenuItemClick(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
