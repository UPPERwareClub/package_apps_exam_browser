.class Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$1;
.super Ljava/lang/Object;
.source "NiotronFirebaseCloudMessaging.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->GetUserToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    .line 211
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 212
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 213
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 219
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseCloudMessaging;->GotUserToken(Ljava/lang/String;)V

    return-void
.end method
