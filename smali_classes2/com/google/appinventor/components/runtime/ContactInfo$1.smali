.class Lcom/google/appinventor/components/runtime/ContactInfo$1;
.super Landroid/os/Handler;
.source "ContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ContactInfo;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ContactInfo;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 74
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ledu/mit/media/funf/json/IJsonObject;

    const-string v2, "contactData"

    .line 81
    invoke-virtual {v1, v2}, Ledu/mit/media/funf/json/IJsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 84
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "mimetype"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/email_v2"

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$mgetEmailInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    :cond_1
    const-string v4, "vnd.android.cursor.item/nickname"

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$mgetNicknameInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    :cond_2
    const-string v4, "vnd.android.cursor.item/phone_v2"

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$mgetPhoneInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    :cond_3
    const-string v4, "vnd.android.cursor.item/name"

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$mgetNameInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    :cond_4
    const-string v4, "vnd.android.cursor.item/organization"

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 95
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$mgetOrganizationInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    :cond_5
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 97
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$mgetAddressInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    :cond_6
    const-string v4, "vnd.android.cursor.item/website"

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 99
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$mgetWebsiteInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    :cond_7
    const-string v4, "vnd.android.cursor.item/note"

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$mgetNoteInfo(Lcom/google/appinventor/components/runtime/ContactInfo;Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    .line 134
    :cond_8
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetgivenName(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetfamilyName(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetdisplayName(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetphoneNum(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetphoneType(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetemail(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetemailType(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetaddress(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetaddressType(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetorganizationName(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetwebsite(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ContactInfo$1;->this$0:Lcom/google/appinventor/components/runtime/ContactInfo;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ContactInfo;->-$$Nest$fgetnotes(Lcom/google/appinventor/components/runtime/ContactInfo;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v4 .. v16}, Lcom/google/appinventor/components/runtime/ContactInfo;->ContactInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
