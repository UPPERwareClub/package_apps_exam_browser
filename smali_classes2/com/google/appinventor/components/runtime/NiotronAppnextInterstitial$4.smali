.class Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$4;
.super Ljava/lang/Object;
.source "NiotronAppnextInterstitial.java"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdClosed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->AdUnitID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->AdClosed()V

    return-void
.end method
