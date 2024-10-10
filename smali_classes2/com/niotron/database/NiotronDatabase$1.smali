.class Lcom/niotron/database/NiotronDatabase$1;
.super Ljava/lang/Object;
.source "NiotronDatabase.java"

# interfaces
.implements Lcom/niotron/niotrondatabase/NiotronDB$OnDataChangeListener;


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

    .line 47
    iput-object p1, p0, Lcom/niotron/database/NiotronDatabase$1;->this$0:Lcom/niotron/database/NiotronDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase$1;->this$0:Lcom/niotron/database/NiotronDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/niotron/database/NiotronDatabase;->OnDataAdded(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataRemove(Ljava/lang/String;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/niotron/database/NiotronDatabase$1;->this$0:Lcom/niotron/database/NiotronDatabase;

    invoke-virtual {v0, p1}, Lcom/niotron/database/NiotronDatabase;->OnDataRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
