.class Lcom/google/appinventor/components/runtime/NiotronFTP$3$3;
.super Ljava/lang/Object;
.source "NiotronFTP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFTP$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronFTP$3;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFTP$3;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$3$3;->this$1:Lcom/google/appinventor/components/runtime/NiotronFTP$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP$3$3;->this$1:Lcom/google/appinventor/components/runtime/NiotronFTP$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronFTP$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronFTP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronFTP;->LoginResult(Z)V

    return-void
.end method