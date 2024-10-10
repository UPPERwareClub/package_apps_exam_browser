.class Lme/aemo/floatingview/FloatingView$1;
.super Ljava/lang/Object;
.source "FloatingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/floatingview/FloatingView;->RestoreFloatingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/aemo/floatingview/FloatingView;


# direct methods
.method constructor <init>(Lme/aemo/floatingview/FloatingView;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 145
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$000(Lme/aemo/floatingview/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    invoke-static {}, Lme/aemo/floatingview/FloatingView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$200(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$200(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v1}, Lme/aemo/floatingview/FloatingView;->access$000(Lme/aemo/floatingview/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 148
    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$102(Z)Z

    .line 149
    iget-object v1, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v1}, Lme/aemo/floatingview/FloatingView;->access$000(Lme/aemo/floatingview/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v2}, Lme/aemo/floatingview/FloatingView;->access$300(Lme/aemo/floatingview/FloatingView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 150
    iget-object v1, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v1}, Lme/aemo/floatingview/FloatingView;->access$300(Lme/aemo/floatingview/FloatingView;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v1}, Lme/aemo/floatingview/FloatingView;->access$300(Lme/aemo/floatingview/FloatingView;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$300(Lme/aemo/floatingview/FloatingView;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$500(Lme/aemo/floatingview/FloatingView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v2}, Lme/aemo/floatingview/FloatingView;->access$300(Lme/aemo/floatingview/FloatingView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v3}, Lme/aemo/floatingview/FloatingView;->access$400(Lme/aemo/floatingview/FloatingView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 154
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$1;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0, v1}, Lme/aemo/floatingview/FloatingView;->access$002(Lme/aemo/floatingview/FloatingView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    :cond_2
    return-void
.end method
