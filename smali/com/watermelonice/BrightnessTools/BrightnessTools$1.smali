.class Lcom/watermelonice/BrightnessTools/BrightnessTools$1;
.super Landroid/database/ContentObserver;
.source "BrightnessTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/watermelonice/BrightnessTools/BrightnessTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/watermelonice/BrightnessTools/BrightnessTools;


# direct methods
.method constructor <init>(Lcom/watermelonice/BrightnessTools/BrightnessTools;Landroid/os/Handler;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools$1;->this$0:Lcom/watermelonice/BrightnessTools/BrightnessTools;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, p1, v0}, Lcom/watermelonice/BrightnessTools/BrightnessTools$1;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 197
    iget-object p1, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools$1;->this$0:Lcom/watermelonice/BrightnessTools/BrightnessTools;

    invoke-virtual {p1}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->Brightness()I

    move-result p2

    iget-object v0, p0, Lcom/watermelonice/BrightnessTools/BrightnessTools$1;->this$0:Lcom/watermelonice/BrightnessTools/BrightnessTools;

    invoke-virtual {v0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->Adaptive()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lcom/watermelonice/BrightnessTools/BrightnessTools;->Changed(IIZ)V

    return-void
.end method
