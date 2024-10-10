.class Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;
.super Ljava/lang/Thread;
.source "NiotronRecaptcha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->handleSiteVerify(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

.field final synthetic val$responseToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->val$responseToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 97
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://www.google.com/recaptcha/api/siteverify"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->-$$Nest$fgetsecretKey(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->val$responseToken:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&response="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "POST"

    .line 102
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0"

    .line 103
    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    const-string v3, "en-US,en;q=0.5"

    .line 104
    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 108
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 111
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 113
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecaptcha;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/NiotronRecaptcha;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronRecaptcha$3;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
