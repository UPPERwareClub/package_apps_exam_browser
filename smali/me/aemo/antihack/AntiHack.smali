.class public Lme/aemo/antihack/AntiHack;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "AntiHack.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 22
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 23
    iput-object p1, p0, Lme/aemo/antihack/AntiHack;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method

.method static synthetic access$000(Lme/aemo/antihack/AntiHack;)Lcom/google/appinventor/components/runtime/ComponentContainer;
    .locals 0

    .line 17
    iget-object p0, p0, Lme/aemo/antihack/AntiHack;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-object p0
.end method

.method static synthetic access$100(Lme/aemo/antihack/AntiHack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lme/aemo/antihack/AntiHack;->handlerError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handlerError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lme/aemo/antihack/AntiHack;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lme/aemo/antihack/AntiHack$1;

    invoke-direct {v1, p0, p1, p2}, Lme/aemo/antihack/AntiHack$1;-><init>(Lme/aemo/antihack/AntiHack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public GetApkSignature(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieve the APK signature."
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lme/aemo/antihack/AntiHack$2;

    invoke-direct {v1, p0, p1, p2}, Lme/aemo/antihack/AntiHack$2;-><init>(Lme/aemo/antihack/AntiHack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public GetPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the package name of the app."
    .end annotation

    .line 97
    iget-object v0, p0, Lme/aemo/antihack/AntiHack;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MD5()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "KeyType: Message Digest Algorithm 5 (MD5)"
    .end annotation

    const-string v0, "MD5"

    return-object v0
.end method

.method public OnErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an error occurs."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OnErrorOccurred"

    .line 28
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnGotApkSignature(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the APK signature is successfully retrieved."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OnGotApkSignature"

    .line 33
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SHA1()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "KeyType: Secure Hash Algorithm 1 (SHA-1)"
    .end annotation

    const-string v0, "SHA-1"

    return-object v0
.end method

.method public SHA256()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "KeyType: Secure Hash Algorithm 256-bit (SHA-256)"
    .end annotation

    const-string v0, "SHA-256"

    return-object v0
.end method
