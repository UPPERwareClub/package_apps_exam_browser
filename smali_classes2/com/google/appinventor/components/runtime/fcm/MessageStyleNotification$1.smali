.class Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;
.super Ljava/lang/Thread;
.source "MessageStyleNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

.field final synthetic val$id:I

.field final synthetic val$largeImage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;Ljava/lang/String;I)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->val$largeImage:Ljava/lang/String;

    iput p3, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "FCM"

    const-string v1, "Downloading img"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->val$largeImage:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    .line 174
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 175
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 176
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x60

    .line 182
    invoke-static {v1, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->-$$Nest$fgetbuilder(Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 184
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->-$$Nest$fgetbuilder(Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->-$$Nest$fgetnotificationManager(Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;)Landroid/app/NotificationManager;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->val$id:I

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 186
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->playSound()V

    const-string v1, "bitmap added"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->-$$Nest$fgetbuilder(Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->-$$Nest$fgetnotificationManager(Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;)Landroid/app/NotificationManager;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->val$id:I

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 191
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification$1;->this$0:Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/fcm/MessageStyleNotification;->playSound()V

    const-string v1, "bitmap null"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v1, "Done"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
