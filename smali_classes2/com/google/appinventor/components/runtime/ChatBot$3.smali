.class Lcom/google/appinventor/components/runtime/ChatBot$3;
.super Ljava/lang/Object;
.source "ChatBot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChatBot;->ErrorOccurred(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChatBot;

.field final synthetic val$responseCode:I

.field final synthetic val$responseText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChatBot;ILjava/lang/String;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    iput p2, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->val$responseCode:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->val$responseText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 495
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->val$responseCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->val$responseText:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "ErrorOccurred"

    invoke-static {v0, v3, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChatBot;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    const/16 v6, 0x1068

    new-array v1, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->val$responseCode:I

    .line 497
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v4

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->val$responseText:Ljava/lang/String;

    aput-object v4, v1, v5

    .line 496
    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
