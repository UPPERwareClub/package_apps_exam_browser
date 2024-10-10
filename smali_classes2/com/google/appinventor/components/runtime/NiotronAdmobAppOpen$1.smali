.class Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$1;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
.source "NiotronAdmobAppOpen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->LoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->AdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->-$$Nest$fgetappOpenAd(Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->-$$Nest$fputappOpenAd(Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    .line 85
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen;->AdLoaded()V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronAdmobAppOpen$1;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    return-void
.end method
