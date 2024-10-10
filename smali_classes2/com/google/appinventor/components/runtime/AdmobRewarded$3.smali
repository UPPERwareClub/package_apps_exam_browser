.class Lcom/google/appinventor/components/runtime/AdmobRewarded$3;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "AdmobRewarded.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdmobRewarded;->LoadAndShowAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdmobRewarded;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdmobRewarded;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$3;->this$0:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$3;->this$0:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AdmobRewarded;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$3;->this$0:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/AdmobRewarded;->-$$Nest$fputmRewardedAd(Lcom/google/appinventor/components/runtime/AdmobRewarded;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    .line 134
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$3;->this$0:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/AdmobRewarded;->-$$Nest$fgetmRewardedAd(Lcom/google/appinventor/components/runtime/AdmobRewarded;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/AdmobRewarded$3$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AdmobRewarded$3$1;-><init>(Lcom/google/appinventor/components/runtime/AdmobRewarded$3;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 156
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$3;->this$0:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AdmobRewarded;->AdLoaded()V

    .line 157
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdmobRewarded$3;->this$0:Lcom/google/appinventor/components/runtime/AdmobRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AdmobRewarded;->ShowAd()V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AdmobRewarded$3;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
