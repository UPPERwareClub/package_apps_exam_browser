.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;
.super Ljava/lang/Object;
.source "NiotronSpreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

.field final synthetic val$into:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->val$into:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0x191

    .line 722
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->val$into:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 723
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v4, v3}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->-$$Nest$mgetResponseCode(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_0

    move-object v6, v0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 730
    new-instance v6, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v6}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 731
    invoke-virtual {v6, v3}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 732
    check-cast v6, Lorg/json/simple/JSONObject;

    const-string v7, "data"

    .line 733
    invoke-virtual {v6, v7}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 735
    :goto_0
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    invoke-static {v8, v3}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->-$$Nest$mgetMessage(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v4, v6, v3, v5}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotCell(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 739
    :catch_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v4, "Server error occured"

    invoke-virtual {v3, v2, v0, v4, v1}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotCell(ILjava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method
