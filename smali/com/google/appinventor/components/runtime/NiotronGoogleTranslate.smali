.class public final Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "NiotronGoogleTranslate.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Use this component to translate words and sentences between different languages. This component needs Internet access, as it will request translations to the Google Translate service. Specify the target language in the to target using two letter language codes. So \'hi\' will translate from given language to Hindi while \'ru\' will translate from given language to Russian. The source language will autometically get detected. So providing just \'hi\' will attempt to detect the source language and translate it to Hindi.<br><br>To know more about the supported language and language codes kindly visit cloud.google.com/translate/docs/languages"
    iconName = "images/niotronGoogleTranslate.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static mlanguageCode:Ljava/lang/String; = null

.field private static mtext:Ljava/lang/String; = null

.field private static response:Ljava/lang/String; = "debug"

.field private static urlParameters:Ljava/lang/String; = ""


# instance fields
.field private context:Landroid/content/Context;

.field private mainHandler:Landroid/os/Handler;

.field private responseCode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmainHandler(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmlanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->mlanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmtext()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->mtext:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetresponse()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->response:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgeturlParameters()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->urlParameters:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputresponse(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->response:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputurlParameters(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->urlParameters:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->mainHandler:Landroid/os/Handler;

    .line 61
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered after upload being called"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 149
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Simply set language code to which you wnat to convert given text."
    .end annotation

    const-string v0, " "

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "%20"

    .line 67
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->mtext:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_0
    sput-object p1, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->mtext:Ljava/lang/String;

    .line 71
    :goto_0
    sput-object p2, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;->mlanguageCode:Ljava/lang/String;

    .line 73
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleTranslate;)V

    .line 140
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public GotTranslation(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered after upload being called"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotTranslation"

    .line 145
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
