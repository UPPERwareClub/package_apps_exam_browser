.class public Lcom/google/appinventor/components/runtime/query/QueryHelper;
.super Ljava/lang/Object;
.source "QueryHelper.java"


# static fields
.field private static queryHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/query/QueryHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/runtime/query/LimitQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/LimitQueryHandler;-><init>()V

    const-string v2, "limit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/WhereQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/WhereQueryHandler;-><init>()V

    const-string v2, "where"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/OrderByQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/OrderByQueryHandler;-><init>()V

    const-string v2, "orderBy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/StartAfterQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/StartAfterQueryHandler;-><init>()V

    const-string v2, "startAfter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/StartAtQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/StartAtQueryHandler;-><init>()V

    const-string v2, "startAt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/EndAtQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/EndAtQueryHandler;-><init>()V

    const-string v2, "endAt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/EndBeforeQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/EndBeforeQueryHandler;-><init>()V

    const-string v2, "endBefore"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processQueries(Lorg/json/JSONArray;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "FirestoreJDL"

    const-string v1, "Processing queries"

    .line 28
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 32
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "queryType"

    .line 34
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    sget-object v6, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    sget-object v6, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/query/QueryHandler;

    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, p1, v4}, Lcom/google/appinventor/components/runtime/query/QueryHandler;->handle(Lcom/google/firebase/firestore/Query;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    const-string v5, "Unknown query type %s"

    .line 39
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
