.class Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial$1;
.super Ljava/lang/Object;
.source "NiotronChartboostInterstitial.java"

# interfaces
.implements Lcom/chartboost/sdk/callbacks/InterstitialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;->LoadInterstitial(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/chartboost/sdk/events/ClickEvent;Lcom/chartboost/sdk/events/ClickError;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;->AdClicked()V

    return-void
.end method

.method public onAdDismiss(Lcom/chartboost/sdk/events/DismissEvent;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;->AdDismissed()V

    return-void
.end method

.method public onAdLoaded(Lcom/chartboost/sdk/events/CacheEvent;Lcom/chartboost/sdk/events/CacheError;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;->AdLoaded()V

    return-void
.end method

.method public onAdRequestedToShow(Lcom/chartboost/sdk/events/ShowEvent;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;->AdRequestedToShow()V

    return-void
.end method

.method public onAdShown(Lcom/chartboost/sdk/events/ShowEvent;Lcom/chartboost/sdk/events/ShowError;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;->AdDisplayed()V

    return-void
.end method

.method public onImpressionRecorded(Lcom/chartboost/sdk/events/ImpressionEvent;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostInterstitial;->AdImpressionRecorded()V

    return-void
.end method
