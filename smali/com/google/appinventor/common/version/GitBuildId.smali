.class public final Lcom/google/appinventor/common/version/GitBuildId;
.super Ljava/lang/Object;
.source "GitBuildId.java"


# static fields
.field public static final ACRA_URI:Ljava/lang/String; = "${acra.uri}"

.field public static final ANT_BUILD_DATE:Ljava/lang/String; = "September 7 2024"

.field public static final GIT_BUILD_FINGERPRINT:Ljava/lang/String; = "d702ed1f6ce4b18ea2ea8aaa576fdd1cee927d5f"

.field public static final GIT_BUILD_VERSION:Ljava/lang/String; = "v185a-2599-gd702ed1f6"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAcraUri()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getDate()Ljava/lang/String;
    .locals 1

    const-string v0, "September 7 2024"

    return-object v0
.end method

.method public static getFingerprint()Ljava/lang/String;
    .locals 1

    const-string v0, "d702ed1f6ce4b18ea2ea8aaa576fdd1cee927d5f"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "v185a-2599-gd702ed1f6"

    const-string v1, ""

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "none"

    return-object v0
.end method
