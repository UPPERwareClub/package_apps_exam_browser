.class Lcom/google/appinventor/components/runtime/IronSourceBanner$1;
.super Ljava/lang/Object;
.source "IronSourceBanner.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/IronSourceBanner;->LoadAd(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/IronSourceBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/IronSourceBanner;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdClicked()V

    return-void
.end method

.method public onAdLeftApplication(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdOpened()V

    return-void
.end method

.method public onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdLoaded()V

    return-void
.end method

.method public onAdScreenDismissed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdClosed()V

    return-void
.end method

.method public onAdScreenPresented(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/IronSourceBanner$1;->this$0:Lcom/google/appinventor/components/runtime/IronSourceBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/IronSourceBanner;->AdDisplayed()V

    return-void
.end method
