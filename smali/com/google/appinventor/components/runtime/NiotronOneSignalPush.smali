.class public final Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "NiotronOneSignalPush.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x15
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for receiving onesignal push nitification "
    iconName = "images/niotronOneSignalPush.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "OneSignal.aar, OneSignal.jar, in-app-messages.aar, in-app-messages.jar, notifications.aar, notifications.jar, firebase-messaging.aar, firebase-messaging.jar, firebase-datatransport.aar, firebase-datatransport.jar, transport-backend-cct.aar, transport-backend-cct.jar, transport-runtime.aar, transport-runtime.jar, firebase-encoders-json.aar, firebase-encoders-json.jar, firebase-encoders-proto.jar, firebase-encoders.jar, firebase-installations.aar, firebase-installations.jar, firebase-common.aar, firebase-common.jar, location.aar, location.jar, onesignal-core.aar, onesignal-core.jar, work-runtime-ktx.aar, work-runtime-ktx.jar, work-runtime.aar, work-runtime.jar, room-runtime.aar, room-runtime.jar, browser.aar, browser.jar, play-services-base.aar, play-services-base.jar, play-services-stats.aar, play-services-stats.jar, firebase-measurement-connector.aar, firebase-measurement-connector.jar, firebase-iid-interop.aar, firebase-iid-interop.jar, play-services-cloud-messaging.aar, play-services-cloud-messaging.jar, firebase-installations-interop.aar, firebase-installations-interop.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, sqlite-framework.aar, sqlite-framework.jar, firebase-components.aar, firebase-components.jar, transport-api.aar, transport-api.jar, sqlite.aar, sqlite.jar, annotation.jar, firebase-annotations.jar, javax.inject.jar"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private consentGiven:Z

.field private consentRequired:Z

.field private context:Landroid/content/Context;

.field private inAppMessages:Z

.field private locationSharing:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->consentRequired:Z

    .line 48
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->consentGiven:Z

    .line 49
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->locationSharing:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->inAppMessages:Z

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->context:Landroid/content/Context;

    return-void
.end method

.method private getOneSignalLogLevel(Ljava/lang/Object;)Lcom/onesignal/debug/LogLevel;
    .locals 3

    const-string v0, "Invalid LogLevel"

    .line 205
    :try_start_0
    instance-of v1, p1, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    if-eqz v1, :cond_7

    .line 206
    check-cast p1, Lcom/google/appinventor/components/common/OneSignalLogLevel;

    .line 207
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/OneSignalLogLevel;->None:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    sget-object p1, Lcom/onesignal/debug/LogLevel;->NONE:Lcom/onesignal/debug/LogLevel;

    return-object p1

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Info:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    sget-object p1, Lcom/onesignal/debug/LogLevel;->INFO:Lcom/onesignal/debug/LogLevel;

    return-object p1

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Verbose:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    sget-object p1, Lcom/onesignal/debug/LogLevel;->VERBOSE:Lcom/onesignal/debug/LogLevel;

    return-object p1

    .line 213
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Debug:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    sget-object p1, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    return-object p1

    .line 215
    :cond_3
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Warn:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 216
    sget-object p1, Lcom/onesignal/debug/LogLevel;->WARN:Lcom/onesignal/debug/LogLevel;

    return-object p1

    .line 217
    :cond_4
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Error:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    sget-object p1, Lcom/onesignal/debug/LogLevel;->ERROR:Lcom/onesignal/debug/LogLevel;

    return-object p1

    .line 219
    :cond_5
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/appinventor/components/common/OneSignalLogLevel;->Fatal:Lcom/google/appinventor/components/common/OneSignalLogLevel;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/OneSignalLogLevel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 220
    sget-object p1, Lcom/onesignal/debug/LogLevel;->FATAL:Lcom/onesignal/debug/LogLevel;

    return-object p1

    .line 222
    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->ErrorOccurred(Ljava/lang/String;)V

    .line 223
    sget-object p1, Lcom/onesignal/debug/LogLevel;->NONE:Lcom/onesignal/debug/LogLevel;

    return-object p1

    .line 226
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->ErrorOccurred(Ljava/lang/String;)V

    .line 231
    :goto_0
    sget-object p1, Lcom/onesignal/debug/LogLevel;->NONE:Lcom/onesignal/debug/LogLevel;

    return-object p1
.end method


