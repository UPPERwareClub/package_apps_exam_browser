.class public final synthetic Lcom/google/appinventor/components/runtime/AppLovinCore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$SettingsConfigurator;


# instance fields
.field public final synthetic f$0:Lcom/google/appinventor/components/runtime/AppLovinCore;


# direct methods
.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/AppLovinCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore$$ExternalSyntheticLambda0;->f$0:Lcom/google/appinventor/components/runtime/AppLovinCore;

    return-void
.end method


# virtual methods
.method public final configure(Lcom/applovin/sdk/AppLovinSdkSettings;)V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore$$ExternalSyntheticLambda0;->f$0:Lcom/google/appinventor/components/runtime/AppLovinCore;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AppLovinCore;->lambda$InitializeSDK$0$com-google-appinventor-components-runtime-AppLovinCore(Lcom/applovin/sdk/AppLovinSdkSettings;)V

    return-void
.end method
