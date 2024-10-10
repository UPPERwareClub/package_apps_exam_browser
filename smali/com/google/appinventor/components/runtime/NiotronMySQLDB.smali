.class public final Lcom/google/appinventor/components/runtime/NiotronMySQLDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "NiotronMySQLDB.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Non visible component that provides access to the MySql Table storage."
    iconName = "images/niotronMySQLDB.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;
    }
.end annotation


# static fields
.field private static mfileText:Ljava/lang/String; = ""

.field private static mvalues:Ljava/lang/String; = null

.field private static response:Ljava/lang/String; = "debug"

.field private static sLanguage:Ljava/lang/String; = null

.field private static tLanguage:Ljava/lang/String; = null

.field private static urlParameters:Ljava/lang/String; = ""


# instance fields
.field ALLRESPONSE:Ljava/lang/String;

.field CHECKA:D

.field DEMOKIL:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private databsename:Ljava/lang/String;

.field private dbpassword:Ljava/lang/String;

.field private mainHandler:Landroid/os/Handler;

.field private responseCode:I

.field private serverURL:Ljava/lang/String;

.field private servername:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdatabsename(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->databsename:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdbpassword(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->dbpassword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmainHandler(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetserverURL(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->serverURL:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetservername(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->servername:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettableName(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->tableName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusername(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->username:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minsertNewFormat(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->insertNewFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minsertNewFormatA(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->insertNewFormatA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmvalues()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->mvalues:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgeturlParameters()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->urlParameters:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputurlParameters(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->urlParameters:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 57
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->servername:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->databsename:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->username:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->dbpassword:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->tableName:Ljava/lang/String;

    const-string v1, "https://cttricks.com/database/mysqltable"

    .line 76
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->serverURL:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->DEMOKIL:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->ALLRESPONSE:Ljava/lang/String;

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 80
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CHECKA:D

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->mainHandler:Landroid/os/Handler;

    .line 58
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->context:Landroid/content/Context;

    return-void
.end method

.method private insertNewFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 408
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "ERROR"

    .line 410
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->RowCreated(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private insertNewFormatA(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 592
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "ERROR"

    .line 594
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CellUpdated(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public CellUpdated(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered When Cell Updated"
    .end annotation

    const-string v0, "ERROR"

    .line 602
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "401"

    goto :goto_0

    :cond_0
    const-string p1, "200"

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "CellUpdated"

    .line 607
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ColumnCreated(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when column created.\nResponse code 200 = Column Created Successfully"
    .end annotation

    const-string v0, "ERROR"

    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "401"

    goto :goto_0

    :cond_0
    const-string p1, "200"

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ColumnCreated"

    .line 301
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CreateColumn(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create new column"
    .end annotation

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->serverURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->databsename:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->dbpassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->username:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->servername:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/get.php?&action=addcolumn&table="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&dbname="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pass="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&user="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mhost="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mdata="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/high16 v0, 0x402c000000000000L    # 14.0

    .line 286
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CHECKA:D

    .line 287
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data-IA;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string p1, "ERROR"

    .line 289
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->ColumnCreated(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public CreateRow(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new row in sql table.\nSupported Format : tag=value&tag2=value2..&tag_n=value_n"
    .end annotation

    .line 334
    sput-object p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->mvalues:Ljava/lang/String;

    .line 335
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)V

    .line 402
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public CreateTable(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new table.\nSupported Format : Column1,Column2,...,Column_n"
    .end annotation

    .line 431
    sput-object p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->mvalues:Ljava/lang/String;

    .line 432
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;)V

    .line 499
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public Database()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "It\'ll return the database name"
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->databsename:Ljava/lang/String;

    return-object v0
.end method

.method public Database(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Your database name."
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->databsename:Ljava/lang/String;

    return-void
.end method

.method public DeleteRow(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get entire data of a perticular row as a list element."
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->serverURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->databsename:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->dbpassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->username:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->servername:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/get.php?&action=delete&table="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&dbname="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pass="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&user="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mhost="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mdata="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    .line 308
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CHECKA:D

    .line 309
    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data-IA;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string p1, "ERROR"

    .line 311
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->RowDeleted(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public GetCell(DLjava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get entire data of a perticular column as a list element"
    .end annotation

    .line 259
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->serverURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->databsename:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->dbpassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->username:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->servername:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/get.php?&action=getcell&table="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&dbname="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pass="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&user="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mhost="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mdata="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "%3D"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/high16 p2, 0x402a000000000000L    # 13.0

    .line 261
    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CHECKA:D

    .line 262
    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data-IA;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string p1, "ERROR"

    const-string p2, ""

    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->GotCell(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public GetColumn(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get entire data of a perticular column as a list element"
    .end annotation

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->serverURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->databsename:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->dbpassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->username:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->servername:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/get.php?&action=getcolumn&table="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&dbname="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pass="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&user="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mhost="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mdata="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 236
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CHECKA:D

    .line 237
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data-IA;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string p1, "ERROR"

    const-string v0, ""

    .line 239
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->GotColumn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public GetRow(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get entire data of a perticular row as a list element."
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->serverURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->databsename:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->dbpassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->username:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->servername:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/get.php?&action=getrow&table="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&dbname="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pass="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&user="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mhost="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mdata="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/high16 v0, 0x4026000000000000L    # 11.0

    .line 211
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->CHECKA:D

    .line 212
    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data-IA;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$Perform_GET_Data;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string p1, "ERROR"

    const-string p2, ""

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->GotRow(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public GotCell(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when got cell data.\nResponse code 200 = Successfully Got Cell Data"
    .end annotation

    const-string p1, "ERROR"

    .line 272
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "401"

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string p1, "200"

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotCell"

    .line 279
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when got column data.\nResponse code 200 = Successfully Got Column List"
    .end annotation

    const-string p1, "ERROR"

    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "401"

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string p1, "200"

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotColumn"

    .line 254
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotRow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when got row data.\nResponse code 200 = Successfully Got Row Data"
    .end annotation

    const-string p1, "ERROR"

    .line 222
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "401"

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string p1, "200"

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotRow"

    .line 229
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Host()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "It\'ll return the HOST/IP"
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->servername:Ljava/lang/String;

    return-object v0
.end method

.method public Host(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Your Host\nHost is the IP of the Nameserver of your Hosting."
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->servername:Ljava/lang/String;

    return-void
.end method

.method public RowCreated(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered When Row Created"
    .end annotation

    const-string v0, "ERROR"

    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "401"

    goto :goto_0

    :cond_0
    const-string p1, "200"

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "RowCreated"

    .line 423
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RowDeleted(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when row deleted.\nResponse code 200 = Row Deleted Successfully"
    .end annotation

    const-string v0, "ERROR"

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "401"

    goto :goto_0

    :cond_0
    const-string p1, "200"

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "RowDeleted"

    .line 323
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SecretKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "It\'ll return the secret key or password of the database"
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->dbpassword:Ljava/lang/String;

    return-object v0
.end method

.method public SecretKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set database password."
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->dbpassword:Ljava/lang/String;

    return-void
.end method

.method public TableCreated(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered When Row Created"
    .end annotation

    const-string v0, "ERROR"

    .line 506
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "401"

    goto :goto_0

    :cond_0
    const-string p1, "200"

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TableCreated"

    .line 511
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TableName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "It\'ll return the tablename"
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public TableName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Table Name."
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->tableName:Ljava/lang/String;

    return-void
.end method

.method public UpdateCell(DLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update Cell by Row Number abd Column Name"
    .end annotation

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sput-object p4, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->mvalues:Ljava/lang/String;

    .line 519
    new-instance p4, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$3;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB;DLjava/lang/String;)V

    .line 586
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public UserName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "It\'ll return user name"
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->username:Ljava/lang/String;

    return-object v0
.end method

.method public UserName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set user of the given database."
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->username:Ljava/lang/String;

    return-void
.end method
