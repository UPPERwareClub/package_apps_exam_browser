.class Lme/aemo/floatingview/FloatingView$3;
.super Ljava/lang/Object;
.source "FloatingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/floatingview/FloatingView;->ChangeHeight(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/aemo/floatingview/FloatingView;

.field final synthetic val$heightPercent:F


# direct methods
.method constructor <init>(Lme/aemo/floatingview/FloatingView;F)V
    .locals 0

    .line 182
    iput-object p1, p0, Lme/aemo/floatingview/FloatingView$3;->this$0:Lme/aemo/floatingview/FloatingView;

    iput p2, p0, Lme/aemo/floatingview/FloatingView$3;->val$heightPercent:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$3;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$200(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 187
    iget-object v1, p0, Lme/aemo/floatingview/FloatingView$3;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v1}, Lme/aemo/floatingview/FloatingView;->access$200(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 188
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 189
    iget-object v1, p0, Lme/aemo/floatingview/FloatingView$3;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v1}, Lme/aemo/floatingview/FloatingView;->access$600(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    int-to-float v0, v0

    iget v2, p0, Lme/aemo/floatingview/FloatingView$3;->val$heightPercent:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 190
    iget-object v0, p0, Lme/aemo/floatingview/FloatingView$3;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v0}, Lme/aemo/floatingview/FloatingView;->access$200(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lme/aemo/floatingview/FloatingView$3;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v1}, Lme/aemo/floatingview/FloatingView;->access$000(Lme/aemo/floatingview/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lme/aemo/floatingview/FloatingView$3;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-static {v2}, Lme/aemo/floatingview/FloatingView;->access$600(Lme/aemo/floatingview/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
