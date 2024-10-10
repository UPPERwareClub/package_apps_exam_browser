.class Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;
.super Ljava/lang/Object;
.source "NiotronGoogleMaps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->OnLocationChanged(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

.field final synthetic val$lat:D

.field final synthetic val$lng:D


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;DD)V
    .locals 0

    .line 1720
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->val$lat:D

    iput-wide p4, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->val$lng:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1722
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->val$lat:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->val$lng:D

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "location changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->val$lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$11;->val$lng:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "OnLocationChanged"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
