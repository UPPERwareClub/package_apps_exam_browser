.class Lme/aemo/antihack/AntiHack$2;
.super Ljava/lang/Object;
.source "AntiHack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/antihack/AntiHack;->GetApkSignature(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/aemo/antihack/AntiHack;

.field final synthetic val$keyType:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/aemo/antihack/AntiHack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lme/aemo/antihack/AntiHack$2;->this$0:Lme/aemo/antihack/AntiHack;

    iput-object p2, p0, Lme/aemo/antihack/AntiHack$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lme/aemo/antihack/AntiHack$2;->val$keyType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 51
    :try_start_0
    iget-object v0, p0, Lme/aemo/antihack/AntiHack$2;->this$0:Lme/aemo/antihack/AntiHack;

    invoke-static {v0}, Lme/aemo/antihack/AntiHack;->access$000(Lme/aemo/antihack/AntiHack;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lme/aemo/antihack/AntiHack$2;->val$packageName:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 53
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 54
    array-length v1, v0

    if-lez v1, :cond_1

    .line 55
    iget-object v1, p0, Lme/aemo/antihack/AntiHack$2;->val$keyType:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/4 v2, 0x0

    .line 56
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 57
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    const-string v6, "%02X:"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v5, v5, 0xff

    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lme/aemo/antihack/AntiHack$2;->this$0:Lme/aemo/antihack/AntiHack;

    invoke-static {v0}, Lme/aemo/antihack/AntiHack;->access$000(Lme/aemo/antihack/AntiHack;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v2, Lme/aemo/antihack/AntiHack$2$1;

    invoke-direct {v2, p0, v1}, Lme/aemo/antihack/AntiHack$2$1;-><init>(Lme/aemo/antihack/AntiHack$2;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lme/aemo/antihack/AntiHack$2;->this$0:Lme/aemo/antihack/AntiHack;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v0, v2}, Lme/aemo/antihack/AntiHack;->access$100(Lme/aemo/antihack/AntiHack;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 72
    iget-object v1, p0, Lme/aemo/antihack/AntiHack$2;->this$0:Lme/aemo/antihack/AntiHack;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NameNotFoundException"

    invoke-static {v1, v0, v2}, Lme/aemo/antihack/AntiHack;->access$100(Lme/aemo/antihack/AntiHack;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
