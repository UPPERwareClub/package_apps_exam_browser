.class public final Lcom/google/appinventor/components/runtime/NiotronPaytm;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "NiotronPaytm.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Paytm Payment Component <br> SDK Version: 2.0.0"
    iconName = "images/niotronPaytm.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "paytm.aar, paytm.jar, gson.jar, okhttp.jar, okio-jvm.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private callbackUrl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private merchantId:Ljava/lang/String;

.field private sendResponseToServer:Z

.field private showHeader:Z

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string p1, "https://pguat.paytm.com/paytmchecksum/paytmCallback.jsp"

    .line 34
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->callbackUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->showHeader:Z

    .line 36
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->sendResponseToServer:Z

    .line 37
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->testMode:Z

    .line 46
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->context:Landroid/content/Context;

    .line 47
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public CallbackUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Paytm Merchant Id"
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public CallbackUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "https://pguat.paytm.com/paytmchecksum/paytmCallback.jsp"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Paytm Callback Url"
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->callbackUrl:Ljava/lang/String;

    return-void
.end method

.method public ClientAuthenticationFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Client Authentication Failed"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ClientAuthenticationFailed"

    .line 195
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorLoadingWebPage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Client Authentication Failed"
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "ErrorLoadingWebPage"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error Occurred"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ErrorOccurred"

    .line 190
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MerchantId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Paytm Merchant Id"
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->merchantId:Ljava/lang/String;

    return-object v0
.end method

.method public MerchantId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Paytm Merchant Id"
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->merchantId:Ljava/lang/String;

    return-void
.end method

.method public NetworkNotAvailable()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Network Not Available"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NetworkNotAvailable"

    .line 185
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SendResponseToServer(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Send Response to PG Server"
    .end annotation

    .line 86
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->sendResponseToServer:Z

    return-void
.end method

.method public SendResponseToServer()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Send Response to PG Server"
    .end annotation

    .line 91
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->sendResponseToServer:Z

    return v0
.end method

.method public ShowHeader(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show Paytm Header"
    .end annotation

    .line 75
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->showHeader:Z

    return-void
.end method

.method public ShowHeader()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Show Paytm Header"
    .end annotation

    .line 80
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->showHeader:Z

    return v0
.end method

.method public StartPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts the payment"
    .end annotation

    .line 118
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->testMode:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 119
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getStagingService(Ljava/lang/String;)Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getProductionService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    .line 124
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 125
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->merchantId:Ljava/lang/String;

    const-string v3, "MID"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ORDER_ID"

    .line 126
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CUST_ID"

    .line 127
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CHANNEL_ID"

    .line 128
    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "TXN_AMOUNT"

    .line 129
    invoke-virtual {v1, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "WEBSITE"

    .line 130
    invoke-virtual {v1, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->callbackUrl:Ljava/lang/String;

    const-string p2, "CALLBACK_URL"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CHECKSUMHASH"

    .line 132
    invoke-virtual {v1, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "INDUSTRY_TYPE_ID"

    .line 133
    invoke-virtual {v1, p1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance p1, Lcom/paytm/pgsdk/PaytmOrder;

    invoke-direct {p1, v1}, Lcom/paytm/pgsdk/PaytmOrder;-><init>(Ljava/util/HashMap;)V

    const/4 p2, 0x0

    .line 138
    invoke-virtual {v0, p1, p2}, Lcom/paytm/pgsdk/PaytmPGService;->initialize(Lcom/paytm/pgsdk/PaytmOrder;Lcom/paytm/pgsdk/PaytmClientCertificate;)V

    .line 140
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->context:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->showHeader:Z

    iget-boolean p3, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->sendResponseToServer:Z

    new-instance p4, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;

    invoke-direct {p4, p0}, Lcom/google/appinventor/components/runtime/NiotronPaytm$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronPaytm;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/paytm/pgsdk/PaytmPGService;->startPaymentTransaction(Landroid/content/Context;ZZLcom/paytm/pgsdk/PaytmPaymentTransactionCallback;)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Test Mode for Paytm"
    .end annotation

    .line 97
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->testMode:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Test Mode for Paytm"
    .end annotation

    .line 102
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronPaytm;->testMode:Z

    return v0
.end method

.method public TransactionCancelled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Transaction Cancelled"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TransactionCancelled"

    .line 205
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TransactionResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Transaction Response Received"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "TransactionResponse"

    .line 180
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
