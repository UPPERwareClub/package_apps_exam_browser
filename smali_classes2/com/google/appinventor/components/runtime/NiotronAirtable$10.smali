.class Lcom/google/appinventor/components/runtime/NiotronAirtable$10;
.super Ljava/lang/Object;
.source "NiotronAirtable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->createRow(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic val$responseCode:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;I)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->val$responseCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$10;->val$responseCode:I

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->RowCreated(I)V

    return-void
.end method
