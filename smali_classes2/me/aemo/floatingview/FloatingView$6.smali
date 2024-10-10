.class Lme/aemo/floatingview/FloatingView$6;
.super Ljava/lang/Object;
.source "FloatingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/floatingview/FloatingView;->showFloatView()V
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

    .line 266
    iput-object p1, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 269
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$700(Lme/aemo/floatingview/FloatingView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$700(Lme/aemo/floatingview/FloatingView;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-static {v0, v1}, Lme/aemo/floatingview/FloatingView;->access$202(Lme/aemo/floatingview/FloatingView;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 271
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$200(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$000(Lme/aemo/floatingview/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 273
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$200(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v1}, Lme/aemo/floatingview/FloatingView;->access$000(Lme/aemo/floatingview/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v2}, Lme/aemo/floatingview/FloatingView;->access$600(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$800(Lme/aemo/floatingview/FloatingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$600(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 276
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$200(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v1}, Lme/aemo/floatingview/FloatingView;->access$000(Lme/aemo/floatingview/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lme/aemo/floatingview/FloatingView$6;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v2}, Lme/aemo/floatingview/FloatingView;->access$600(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
