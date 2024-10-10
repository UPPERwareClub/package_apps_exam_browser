.class Lme/aemo/antihack/AntiHack$1$1;
.super Ljava/lang/Object;
.source "AntiHack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/antihack/AntiHack$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/aemo/antihack/AntiHack$1;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lme/aemo/antihack/AntiHack$1;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lme/aemo/antihack/AntiHack$1$1;->this$1:Lme/aemo/antihack/AntiHack$1;

    iput-object p2, p0, Lme/aemo/antihack/AntiHack$1$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 58
    iget-object v0, p0, Lme/aemo/antihack/AntiHack$1$1;->this$1:Lme/aemo/antihack/AntiHack$1;

    iget-object v0, v0, Lme/aemo/antihack/AntiHack$1;->this$0:Lme/aemo/antihack/AntiHack;

    iget-object v1, p0, Lme/aemo/antihack/AntiHack$1$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lme/aemo/antihack/AntiHack$1$1;->this$1:Lme/aemo/antihack/AntiHack$1;

    iget-object v2, v2, Lme/aemo/antihack/AntiHack$1;->val$keyType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lme/aemo/antihack/AntiHack;->OnGotApkSignature(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
