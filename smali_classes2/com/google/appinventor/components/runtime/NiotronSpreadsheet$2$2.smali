.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$2;
.super Ljava/lang/Object;
.source "NiotronSpreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const/16 v1, 0x1f4

    const-string v2, "Server error occured."

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotSpreadsheet(ILjava/lang/String;Z)V

    return-void
.end method
