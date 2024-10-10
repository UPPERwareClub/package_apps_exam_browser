.class public Lcom/google/appinventor/components/runtime/ContactInfo;
.super Lcom/google/appinventor/components/runtime/ProbeBase;
.source "ContactInfo.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Return information of a user\'s contacts"
    iconName = "images/phoneCall.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "funf.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# instance fields
.field private final CONTACTINFO_PROBE:Ljava/lang/String;

.field private final SCHEDULE_DURATION:I

.field private final SCHEDULE_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private addressType:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private emailType:Ljava/lang/String;

.field private familyName:Ljava/lang/String;

.field private givenName:Ljava/lang/String;

.field jsonParser:Lcom/google/gson/JsonParser;

.field private listener:Ledu/mit/media/funf/probe/Probe$DataListener;

.field final myHandler:Landroid/os/Handler;

.field private notes:Ljava/lang/String;

.field private organizationName:Ljava/lang/String;

.field private phoneNum:Ljava/lang/String;

.field private phoneType:Ljava/lang/String;

.field private probe:Ledu/mit/media/funf/probe/builtin/ContactProbe;

.field private website:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetaddress(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->address:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaddressType(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->addressType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdisplayName(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemail(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->email:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemailType(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->emailType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfamilyName(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->familyName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgivenName(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->givenName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotes(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->notes:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetorganizationName(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->organizationName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphoneNum(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->phoneNum:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphoneType(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->phoneType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwebsite(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->website:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAddressInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getAddressInfo(Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetEmailInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getEmailInfo(Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetNameInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getNameInfo(Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetNicknameInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getNicknameInfo(Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetNoteInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getNoteInfo(Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetOrganizationInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getOrganizationInfo(Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPhoneInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getPhoneInfo(Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetWebsiteInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getWebsiteInfo(Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 52
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ProbeBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, "edu.mit.media.funf.probe.builtin.COntactProbe"

    .line 27
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->CONTACTINFO_PROBE:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->jsonParser:Lcom/google/gson/JsonParser;

    const-string v0, "ContactInfo"

    .line 30
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->TAG:Ljava/lang/String;

    const v1, 0xa8c0

    .line 33
    iput v1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->SCHEDULE_INTERVAL:I

    const/16 v2, 0xf

    .line 34
    iput v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->SCHEDULE_DURATION:I

    const-string v3, ""

    .line 38
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->email:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->emailType:Ljava/lang/String;

    .line 40
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->phoneNum:Ljava/lang/String;

    .line 41
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->phoneType:Ljava/lang/String;

    .line 42
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->givenName:Ljava/lang/String;

    .line 43
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->familyName:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->address:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->addressType:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->organizationName:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->notes:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->website:Ljava/lang/String;

    .line 49
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->displayName:Ljava/lang/String;

    .line 70
    new-instance v3, Lcom/google/appinventor/components/runtime/ContactInfo$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/ContactInfo$1;-><init>(Lcom/google/appinventor/components/runtime/ContactInfo;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->myHandler:Landroid/os/Handler;

    .line 141
    new-instance v3, Lcom/google/appinventor/components/runtime/ContactInfo$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/ContactInfo$2;-><init>(Lcom/google/appinventor/components/runtime/ContactInfo;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 54
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->context:Landroid/content/Context;

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->mainUIThreadActivity:Landroid/app/Activity;

    const-string p1, "Before create probe"

    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance p1, Lcom/google/gson/JsonParser;

    invoke-direct {p1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 59
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->mainUIThreadActivity:Landroid/app/Activity;

    .line 60
    invoke-static {v0}, Ledu/mit/media/funf/FunfManager;->getProbeFactory(Landroid/content/Context;)Ledu/mit/media/funf/config/SingletonTypeAdapterFactory;

    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->gson:Lcom/google/gson/Gson;

    .line 61
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/ContactProbe;

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/ContactProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->probe:Ledu/mit/media/funf/probe/builtin/ContactProbe;

    .line 65
    iput v1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->interval:I

    .line 66
    iput v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->duration:I

    return-void
.end method

.method private getAddressInfo(Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 211
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->address:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    .line 214
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getAddressTypeName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->addressType:Ljava/lang/String;

    return-void
.end method

.method private getAddressTypeName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "OTHER"

    goto :goto_0

    :cond_1
    const-string p1, "WORK"

    goto :goto_0

    :cond_2
    const-string p1, "HOME"

    :goto_0
    return-object p1
.end method

.method private getEmailInfo(Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 201
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->email:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    .line 203
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getEmailTypeName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->emailType:Ljava/lang/String;

    return-void
.end method

.method private getEmailTypeName(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "MOBILE"

    goto :goto_0

    :cond_1
    const-string p1, "OTHER"

    goto :goto_0

    :cond_2
    const-string p1, "WORK"

    goto :goto_0

    :cond_3
    const-string p1, "HOME"

    goto :goto_0

    :cond_4
    const-string p1, "CUSTOM"

    :goto_0
    return-object p1
.end method

.method private getNameInfo(Lcom/google/gson/JsonElement;)V
    .locals 3

    .line 252
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->givenName:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_1

    .line 255
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->familyName:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 257
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->displayName:Ljava/lang/String;

    return-void
.end method

.method private getNicknameInfo(Lcom/google/gson/JsonElement;)V
    .locals 0

    return-void
.end method

.method private getNoteInfo(Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 232
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->notes:Ljava/lang/String;

    return-void
.end method

.method private getOrganizationInfo(Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 242
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->organizationName:Ljava/lang/String;

    return-void
.end method

.method private getPhoneInfo(Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 222
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->phoneNum:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    .line 225
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getPhoneTypeName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->phoneType:Ljava/lang/String;

    return-void
.end method

.method private getPhoneTypeName(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "OTHER"

    goto :goto_0

    :cond_1
    const-string p1, "FAX_HOME"

    goto :goto_0

    :cond_2
    const-string p1, "FAX_WORK"

    goto :goto_0

    :cond_3
    const-string p1, "WORK"

    goto :goto_0

    :cond_4
    const-string p1, "MOBILE"

    goto :goto_0

    :cond_5
    const-string p1, "HOME"

    goto :goto_0

    :cond_6
    const-string p1, "CUSTOM"

    :goto_0
    return-object p1
.end method

.method private getWebsiteInfo(Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 261
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->website:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ContactInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    move-object/from16 v14, p0

    .line 274
    iget-boolean v0, v14, Lcom/google/appinventor/components/runtime/ContactInfo;->enabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, v14, Lcom/google/appinventor/components/runtime/ContactInfo;->enabledSchedule:Z

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    iget-object v15, v14, Lcom/google/appinventor/components/runtime/ContactInfo;->mainUIThreadActivity:Landroid/app/Activity;

    new-instance v13, Lcom/google/appinventor/components/runtime/ContactInfo$3;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object v14, v13

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/google/appinventor/components/runtime/ContactInfo$3;-><init>(Lcom/google/appinventor/components/runtime/ContactInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable contact information sensor to run once"
    .end annotation

    .line 172
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 173
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->enabled:Z

    .line 174
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 177
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->privacySafe:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "hideSensitiveData"

    invoke-virtual {v0, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 178
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->gson:Lcom/google/gson/Gson;

    const-class v3, Ledu/mit/media/funf/probe/builtin/ContactProbe;

    invoke-virtual {p1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledu/mit/media/funf/probe/builtin/ContactProbe;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->probe:Ledu/mit/media/funf/probe/builtin/ContactProbe;

    new-array v2, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    .line 180
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ledu/mit/media/funf/probe/builtin/ContactProbe;->registerListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "run-once config for Contact:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContactInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->probe:Ledu/mit/media/funf/probe/builtin/ContactProbe;

    new-array v0, v2, [Ledu/mit/media/funf/probe/Probe$DataListener;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ledu/mit/media/funf/probe/builtin/ContactProbe;->unregisterListener([Ledu/mit/media/funf/probe/Probe$DataListener;)V

    :goto_0
    return-void
.end method

.method public registerDataRequest(II)V
    .locals 3

    const-string v0, "ContactInfo"

    const-string v1, "Registering contact info requests."

    .line 300
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "edu.mit.media.funf.probe.builtin.COntactProbe"

    .line 303
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->getDataRequest(IILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 305
    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonObject;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->privacySafe:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hideSensitiveData"

    invoke-virtual {p2, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 307
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallLog request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {p2, v0, p1}, Ledu/mit/media/funf/FunfManager;->requestData(Ledu/mit/media/funf/probe/Probe$DataListener;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public unregisterDataRequest()V
    .locals 2

    const-string v0, "ContactInfo"

    const-string v1, "Unregistering contact info data requests."

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->mBoundFunfManager:Ledu/mit/media/funf/FunfManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactInfo;->listener:Ledu/mit/media/funf/probe/Probe$DataListener;

    invoke-virtual {v0, v1}, Ledu/mit/media/funf/FunfManager;->unrequestAllData2(Ledu/mit/media/funf/probe/Probe$DataListener;)V

    return-void
.end method
