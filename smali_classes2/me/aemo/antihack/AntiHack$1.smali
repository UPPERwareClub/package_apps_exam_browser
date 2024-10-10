.class Lme/aemo/antihack/AntiHack$1;
.super Ljava/lang/Object;
.source "AntiHack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/aemo/antihack/AntiHack;->handlerError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/aemo/antihack/AntiHack;

.field final synthetic val$error:Ljava/lang/String;

.field final synthetic val$from:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/aemo/antihack/AntiHack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lme/aemo/antihack/AntiHack$1;->this$0:Lme/aemo/antihack/AntiHack;

    iput-object p2, p0, Lme/aemo/antihack/AntiHack$1;->val$error:Ljava/lang/String;

    iput-object p3, p0, Lme/aemo/antihack/AntiHack$1;->val$from:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lme/aemo/antihack/AntiHack$1;->this$0:Lme/aemo/antihack/AntiHack;

    iget-object v1, p0, Lme/aemo/antihack/AntiHack$1;->val$error:Ljava/lang/String;

    iget-object v2, p0, Lme/aemo/antihack/AntiHack$1;->val$from:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lme/aemo/antihack/AntiHack;->OnErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
