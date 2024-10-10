.class public Lcom/google/appinventor/components/runtime/fcm/PushNotification;
.super Ljava/lang/Object;
.source "PushNotification.java"


# static fields
.field private static self:Lcom/google/appinventor/components/runtime/fcm/PushNotification;


# instance fields
.field private builder:Landroid/app/Notification$Builder;

.field private channelName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetbuilder(Lcom/google/appinventor/components/runtime/fcm/PushNotification;)Landroid/app/Notification$Builder;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationManager(Lcom/google/appinventor/components/runtime/fcm/PushNotification;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->notificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FCMNotification"

    .line 35
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->channelName:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/appinventor/components/runtime/fcm/PushNotification;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->self:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->self:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    .line 43
    :cond_0
    sget-object p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->self:Lcom/google/appinventor/components/runtime/fcm/PushNotification;

    return-object p0
.end method


# virtual methods
.method public clearNotification(I)V
    .locals 2

    const/4 v0, 0x5

    const-string v1, "Notifications"

    .line 150
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->initChannelNotification(ILjava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public getAppIcon()Landroid/graphics/drawable/Icon;
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 158
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x60

    .line 162
    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 171
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 172
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public initChannelNotification(ILjava/lang/String;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->notificationManager:Landroid/app/NotificationManager;

    .line 181
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->channelName:Ljava/lang/String;

    invoke-direct {v0, p2, v1, p1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 185
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 187
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/16 p1, 0x9

    new-array p1, p1, [J

    .line 201
    fill-array-data p1, :array_0

    .line 202
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    const/4 p1, 0x1

    .line 203
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 204
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 206
    :cond_2
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    :goto_0
    return-void

    nop

    :array_0
    .array-data 8
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method

.method public playSound()V
    .locals 2

    const/4 v0, 0x2

    .line 141
    :try_start_0
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v5, "smallIcon"

    const-string v6, "sound"

    const-string v7, ""

    const/4 v8, 0x5

    const-string v9, "FCMNotification"

    .line 47
    invoke-virtual {v0, v8, v9}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->initChannelNotification(ILjava/lang/String;)V

    if-nez p4, :cond_0

    const-string v8, "#FFFFFF"

    goto :goto_0

    :cond_0
    move-object/from16 v8, p4

    .line 52
    :goto_0
    iget-object v9, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 53
    iget-object v10, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    const-string v11, "NiotronFCM"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 54
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    .line 55
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v12

    const/4 v15, 0x1

    aput-object v2, v14, v15

    const/16 v16, 0x2

    aput-object v3, v14, v16

    const-string v15, ",,##,,split,,##,,"

    invoke-static {v15, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "pushNotificationData"

    invoke-interface {v13, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v14, "notificationDict"

    move-object/from16 v15, p6

    .line 56
    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 60
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".Screen1"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ActivityName"

    invoke-interface {v10, v15, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "APP_INVENTOR_START"

    const-string v10, "pushNotificationClick"

    .line 61
    invoke-virtual {v13, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v9, 0x34000000

    .line 62
    invoke-virtual {v13, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    iget-object v9, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1f

    if-lt v10, v14, :cond_1

    const/high16 v10, 0x42000000    # 32.0f

    goto :goto_1

    :cond_1
    const/high16 v10, 0x40000000    # 2.0f

    :goto_1
    invoke-static {v9, v12, v13, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 65
    iget-object v10, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v10, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 66
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 67
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_2

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    .line 69
    :goto_2
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 70
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 71
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->context:Landroid/content/Context;

    invoke-virtual {v2, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    .line 74
    :try_start_0
    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 75
    new-instance v9, Ljava/io/File;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_3

    .line 77
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v6

    .line 79
    :goto_3
    iget-object v9, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 81
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 82
    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    goto :goto_4

    .line 84
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 86
    :goto_4
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v2, 0x9

    new-array v2, v2, [J

    .line 90
    fill-array-data v2, :array_0

    .line 91
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 92
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    const-string v2, "Notified"

    const-string v3, "FCM"

    if-eqz v4, :cond_6

    .line 94
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 95
    new-instance v2, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;

    invoke-direct {v2, v0, v4, v1}, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;-><init>(Lcom/google/appinventor/components/runtime/fcm/PushNotification;Ljava/lang/String;I)V

    .line 124
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/fcm/PushNotification$1;->start()V

    goto :goto_5

    .line 126
    :cond_5
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 127
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->playSound()V

    .line 129
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 132
    :cond_6
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 133
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/fcm/PushNotification;->playSound()V

    .line 135
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :array_0
    .array-data 8
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
        0x1f4
    .end array-data
.end method
