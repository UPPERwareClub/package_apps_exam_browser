.class Lcom/google/appinventor/components/runtime/NiotronAirtable$8;
.super Ljava/lang/Object;
.source "NiotronAirtable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->GetAllRows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$8;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$8;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->-$$Nest$mGetAllData(Lcom/google/appinventor/components/runtime/NiotronAirtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Airtable Component"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