# virtual methods
.method public AddOutcome(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add an outcome with the provided name, captured against the current session"
    .end annotation

    .line 367
    invoke-static {}, Lcom/onesignal/OneSignal;->getSession()Lcom/onesignal/session/ISessionManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onesignal/session/ISessionManager;->addOutcome(Ljava/lang/String;)V

    return-void
.end method

.method public AddTrigger(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a trigger for the current user. If the trigger key already exists, it will be replaced with the value provided"
    .end annotation

    .line 382
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessages()Lcom/onesignal/inAppMessages/IInAppMessagesManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onesignal/inAppMessages/IInAppMessagesManager;->addTrigger(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public AddUniqueOutcome(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a unique outcome with the provided name, captured against the current session"
    .end annotation

    .line 372
    invoke-static {}, Lcom/onesignal/OneSignal;->getSession()Lcom/onesignal/session/ISessionManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onesignal/session/ISessionManager;->addUniqueOutcome(Ljava/lang/String;)V

    return-void
.end method

.method public AddUniqueOutcomeWithValue(Ljava/lang/String;F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add an outcome with the provided name and value captured against the current session. value should be a number"
    .end annotation

    .line 377
    invoke-static {}, Lcom/onesignal/OneSignal;->getSession()Lcom/onesignal/session/ISessionManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onesignal/session/ISessionManager;->addOutcomeWithValue(Ljava/lang/String;F)V

    return-void
.end method

.method public AddUserEmail(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add an email to the current user"
    .end annotation

    .line 312
    invoke-static {}, Lcom/onesignal/OneSignal;->getUser()Lcom/onesignal/user/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onesignal/user/IUserManager;->addEmail(Ljava/lang/String;)V

    return-void
.end method

.method public AddUserPhoneNumber(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add an User Phone Number to the current user"
    .end annotation

    .line 322
    invoke-static {}, Lcom/onesignal/OneSignal;->getUser()Lcom/onesignal/user/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onesignal/user/IUserManager;->addSms(Ljava/lang/String;)V

    return-void
.end method

.method public AddUserTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add A Tag to the Current User"
    .end annotation

    .line 357
    invoke-static {}, Lcom/onesignal/OneSignal;->getUser()Lcom/onesignal/user/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/onesignal/user/IUserManager;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public AppId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns app id"
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public AppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets app id"
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->appId:Ljava/lang/String;

    return-void
.end method

.method public CanRequestPermission()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true of false if OneSignal SDK can Request Permission"
    .end annotation

    .line 254
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotifications()Lcom/onesignal/notifications/INotificationsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/notifications/INotificationsManager;->getCanRequestPermission()Z

    move-result v0

    return v0
.end method

.method public ClearAllNotifications()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear all notification"
    .end annotation

    .line 347
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotifications()Lcom/onesignal/notifications/INotificationsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/notifications/INotificationsManager;->clearAllNotifications()V

    return-void
.end method

.method public ClearAllTriggers(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear all triggers from the current user"
    .end annotation

    .line 392
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessages()Lcom/onesignal/inAppMessages/IInAppMessagesManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/inAppMessages/IInAppMessagesManager;->clearTriggers()V

    return-void
.end method

.method public ClearNotification(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear notification by id"
    .end annotation

    .line 352
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotifications()Lcom/onesignal/notifications/INotificationsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onesignal/notifications/INotificationsManager;->removeNotification(I)V

    return-void
.end method

.method public ConsentGiven(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets whether privacy consent has been granted."
    .end annotation

    .line 88
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->consentGiven:Z

    return-void
.end method

.method public ConsentGiven()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Determines whether users must consent to privacy before sending their data to OneSignal. This should be set to true to ensure compliance"
    .end annotation

    .line 94
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->consentGiven:Z

    return v0
.end method

.method public ConsentRequired(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines whether users must consent to privacy before sending their data to OneSignal. This should be set to true to ensure compliance"
    .end annotation

    .line 77
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->consentRequired:Z

    return-void
.end method

.method public ConsentRequired()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns Consent Required Property"
    .end annotation

    .line 82
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->consentRequired:Z

    return v0
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Something Went Wrong in the Component"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 431
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FailedToInitialize(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "OneSignal Component Failed to Initialize"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToInitialize"

    .line 426
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetPushToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The user\'s push token"
    .end annotation

    .line 287
    invoke-static {}, Lcom/onesignal/OneSignal;->getUser()Lcom/onesignal/user/IUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/user/IUserManager;->getPushSubscription()Lcom/onesignal/user/subscriptions/IPushSubscription;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/user/subscriptions/IPushSubscription;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public GetUserSubscriptionId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The user\'s push subscription ID"
    .end annotation

    .line 277
    invoke-static {}, Lcom/onesignal/OneSignal;->getUser()Lcom/onesignal/user/IUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/user/IUserManager;->getPushSubscription()Lcom/onesignal/user/subscriptions/IPushSubscription;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/user/subscriptions/IPushSubscription;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    :cond_0
    return-object v0
.end method

.method public GotTags(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public InAppMessageClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "In App Message Clicked"
    .end annotation

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "InAppMessageClicked"

    .line 481
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InAppMessageDismissed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "In App Message Dismissed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "InAppMessageDismissed"

    .line 476
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InAppMessageDisplayed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "In App Message Displayed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "InAppMessageDisplayed"

    .line 466
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InAppMessageWillDismiss(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "In App Message Will be Dismissed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "InAppMessageWillDismiss"

    .line 471
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InAppMessageWillDisplay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "In App Message Will be Displayed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "InAppMessageWillDisplay"

    .line 461
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InAppMessages(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set whether in-app messaging is enabled"
    .end annotation

    .line 111
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->inAppMessages:Z

    return-void
.end method

.method public InAppMessages()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns If In-App Messaging is enabled"
    .end annotation

    .line 116
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->inAppMessages:Z

    return v0
.end method

.method public InitializeOneSignal()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize OneSignal Component"
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->appId:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    const-string v0, "App Id can not be blank"

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->FailedToInitialize(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->initWithContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->consentRequired:Z

    invoke-static {v0}, Lcom/onesignal/OneSignal;->setConsentRequired(Z)V

    .line 128
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->consentGiven:Z

    invoke-static {v0}, Lcom/onesignal/OneSignal;->setConsentGiven(Z)V

    .line 130
    invoke-static {}, Lcom/onesignal/OneSignal;->getLocation()Lcom/onesignal/location/ILocationManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->locationSharing:Z

    invoke-interface {v0, v1}, Lcom/onesignal/location/ILocationManager;->setShared(Z)V

    .line 132
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessages()Lcom/onesignal/inAppMessages/IInAppMessagesManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->inAppMessages:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/onesignal/inAppMessages/IInAppMessagesManager;->setPaused(Z)V

    .line 134
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotifications()Lcom/onesignal/notifications/INotificationsManager;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-interface {v0, v1}, Lcom/onesignal/notifications/INotificationsManager;->addPermissionObserver(Lcom/onesignal/notifications/IPermissionObserver;)V

    .line 141
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotifications()Lcom/onesignal/notifications/INotificationsManager;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-interface {v0, v1}, Lcom/onesignal/notifications/INotificationsManager;->addClickListener(Lcom/onesignal/notifications/INotificationClickListener;)V

    .line 151
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotifications()Lcom/onesignal/notifications/INotificationsManager;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-interface {v0, v1}, Lcom/onesignal/notifications/INotificationsManager;->addForegroundLifecycleListener(Lcom/onesignal/notifications/INotificationLifecycleListener;)V

    .line 161
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessages()Lcom/onesignal/inAppMessages/IInAppMessagesManager;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-interface {v0, v1}, Lcom/onesignal/inAppMessages/IInAppMessagesManager;->addLifecycleListener(Lcom/onesignal/inAppMessages/IInAppMessageLifecycleListener;)V

    .line 183
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessages()Lcom/onesignal/inAppMessages/IInAppMessagesManager;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-interface {v0, v1}, Lcom/onesignal/inAppMessages/IInAppMessagesManager;->addClickListener(Lcom/onesignal/inAppMessages/IInAppMessageClickListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->OneSignalInitialized()V

    :goto_0
    return-void
.end method

.method public IsUserOptedInPushNotification()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns boolean if Push Notification is Opted In"
    .end annotation

    .line 342
    invoke-static {}, Lcom/onesignal/OneSignal;->getUser()Lcom/onesignal/user/IUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/user/IUserManager;->getPushSubscription()Lcom/onesignal/user/subscriptions/IPushSubscription;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/user/subscriptions/IPushSubscription;->getOptedIn()Z

    return-void
.end method

.method public LocationPermissionGranted(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Location Permission Result"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 441
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LocationPermissionGranted"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LocationSharing(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Location permissions enable geotagging in the OneSignal dashboard to send notifications to users based on their location."
    .end annotation

    .line 100
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->locationSharing:Z

    return-void
.end method

.method public LocationSharing()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns Location Sharing Property"
    .end annotation

    .line 105
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->locationSharing:Z

    return v0
.end method

.method public LoginUser(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Login Current User and set an External Id for them. externalId can be anything random"
    .end annotation

    .line 297
    invoke-static {p1}, Lcom/onesignal/OneSignal;->login(Ljava/lang/String;)V

    return-void
.end method

.method public LoginUserWithJWTToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Login Current User and set an External Id for them. externalId can be anything random"
    .end annotation

    .line 302
    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->login(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public LogoutUser()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Logout the current logged in user"
    .end annotation

    .line 307
    invoke-static {}, Lcom/onesignal/OneSignal;->logout()V

    return-void
.end method

.method public NotificationPermissionChanged(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Notification Permission was Changed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 436
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "NotificationPermissionChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnErrorSendingNotification(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public OnNotificationFailed(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public OnNotificationSend(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "deprecated"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public OneSignalInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "OneSignal Component Initialized"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OneSignalInitialized"

    .line 422
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OpenedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Opened notification"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "OpenedNotification"

    .line 456
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OptInPushNotification()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "OptIn will show the native Android notification permission prompt"
    .end annotation

    .line 332
    invoke-static {}, Lcom/onesignal/OneSignal;->getUser()Lcom/onesignal/user/IUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/user/IUserManager;->getPushSubscription()Lcom/onesignal/user/subscriptions/IPushSubscription;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/user/subscriptions/IPushSubscription;->optIn()V

    return-void
.end method

.method public OptOutOfPushNotification()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opt Out of Push Notification"
    .end annotation

    .line 337
    invoke-static {}, Lcom/onesignal/OneSignal;->getUser()Lcom/onesignal/user/IUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/user/IUserManager;->getPushSubscription()Lcom/onesignal/user/subscriptions/IPushSubscription;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/user/subscriptions/IPushSubscription;->optOut()V

    return-void
.end method

.method public PushNotificationPermissionGranted(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Push Notification Permission Result"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 446
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PushNotificationPermissionGranted"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ReceivedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Received notification"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "ReceivedNotification"

    .line 451
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RemoveTrigger(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove the trigger with the provided key from the current user"
    .end annotation

    .line 387
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessages()Lcom/onesignal/inAppMessages/IInAppMessagesManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onesignal/inAppMessages/IInAppMessagesManager;->removeTrigger(Ljava/lang/String;)V

    return-void
.end method

.method public RemoveUserEmail(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove Set User Email from the current user"
    .end annotation

    .line 317
    invoke-static {}, Lcom/onesignal/OneSignal;->getUser()Lcom/onesignal/user/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onesignal/user/IUserManager;->removeEmail(Ljava/lang/String;)V

    return-void
.end method

.method public RemoveUserPhoneNumber(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove Set User Phone Number from the current user"
    .end annotation

    .line 327
    invoke-static {}, Lcom/onesignal/OneSignal;->getUser()Lcom/onesignal/user/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onesignal/user/IUserManager;->removeSms(Ljava/lang/String;)V

    return-void
.end method

.method public RemoveUserTag(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove A Tag from the Current User"
    .end annotation

    .line 362
    invoke-static {}, Lcom/onesignal/OneSignal;->getUser()Lcom/onesignal/user/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onesignal/user/IUserManager;->removeTag(Ljava/lang/String;)V

    return-void
.end method

.method public RequestLocationPermission()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Prompt the user for location permissions to allow geotagging."
    .end annotation

    .line 236
    invoke-static {}, Lcom/onesignal/OneSignal;->getLocation()Lcom/onesignal/location/ILocationManager;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$6;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-static {v1}, Lcom/onesignal/Continue;->with(Ljava/util/function/Consumer;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/location/ILocationManager;->requestPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    return-void
.end method

.method public RequestPushNotificationPermission(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Prompt the user for location permissions to allow geotagging."
    .end annotation

    .line 259
    invoke-static {}, Lcom/onesignal/OneSignal;->getNotifications()Lcom/onesignal/notifications/INotificationsManager;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$7;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$7;-><init>(Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;)V

    invoke-static {v1}, Lcom/onesignal/Continue;->with(Ljava/util/function/Consumer;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/onesignal/notifications/INotificationsManager;->requestPermission(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    return-void
.end method

.method public SetLogLevel(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/OneSignalLogLevel;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Verbose Logging set to help debug issues, remove before releasing your app."
    .end annotation

    .line 200
    invoke-static {}, Lcom/onesignal/OneSignal;->getDebug()Lcom/onesignal/debug/IDebugManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->getOneSignalLogLevel(Ljava/lang/Object;)Lcom/onesignal/debug/LogLevel;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/onesignal/debug/IDebugManager;->setLogLevel(Lcom/onesignal/debug/LogLevel;)V

    return-void
.end method

.method public SoundEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns if sound enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public SoundEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns ifsound enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public SubscriptionEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets subscription enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public SubscriptionEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns subscription enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public VirbrationEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets vibration enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public VirbrationEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "returns is vibration enabled"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
