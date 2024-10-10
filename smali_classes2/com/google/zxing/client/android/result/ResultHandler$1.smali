.class Lcom/google/zxing/client/android/result/ResultHandler$1;
.super Ljava/lang/Object;
.source "ResultHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/result/ResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/result/ResultHandler;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/result/ResultHandler;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/zxing/client/android/result/ResultHandler$1;->this$0:Lcom/google/zxing/client/android/result/ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 99
    iget-object p1, p0, Lcom/google/zxing/client/android/result/ResultHandler$1;->this$0:Lcom/google/zxing/client/android/result/ResultHandler;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    return-void
.end method
