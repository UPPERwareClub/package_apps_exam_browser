.class public Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;
.super Ljava/io/IOException;
.source "RequestTimeoutException.java"


# instance fields
.field final errorNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    const/16 v0, 0x45d

    .line 20
    iput v0, p0, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;->errorNumber:I

    return-void
.end method
