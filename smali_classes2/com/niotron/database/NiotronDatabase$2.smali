.class Lcom/niotron/database/NiotronDatabase$2;
.super Ljava/lang/Object;
.source "NiotronDatabase.java"

# interfaces
.implements Lcom/niotron/niotrondatabase/NiotronDB$OnGetAllRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/niotron/database/NiotronDatabase;->AddListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/niotron/database/NiotronDatabase;


# direct methods
.method constructor <init>(Lcom/niotron/database/NiotronDatabase;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/niotron/database/NiotronDatabase$2;->this$0:Lcom/niotron/database/NiotronDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase$2;->this$0:Lcom/niotron/database/NiotronDatabase;

    invoke-virtual {v0, p1}, Lcom/niotron/database/NiotronDatabase;->OnGotAllRecords(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase$2;->this$0:Lcom/niotron/database/NiotronDatabase;

    invoke-virtual {v0, p1}, Lcom/niotron/database/NiotronDatabase;->OnErrorGettingAllRecords(Ljava/lang/String;)V

    return-void
.end method
