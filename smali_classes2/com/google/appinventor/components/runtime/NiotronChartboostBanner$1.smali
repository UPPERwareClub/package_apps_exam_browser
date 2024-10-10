.class Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;
.super Ljava/lang/Object;
.source "NiotronChartboostBanner.java"

# interfaces
.implements Lcom/chartboost/sdk/callbacks/BannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->LoadBanner(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/chartboost/sdk/events/ClickEvent;Lcom/chartboost/sdk/events/ClickError;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->AdClicked()V

    return-void
.end method

.method public onAdLoaded(Lcom/chartboost/sdk/events/CacheEvent;Lcom/chartboost/sdk/events/CacheError;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 55
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;

    invoke-virtual {p2}, Lcom/chartboost/sdk/events/CacheError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->AdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->AdLoaded()V

    :goto_0
    return-void
.end method

.method public onAdRequestedToShow(Lcom/chartboost/sdk/events/ShowEvent;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->AdRequestedToShow()V

    return-void
.end method

.method public onAdShown(Lcom/chartboost/sdk/events/ShowEvent;Lcom/chartboost/sdk/events/ShowError;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->AdShown()V

    return-void
.end method

.method public onImpressionRecorded(Lcom/chartboost/sdk/events/ImpressionEvent;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostBanner;->AdImpressionRecorded()V

    return-void
.end method
