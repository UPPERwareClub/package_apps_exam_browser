.class Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;
.super Ljava/lang/Object;
.source "NiotronGoogleMaps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->prepareFragmentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 656
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->-$$Nest$fgetmMapFragment(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/MapFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->-$$Nest$fgetform(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->-$$Nest$fgetviewLayout(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->-$$Nest$fgetmMapFragment(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/MapFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->-$$Nest$fgetMAP_FRAGMENT_TAG(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 669
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 672
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->-$$Nest$msetUpMapIfNeeded(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)V

    goto :goto_1

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
