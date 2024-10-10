.class public Lcom/google/appinventor/components/runtime/RazorPay$RazorActivity;
.super Landroid/app/Activity;
.source "RazorPay.java"

# interfaces
.implements Lcom/razorpay/PaymentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/RazorPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RazorActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance p1, Lcom/razorpay/Checkout;

    invoke-direct {p1}, Lcom/razorpay/Checkout;-><init>()V

    .line 60
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetAPI_KEY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/razorpay/Checkout;->setKeyID(Ljava/lang/String;)V

    .line 62
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "key"

    .line 63
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 64
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    .line 65
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetdescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "image"

    .line 66
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetimage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currency"

    .line 67
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetcurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "order_id"

    .line 68
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetorderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "amount"

    .line 69
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetamount()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "prefill.email"

    .line 70
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetemail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "prefill.contact"

    .line 71
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetcontact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {p1, p0, v0}, Lcom/razorpay/Checkout;->open(Landroid/app/Activity;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/RazorPay;->ErrorOccurred(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPaymentError(ILjava/lang/String;)V
    .locals 1

    .line 92
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/RazorPay;->OnPaymentFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Exception in onPaymentError"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/RazorPay$RazorActivity;->finish()V

    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;)V
    .locals 2

    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/RazorPay;->OnPaymentSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-static {}, Lcom/google/appinventor/components/runtime/RazorPay;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception in onPaymentSuccess"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/RazorPay$RazorActivity;->finish()V

    return-void
.end method
