.class Lcom/google/appinventor/components/runtime/SocketIO$2$1;
.super Ljava/lang/Object;
.source "SocketIO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SocketIO$2;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/SocketIO$2;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SocketIO$2;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SocketIO$2$1;->this$1:Lcom/google/appinventor/components/runtime/SocketIO$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SocketIO$2$1;->this$1:Lcom/google/appinventor/components/runtime/SocketIO$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SocketIO$2;->this$0:Lcom/google/appinventor/components/runtime/SocketIO;

    invoke-static {}, Lcom/google/appinventor/components/runtime/SocketIO;->-$$Nest$sfgeteventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SocketIO$2$1;->this$1:Lcom/google/appinventor/components/runtime/SocketIO$2;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SocketIO$2;->this$0:Lcom/google/appinventor/components/runtime/SocketIO;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/SocketIO;->-$$Nest$fgetobject(Lcom/google/appinventor/components/runtime/SocketIO;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/SocketIO;->EventReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
