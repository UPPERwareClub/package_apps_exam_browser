.class Lme/aemo/floatingview/FloatingView$8;
.super Ljava/lang/Object;
.source "FloatingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/floatingview/FloatingView;->floatViewHV(II)V
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

    .line 333
    iput-object p1, p0, Lme/aemo/floatingview/FloatingView$8;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 336
    iget-object p1, p0, Lme/aemo/floatingview/FloatingView$8;->this$0:Lme/aemo/floatingview/FloatingView;

    invoke-virtual {p1}, Lme/aemo/floatingview/FloatingView;->ClickView()V

    return-void
.end method
