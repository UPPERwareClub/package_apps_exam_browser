.class Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$2;
.super Ljava/lang/Object;
.source "NiotronOneSignalPush.java"

# interfaces
.implements Lcom/onesignal/notifications/INotificationClickListener;


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

    .line 141
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/onesignal/notifications/INotificationClickEvent;)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;

    invoke-interface {p1}, Lcom/onesignal/notifications/INotificationClickEvent;->getNotification()Lcom/onesignal/notifications/INotification;

    move-result-object v1

    invoke-interface {v1}, Lcom/onesignal/notifications/INotification;->getNotificationId()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-interface {p1}, Lcom/onesignal/notifications/INotificationClickEvent;->getNotification()Lcom/onesignal/notifications/INotification;

    move-result-object v2

    invoke-interface {v2}, Lcom/onesignal/notifications/INotification;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-interface {p1}, Lcom/onesignal/notifications/INotificationClickEvent;->getNotification()Lcom/onesignal/notifications/INotification;

    move-result-object v3

    invoke-interface {v3}, Lcom/onesignal/notifications/INotification;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-interface {p1}, Lcom/onesignal/notifications/INotificationClickEvent;->getNotification()Lcom/onesignal/notifications/INotification;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/notifications/INotification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/NiotronOneSignalPush;->OpenedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
