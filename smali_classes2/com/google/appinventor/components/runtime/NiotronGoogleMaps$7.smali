.class Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$7;
.super Ljava/lang/Object;
.source "NiotronGoogleMaps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->InfoWindowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

.field final synthetic val$markerId:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;I)V
    .locals 0

    .line 1417
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$7;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$7;->val$markerId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1419
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$7;->val$markerId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A marker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " its info window is clicked"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NiotronGoogleMaps"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$7;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$7;->val$markerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "InfoWindowClicked"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
