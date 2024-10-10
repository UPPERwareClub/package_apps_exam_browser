.class Lcom/google/appinventor/components/runtime/NiotronRecaptcha$1;
.super Ljava/lang/Object;
.source "NiotronRecaptcha.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->Verify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 81
    instance-of v0, p1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    .line 82
    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-static {p1}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
