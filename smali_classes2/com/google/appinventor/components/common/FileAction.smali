.class public final enum Lcom/google/appinventor/components/common/FileAction;
.super Ljava/lang/Enum;
.source "FileAction.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/FileAction;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/FileAction;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PickDirectory:Lcom/google/appinventor/components/common/FileAction;

.field public static final enum PickExistingFile:Lcom/google/appinventor/components/common/FileAction;

.field public static final enum PickNewFile:Lcom/google/appinventor/components/common/FileAction;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 22
    new-instance v0, Lcom/google/appinventor/components/common/FileAction;

    const-string v1, "PickExistingFile"

    const/4 v2, 0x0

    const-string v3, "Pick Existing File"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/FileAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/FileAction;->PickExistingFile:Lcom/google/appinventor/components/common/FileAction;

    .line 27
    new-instance v1, Lcom/google/appinventor/components/common/FileAction;

    const-string v3, "PickNewFile"

    const/4 v4, 0x1

    const-string v5, "Pick New File"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/appinventor/components/common/FileAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/FileAction;->PickNewFile:Lcom/google/appinventor/components/common/FileAction;

    .line 32
    new-instance v3, Lcom/google/appinventor/components/common/FileAction;

    const-string v5, "PickDirectory"

    const/4 v6, 0x2

    const-string v7, "Pick Directory"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/appinventor/components/common/FileAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/FileAction;->PickDirectory:Lcom/google/appinventor/components/common/FileAction;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/appinventor/components/common/FileAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 17
    sput-object v5, Lcom/google/appinventor/components/common/FileAction;->$VALUES:[Lcom/google/appinventor/components/common/FileAction;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/FileAction;->LOOKUP:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/google/appinventor/components/common/FileAction;->values()[Lcom/google/appinventor/components/common/FileAction;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 38
    sget-object v4, Lcom/google/appinventor/components/common/FileAction;->LOOKUP:Ljava/util/Map;

    iget-object v5, v3, Lcom/google/appinventor/components/common/FileAction;->value:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/google/appinventor/components/common/FileAction;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileAction;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/appinventor/components/common/FileAction;->LOOKUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/FileAction;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileAction;
    .locals 1

    .line 17
    const-class v0, Lcom/google/appinventor/components/common/FileAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/FileAction;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/FileAction;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/appinventor/components/common/FileAction;->$VALUES:[Lcom/google/appinventor/components/common/FileAction;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/FileAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/FileAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileAction;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/common/FileAction;->value:Ljava/lang/String;

    return-object v0
.end method
