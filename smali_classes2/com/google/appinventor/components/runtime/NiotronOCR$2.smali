.class Lcom/google/appinventor/components/runtime/NiotronOCR$2;
.super Ljava/lang/Object;
.source "NiotronOCR.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronOCR;->RecognizeTextInImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/mlkit/vision/text/Text;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronOCR;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronOCR;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronOCR$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronOCR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/mlkit/vision/text/Text;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronOCR$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronOCR;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronOCR;->GotText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/google/mlkit/vision/text/Text;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronOCR$2;->onSuccess(Lcom/google/mlkit/vision/text/Text;)V

    return-void
.end method
