.class public final Lcom/niotron/database/NiotronDatabase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "NiotronDatabase.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Niotron Realtime database. Lets you store your data in NiotronDB,"
    iconName = "images/niotron.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "niotron-db.jar, socket-io.jar, engine-io.jar, json-20090211.jar, okhttp.jar, okio-jvm.jar"
.end annotation


# instance fields
.field private API_KEY:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private db:Lcom/niotron/niotrondatabase/NiotronDB;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/niotron/database/NiotronDatabase;->context:Landroid/content/Context;

    return-void
.end method

.method private AddListener()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    new-instance v1, Lcom/niotron/database/NiotronDatabase$1;

    invoke-direct {v1, p0}, Lcom/niotron/database/NiotronDatabase$1;-><init>(Lcom/niotron/database/NiotronDatabase;)V

    invoke-virtual {v0, v1}, Lcom/niotron/niotrondatabase/NiotronDB;->setOnDataChangeListener(Lcom/niotron/niotrondatabase/NiotronDB$OnDataChangeListener;)V

    .line 64
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    new-instance v1, Lcom/niotron/database/NiotronDatabase$2;

    invoke-direct {v1, p0}, Lcom/niotron/database/NiotronDatabase$2;-><init>(Lcom/niotron/database/NiotronDatabase;)V

    invoke-virtual {v0, v1}, Lcom/niotron/niotrondatabase/NiotronDB;->setOnGetAllRecordListener(Lcom/niotron/niotrondatabase/NiotronDB$OnGetAllRecordListener;)V

    .line 83
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    new-instance v1, Lcom/niotron/database/NiotronDatabase$3;

    invoke-direct {v1, p0}, Lcom/niotron/database/NiotronDatabase$3;-><init>(Lcom/niotron/database/NiotronDatabase;)V

    invoke-virtual {v0, v1}, Lcom/niotron/niotrondatabase/NiotronDB;->setOnGetValueByTagListener(Lcom/niotron/niotrondatabase/NiotronDB$OnGetValueByTagListener;)V

    .line 95
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    new-instance v1, Lcom/niotron/database/NiotronDatabase$4;

    invoke-direct {v1, p0}, Lcom/niotron/database/NiotronDatabase$4;-><init>(Lcom/niotron/database/NiotronDatabase;)V

    invoke-virtual {v0, v1}, Lcom/niotron/niotrondatabase/NiotronDB;->setOnCreateRecordListener(Lcom/niotron/niotrondatabase/NiotronDB$OnCreateRecordListener;)V

    .line 107
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    new-instance v1, Lcom/niotron/database/NiotronDatabase$5;

    invoke-direct {v1, p0}, Lcom/niotron/database/NiotronDatabase$5;-><init>(Lcom/niotron/database/NiotronDatabase;)V

    invoke-virtual {v0, v1}, Lcom/niotron/niotrondatabase/NiotronDB;->setOnDeleteRecordListener(Lcom/niotron/niotrondatabase/NiotronDB$OnDeleteRecordListener;)V

    return-void
.end method

.method private initSDK()V
    .locals 2

    .line 43
    new-instance v0, Lcom/niotron/niotrondatabase/NiotronDB;

    iget-object v1, p0, Lcom/niotron/database/NiotronDatabase;->API_KEY:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/niotron/niotrondatabase/NiotronDB;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    .line 44
    invoke-direct {p0}, Lcom/niotron/database/NiotronDatabase;->AddListener()V

    return-void
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/niotron/database/NiotronDatabase;->API_KEY:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/niotron/database/NiotronDatabase;->initSDK()V

    return-void
.end method

.method public CreateRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Creates a record with provided tag and value"
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    invoke-virtual {v0, p1, p2}, Lcom/niotron/niotrondatabase/NiotronDB;->createRecord(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public DeleteRecord(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes record with provided tag"
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    invoke-virtual {v0, p1}, Lcom/niotron/niotrondatabase/NiotronDB;->deleteRecord(Ljava/lang/String;)V

    return-void
.end method

.method public GetAllRecord()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Fetches all records"
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    invoke-virtual {v0}, Lcom/niotron/niotrondatabase/NiotronDB;->getAllRecord()V

    return-void
.end method

.method public GetValueByTag(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the value of the provided tag"
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    invoke-virtual {v0, p1}, Lcom/niotron/niotrondatabase/NiotronDB;->getValueByTag(Ljava/lang/String;)V

    return-void
.end method

.method public OnCreatedRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when record created successfully"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OnCreatedRecord"

    .line 168
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnDataAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when some data added into the database"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OnDataAdded"

    .line 158
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnDataRemoved(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when some data removed from database"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnDataRemoved"

    .line 163
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnDeletedRecord(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when record deleted successfully"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnDeletedRecord"

    .line 178
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnErrorCreateingRecord(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when error creating record"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnErrorCreateingRecord"

    .line 173
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnErrorDeletingRecord(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when error deleting record"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnErrorDeletingRecord"

    .line 183
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnErrorGettingAllRecords(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when error getting all records"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnErrorGettingAllRecords"

    .line 198
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnErrorGettingValueByTag(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when error getting value of a tag"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnErrorGettingValueByTag"

    .line 208
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnGotAllRecords(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when got all record"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnGotAllRecords"

    .line 193
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnGotValueByTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Raises when got value of a tag"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OnGotValueByTag"

    .line 203
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public StartListeningToDataChange()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts Listenign to data change"
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    invoke-virtual {v0}, Lcom/niotron/niotrondatabase/NiotronDB;->startListeningToDataChange()V

    return-void
.end method

.method public StopListeningToDataChange()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stops listening to data change"
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase;->db:Lcom/niotron/niotrondatabase/NiotronDB;

    invoke-virtual {v0}, Lcom/niotron/niotrondatabase/NiotronDB;->stopListeningToDataChange()V

    return-void
.end method
