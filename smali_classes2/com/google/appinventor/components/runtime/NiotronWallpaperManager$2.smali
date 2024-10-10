.class Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;
.super Ljava/lang/Thread;
.source "NiotronWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->SetWallpaper(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->highQuality:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getHighQualityImage(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 87
    :goto_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->scrollable:Z

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->manager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getBuiltInDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->manager:Landroid/app/WallpaperManager;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 91
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 92
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v3, 0x1

    .line 93
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->manager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->val$path:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Image"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
