.class Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$2;
.super Ljava/lang/Object;
.source "NiotronMySQLDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->RowCreated(Ljava/lang/String;)V

    return-void
.end method
