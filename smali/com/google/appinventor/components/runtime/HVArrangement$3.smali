.class Lcom/google/appinventor/components/runtime/HVArrangement$3;
.super Ljava/lang/Object;
.source "HVArrangement.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/HVArrangement;->LongClickable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/HVArrangement;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/HVArrangement;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->this$0:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 461
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$3;->this$0:Lcom/google/appinventor/components/runtime/HVArrangement;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->LongClick()V

    const/4 p1, 0x1

    return p1
.end method