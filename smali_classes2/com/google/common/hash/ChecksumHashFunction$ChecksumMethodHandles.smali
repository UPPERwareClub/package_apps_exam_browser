.class final Lcom/google/common/hash/ChecksumHashFunction$ChecksumMethodHandles;
.super Ljava/lang/Object;
.source "ChecksumHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/ChecksumHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChecksumMethodHandles"
.end annotation


# static fields
.field private static final UPDATE_BB:Ljava/lang/invoke/MethodHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    invoke-static {}, Lcom/google/common/hash/ChecksumHashFunction$ChecksumMethodHandles;->updateByteBuffer()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/ChecksumHashFunction$ChecksumMethodHandles;->UPDATE_BB:Ljava/lang/invoke/MethodHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static newLinkageError(Ljava/lang/Throwable;)Ljava/lang/LinkageError;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/lang/LinkageError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static updateByteBuffer()Ljava/lang/invoke/MethodHandle;
    .locals 5

    :try_start_0
    const-string v0, "java.util.zip.Checksum"

    .line 130
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 131
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    const-string v2, "update"

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/nio/ByteBuffer;

    .line 132
    invoke-static {v3, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    :catch_1
    move-exception v0

    .line 137
    invoke-static {v0}, Lcom/google/common/hash/ChecksumHashFunction$ChecksumMethodHandles;->newLinkageError(Ljava/lang/Throwable;)Ljava/lang/LinkageError;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static updateByteBuffer(Ljava/util/zip/Checksum;Ljava/nio/ByteBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cs",
            "bb"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/google/common/hash/ChecksumHashFunction$ChecksumMethodHandles;->UPDATE_BB:Ljava/lang/invoke/MethodHandle;

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/zip/Checksum;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 120
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_0
    move-exception p0

    .line 118
    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
