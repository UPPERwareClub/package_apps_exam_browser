.class Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$4;
.super Ljava/lang/Object;
.source "NiotronOneSignalPush.java"

# interfaces
.implements Lcom/onesignal/inAppMessages/IInAppMessageLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->InitializeOneSignal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDidDismiss(Lcom/onesignal/inAppMessages/IInAppMessageDidDismissEvent;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageDidDismissEvent;->getMessage()Lcom/onesignal/inAppMessages/IInAppMessage;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->InAppMessageDismissed(Ljava/lang/String;)V

    return-void
.end method

.method public onDidDisplay(Lcom/onesignal/inAppMessages/IInAppMessageDidDisplayEvent;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageDidDisplayEvent;->getMessage()Lcom/onesignal/inAppMessages/IInAppMessage;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->InAppMessageDisplayed(Ljava/lang/String;)V

    return-void
.end method

.method public onWillDismiss(Lcom/onesignal/inAppMessages/IInAppMessageWillDismissEvent;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageWillDismissEvent;->getMessage()Lcom/onesignal/inAppMessages/IInAppMessage;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->InAppMessageWillDismiss(Ljava/lang/String;)V

    return-void
.end method

.method public onWillDisplay(Lcom/onesignal/inAppMessages/IInAppMessageWillDisplayEvent;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessageWillDisplayEvent;->getMessage()Lcom/onesignal/inAppMessages/IInAppMessage;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->InAppMessageWillDisplay(Ljava/lang/String;)V

    return-void
.end method
