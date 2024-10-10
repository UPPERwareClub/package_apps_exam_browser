.class public Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;
.super Ljava/lang/Object;
.source "HoneycombMR1Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactIdIndex(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "contact_id"

    .line 119
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getContactProjection()[Ljava/lang/String;
    .locals 4

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string/jumbo v2, "photo_thumb_uri"

    const-string/jumbo v3, "photo_uri"

    .line 59
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .line 38
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getDataContentUri()Landroid/net/Uri;
    .locals 1

    .line 52
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 193
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 p1, 0x3

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p0, v4, p1

    const/4 p0, 0x1

    const-string/jumbo p1, "vnd.android.cursor.item/phone_v2"

    aput-object p1, v4, p0

    const/4 p0, 0x2

    const-string/jumbo p1, "vnd.android.cursor.item/email_v2"

    aput-object p1, v4, p0

    const-string v3, "contact_id=? AND (mimetype=? OR mimetype=?)"

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getDataMimeType()Ljava/lang/String;
    .locals 1

    const-string v0, "mimetype"

    return-object v0
.end method

.method public static getDataProjection()[Ljava/lang/String;
    .locals 3

    const-string v0, "mimetype"

    const-string v1, "data1"

    const-string v2, "data2"

    .line 85
    filled-new-array {v0, v1, v2, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "display_name"

    return-object v0
.end method

.method public static getEmailAdapterProjection()[Ljava/lang/String;
    .locals 4

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "data1"

    const-string v3, "mimetype"

    .line 99
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmailAddress()Ljava/lang/String;
    .locals 1

    const-string v0, "data1"

    return-object v0
.end method

.method public static getEmailIndex(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "data1"

    .line 148
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getEmailType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vnd.android.cursor.item/email_v2"

    return-object v0
.end method

.method public static getIdIndex(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "_id"

    .line 112
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMimeIndex(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "mimetype"

    .line 152
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getNameIndex(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "display_name"

    .line 126
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getNameProjection()[Ljava/lang/String;
    .locals 4

    const-string v0, "contact_id"

    const-string v1, "display_name"

    const-string/jumbo v2, "photo_thumb_uri"

    const-string v3, "data1"

    .line 72
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneContentUri()Landroid/net/Uri;
    .locals 1

    .line 45
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhoneIndex(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "data1"

    .line 144
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getPhoneType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    return-object v0
.end method

.method public static getPhotoIndex(Landroid/database/Cursor;)I
    .locals 1

    const-string/jumbo v0, "photo_uri"

    .line 140
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getThumbnailIndex(Landroid/database/Cursor;)I
    .locals 1

    const-string/jumbo v0, "photo_thumb_uri"

    .line 133
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getTimesContacted()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "times_contacted"

    return-object v0
.end method

.method public static openContactPhotoInputStreamHelper(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0

    .line 206
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
