.class final Lcom/google/common/hash/Hashing$Crc32cMethodHandles;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Crc32cMethodHandles"
.end annotation


# static fields
.field private static final CONSTRUCTOR:Ljava/lang/invoke/MethodHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 515
    invoke-static {}, Lcom/google/common/hash/Hashing$Crc32cMethodHandles;->crc32cConstructor()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing$Crc32cMethodHandles;->CONSTRUCTOR:Ljava/lang/invoke/MethodHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crc32cConstructor()Ljava/lang/invoke/MethodHandle;
    .locals 3

    :try_start_0
    const-string v0, "java.util.zip.CRC32C"

    .line 530
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 538
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 539
    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    const-class v1, Ljava/util/zip/Checksum;

    .line 540
    invoke-static {v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 549
    invoke-static {v0}, Lcom/google/common/hash/Hashing$Crc32cMethodHandles;->newLinkageError(Ljava/lang/Throwable;)Ljava/lang/LinkageError;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 546
    invoke-static {v0}, Lcom/google/common/hash/Hashing$Crc32cMethodHandles;->newLinkageError(Ljava/lang/Throwable;)Ljava/lang/LinkageError;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    .line 543
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static newCrc32c()Ljava/util/zip/Checksum;
    .locals 1

    .line 520
    :try_start_0
    sget-object v0, Lcom/google/common/hash/Hashing$Crc32cMethodHandles;->CONSTRUCTOR:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/zip/Checksum;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 522
    invoke-static {v0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 524
    invoke-static {v0}, Lcom/google/common/hash/Hashing$Crc32cMethodHandles;->newLinkageError(Ljava/lang/Throwable;)Ljava/lang/LinkageError;

    move-result-object v0

    throw v0
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

    .line 554
    new-instance v0, Ljava/lang/LinkageError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
