.class Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$2;
.super Ljava/lang/Object;
.source "NiotronAdManagerRewarded.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->ShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/NiotronAdManagerRewarded;->AdOnReward(Ljava/lang/String;I)V

    return-void
.end method