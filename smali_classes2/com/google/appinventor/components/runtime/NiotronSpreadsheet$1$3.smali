.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$3;
.super Ljava/lang/Object;
.source "NiotronSpreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;Ljava/lang/Exception;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$3;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 358
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1$3;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const/16 v2, 0x1f4

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotSheet(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
