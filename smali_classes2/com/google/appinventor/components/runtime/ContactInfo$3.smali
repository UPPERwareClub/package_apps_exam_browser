.class Lcom/google/appinventor/components/runtime/ContactInfo$3;
.super Ljava/lang/Object;
.source "ContactInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ContactInfo;->ContactInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$addressType:Ljava/lang/String;

.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$emailType:Ljava/lang/String;

.field final synthetic val$familyName:Ljava/lang/String;

.field final synthetic val$firstName:Ljava/lang/String;

.field final synthetic val$notes:Ljava/lang/String;

.field final synthetic val$organizationName:Ljava/lang/String;

.field final synthetic val$phoneNum:Ljava/lang/String;

.field final synthetic val$phoneType:Ljava/lang/String;

.field final synthetic val$website:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ContactInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$firstName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$familyName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$displayName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$phoneNum:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$phoneType:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$email:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$emailType:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$address:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$addressType:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$organizationName:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$website:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$notes:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$firstName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$familyName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$displayName:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$phoneNum:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$phoneType:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$email:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$emailType:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$address:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$addressType:Ljava/lang/String;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$organizationName:Ljava/lang/String;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$website:Ljava/lang/String;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactInfo$3;->val$notes:Ljava/lang/String;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "ContactInfoReceived"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
