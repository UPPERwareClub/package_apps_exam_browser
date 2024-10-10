.class Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NiotronRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NiotronViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;Landroid/view/View;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter$NiotronViewHolder;->this$1:Lcom/google/appinventor/components/runtime/NiotronRecyclerView$NiotronAdapter;

    .line 278
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
