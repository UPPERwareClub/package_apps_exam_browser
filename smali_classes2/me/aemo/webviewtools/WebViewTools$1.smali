.class Lme/aemo/webviewtools/WebViewTools$1;
.super Ljava/lang/Object;
.source "WebViewTools.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/webviewtools/WebViewTools;->DisablesAllTouchEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/aemo/webviewtools/WebViewTools;


# direct methods
.method constructor <init>(Lme/aemo/webviewtools/WebViewTools;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lme/aemo/webviewtools/WebViewTools$1;->this$0:Lme/aemo/webviewtools/WebViewTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
