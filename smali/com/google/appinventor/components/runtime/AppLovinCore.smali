.class public final Lcom/google/appinventor/components/runtime/AppLovinCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "AppLovinCore.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Core Component Required for AppLovin MAX Components. Only Required in Screen1"
    iconName = "images/appLovinCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "applovin-sdk.aar, applovin-sdk.jar, play-services-ads-identifier.aar, play-services-ads-identifier.jar, play-services-appset.aar, play-services-appset.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private privacyPolicyUrl:Ljava/lang/String;

.field private sdkKey:Ljava/lang/String;

.field private termsAndPrivacyPolicyFlow:Z

.field private termsOfServiceUrl:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->sdkKey:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsAndPrivacyPolicyFlow:Z

    .line 35
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->privacyPolicyUrl:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsOfServiceUrl:Ljava/lang/String;

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public AgeRestricted(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set whether the user is age restricted"
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setIsAgeRestrictedUser(ZLandroid/content/Context;)V

    return-void
.end method

.method public AgeRestricted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get whether the user is age restricted"
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->isAgeRestrictedUser(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public DoNotSell(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set whether the user has opted out of the sale of their personal information"
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setDoNotSell(ZLandroid/content/Context;)V

    return-void
.end method

.method public DoNotSell()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get whether the user has opted out of the sale of their personal information"
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->isDoNotSell(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public InitializeSDK()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the AppLovin SDK. Required to use AppLovin MAX Components."
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->sdkKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;->builder(Ljava/lang/String;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;

    move-result-object v0

    const-string v1, "max"

    .line 123
    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;->setMediationProvider(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/AppLovinCore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AppLovinCore$$ExternalSyntheticLambda0;-><init>(Lcom/google/appinventor/components/runtime/AppLovinCore;)V

    .line 124
    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;->configureSettings(Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$SettingsConfigurator;)Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;->build()Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/AppLovinCore$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/AppLovinCore$1;-><init>(Lcom/google/appinventor/components/runtime/AppLovinCore;)V

    invoke-virtual {v1, v0, v2}, Lcom/applovin/sdk/AppLovinSdk;->initialize(Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    return-void
.end method

.method public PrivacyPolicyUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the Privacy Policy URL for AppLovin MAX"
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->privacyPolicyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public PrivacyPolicyUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the Privacy Policy URL for AppLovin MAX. Optional."
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->privacyPolicyUrl:Ljava/lang/String;

    return-void
.end method

.method public SDKInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the AppLovin SDK is initialized"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDKInitialized"

    .line 148
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SDKKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the SDK Key for AppLovin MAX"
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->sdkKey:Ljava/lang/String;

    return-object v0
.end method

.method public SDKKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the SDK Key for AppLovin MAX"
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->sdkKey:Ljava/lang/String;

    return-void
.end method

.method public TermsAndPrivacyPolicyFlow(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable or Disable TermsAndPrivacyPolicy Flow"
    .end annotation

    .line 68
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsAndPrivacyPolicyFlow:Z

    return-void
.end method

.method public TermsAndPrivacyPolicyFlow()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the TermsAndPrivacyPolicy Flow boolean"
    .end annotation

    .line 73
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsAndPrivacyPolicyFlow:Z

    return v0
.end method

.method public UserConsent(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set whether the application has user consent "
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    return-void
.end method

.method public UserConsent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get whether the application has user consent"
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->hasUserConsent(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public UserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the User ID for AppLovin MAX"
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public UserId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the User ID for AppLovin MAX to track individual users. Optional."
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->userId:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$InitializeSDK$0$com-google-appinventor-components-runtime-AppLovinCore(Lcom/applovin/sdk/AppLovinSdkSettings;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->setUserIdentifier(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getTermsAndPrivacyPolicyFlowSettings()Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsAndPrivacyPolicyFlow:Z

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->privacyPolicyUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getTermsAndPrivacyPolicyFlowSettings()Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->privacyPolicyUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;->setPrivacyPolicyUri(Landroid/net/Uri;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsOfServiceUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getTermsAndPrivacyPolicyFlowSettings()Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppLovinCore;->termsOfServiceUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;->setTermsOfServiceUri(Landroid/net/Uri;)V

    :cond_2
    return-void
.end method
