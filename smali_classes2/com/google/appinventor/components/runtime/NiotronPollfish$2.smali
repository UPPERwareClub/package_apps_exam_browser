.class Lcom/google/appinventor/components/runtime/NiotronPollfish$2;
.super Ljava/lang/Object;
.source "NiotronPollfish.java"

# interfaces
.implements Lcom/pollfish/callback/PollfishUserNotEligibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronPollfish;->InitializePollfish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronPollfish;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronPollfish;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronPollfish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserNotEligible()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPollfish$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronPollfish;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronPollfish;->UserNotEligible()V

    return-void
.end method
