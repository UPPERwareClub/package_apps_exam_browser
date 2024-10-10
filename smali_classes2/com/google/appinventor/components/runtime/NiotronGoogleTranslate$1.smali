.class Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;
.super Ljava/lang/Thread;
.source "NiotronGoogleTranslate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->GetTranslation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$sfgetmtext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$sfgetmlanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$sfgetmtext()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$sfgetmlanguageCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&tlang="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$sfputurlParameters(Ljava/lang/String;)V

    const-string v0, "https://script.google.com/macros/s/AKfycbzpXZ5jiWMhE62niS96KB4AjL9tqboXAUdPBWoqLnWrhjWaUsgB/exec"

    .line 84
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "POST"

    .line 88
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0"

    .line 89
    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Language"

    const-string v2, "en-US,en;q=0.5"

    .line 90
    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 94
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    invoke-static {}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$sfgeturlParameters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 97
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 99
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    .line 101
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 102
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$sfputresponse(Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$fgetmainHandler(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$fgetmainHandler(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$fgetcontext(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Required fields not filled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$sfputresponse(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->-$$Nest$fgetmainHandler(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
