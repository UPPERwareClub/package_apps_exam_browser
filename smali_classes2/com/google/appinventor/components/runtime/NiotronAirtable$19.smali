.class Lcom/google/appinventor/components/runtime/NiotronAirtable$19;
.super Ljava/lang/Object;
.source "NiotronAirtable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->getRow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic val$responseCode:I

.field final synthetic val$row:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;ILjava/util/List;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$19;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$19;->val$responseCode:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$19;->val$row:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$19;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$19;->val$responseCode:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$19;->val$row:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->GotRow(ILjava/util/List;)V

    return-void
.end method
