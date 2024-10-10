.class public final synthetic Lcom/google/appinventor/components/runtime/NiotronChartboostCore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/chartboost/sdk/callbacks/StartCallback;


# instance fields
.field public final synthetic f$0:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;


# direct methods
.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/NiotronChartboostCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$$ExternalSyntheticLambda0;->f$0:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    return-void
.end method


# virtual methods
.method public final onStartCompleted(Lcom/chartboost/sdk/events/StartError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChartboostCore$$ExternalSyntheticLambda0;->f$0:Lcom/google/appinventor/components/runtime/NiotronChartboostCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChartboostCore;->lambda$InitializeSDK$0$com-google-appinventor-components-runtime-NiotronChartboostCore(Lcom/chartboost/sdk/events/StartError;)V

    return-void
.end method
