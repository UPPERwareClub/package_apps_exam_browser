.class Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$4;
.super Ljava/lang/Object;
.source "AdjoePlaytimeAds.java"

# interfaces
.implements Lio/adjoe/sdk/AdjoeRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->RequestRewards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$4;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserReceivesReward(Lio/adjoe/sdk/AdjoeRewardResponse;)V
    .locals 3

    .line 221
    invoke-virtual {p1}, Lio/adjoe/sdk/AdjoeRewardResponse;->getReward()I

    move-result v0

    .line 224
    invoke-virtual {p1}, Lio/adjoe/sdk/AdjoeRewardResponse;->getAvailablePayoutCoins()I

    move-result v1

    .line 227
    invoke-virtual {p1}, Lio/adjoe/sdk/AdjoeRewardResponse;->getAlreadySpentCoins()I

    move-result p1

    .line 228
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds$4;->this$0:Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/AdjoePlaytimeAds;->UserReceivesReward(III)V

    return-void
.end method

.method public onUserReceivesRewardError(Lio/adjoe/sdk/AdjoeRewardResponseError;)V
    .locals 1

    .line 236
    invoke-virtual {p1}, Lio/adjoe/sdk/AdjoeRewardResponseError;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p1}, Lio/adjoe/sdk/AdjoeRewardResponseError;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
