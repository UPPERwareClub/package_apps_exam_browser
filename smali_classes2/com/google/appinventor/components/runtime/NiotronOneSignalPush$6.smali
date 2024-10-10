.class Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;
.super Ljava/lang/Object;
.source "NiotronOneSignalPush.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->RequestLocationPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/onesignal/ContinueResult<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/onesignal/ContinueResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/ContinueResult<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/onesignal/ContinueResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1}, Lcom/onesignal/ContinueResult;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-virtual {p1}, Lcom/onesignal/ContinueResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->LocationPermissionGranted(Z)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->LocationPermissionGranted(Z)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->LocationPermissionGranted(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 236
    check-cast p1, Lcom/onesignal/ContinueResult;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;->accept(Lcom/onesignal/ContinueResult;)V

    return-void
.end method
