.class public final Lcom/google/appinventor/components/runtime/util/HashDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HashDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/HashDatabase$ExternalContext;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field public static final DATABASE_NAME:Ljava/lang/String; = "hashTable.db"

.field public static final DATABASE_VERSION:I = 0x1

.field private static final KEY_HASH:Ljava/lang/String; = "hashFile"

.field private static final KEY_NAME:Ljava/lang/String; = "fileName"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE HashDatabase (fileName TEXT,hashFile TEXT,timeStamp TEXT)"

.field private static final SQL_DELETE_ENTRIES:Ljava/lang/String; = "DROP TABLE IF EXISTS HashDatabase"

.field private static final TABLE_NAME:Ljava/lang/String; = "HashDatabase"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "fileName"

    const-string v1, "hashFile"

    const-string/jumbo v2, "timeStamp"

    .line 52
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/HashDatabase;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 67
    new-instance v0, Lcom/google/appinventor/components/runtime/util/HashDatabase$ExternalContext;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/util/HashDatabase$ExternalContext;-><init>(Landroid/content/Context;)V

    const-string p1, "hashTable.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public deleteOne(Lcom/google/appinventor/components/runtime/util/HashFile;)V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "HashDatabase"

    const-string v2, "fileName = ?"

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getHashFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/HashFile;
    .locals 12

    .line 86
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 87
    sget-object v2, Lcom/google/appinventor/components/runtime/util/HashDatabase;->COLUMNS:[Ljava/lang/String;

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v4, v11

    const-string v1, "HashDatabase"

    const-string v3, " fileName = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Database"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v10, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 102
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/HashFile;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/HashFile;-><init>()V

    .line 105
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/HashFile;->setFileName(Ljava/lang/String;)V

    .line 106
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/HashFile;->setHash(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 107
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/HashFile;->setTimestamp(Ljava/lang/String;)V

    .line 108
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 109
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v0

    .line 97
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 98
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public insertHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)V
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 116
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fileName"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getHash()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hashFile"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getTimestamp()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "timeStamp"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "HashDatabase"

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 120
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE HashDatabase (fileName TEXT,hashFile TEXT,timeStamp TEXT)"

    .line 70
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS HashDatabase"

    .line 75
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public updateHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)I
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 126
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fileName"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getHash()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hashFile"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timeStamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "HashDatabase"

    const-string v3, "fileName = ?"

    .line 130
    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 134
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return p1
.end method
