.class public final synthetic Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;->lambda$doStop$1$com-google-common-util-concurrent-AbstractIdleService$DelegateService()V

    return-void
.end method