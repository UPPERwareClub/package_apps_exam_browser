.class Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader$1;
.super Ljava/lang/Object;
.source "NiotronAsynchronousImageLoader.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;->LoadImage(Lcom/google/appinventor/components/runtime/Image;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;->ImageFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;->ImageLoaded(Ljava/lang/String;)V

    return-void
.end method
