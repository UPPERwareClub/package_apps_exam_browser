.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5$1;
.super Ljava/lang/Object;
.source "NiotronSpreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;

.field final synthetic val$into:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5$1;->val$into:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x191

    .line 662
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5$1;->val$into:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 664
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->-$$Nest$mgetResponseCode(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 667
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 670
    new-instance v5, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v5}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 671
    invoke-virtual {v5, v2}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 672
    check-cast v5, Lorg/json/simple/JSONObject;

    const-string v6, "data"

    .line 673
    invoke-virtual {v5, v6}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/simple/JSONArray;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    move-object v8, v5

    move v5, v4

    move-object v4, v8

    .line 676
    :goto_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v7, v2}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->-$$Nest$mgetMessage(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v3, v4, v2, v5}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotColumn(ILcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 678
    :catch_0
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 680
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v4, "Server error occured"

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotColumn(ILcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method
