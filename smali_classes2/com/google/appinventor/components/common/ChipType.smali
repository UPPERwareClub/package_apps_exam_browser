.class public final enum Lcom/google/appinventor/components/common/ChipType;
.super Ljava/lang/Enum;
.source "ChipType.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ChipType;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/ChipType;

.field public static final enum Action:Lcom/google/appinventor/components/common/ChipType;

.field public static final enum Choice:Lcom/google/appinventor/components/common/ChipType;

.field public static final enum Entry:Lcom/google/appinventor/components/common/ChipType;

.field public static final enum Filter:Lcom/google/appinventor/components/common/ChipType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/ChipType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 7
    new-instance v0, Lcom/google/appinventor/components/common/ChipType;

    const-string v1, "Choice"

    const/4 v2, 0x0

    const-string v3, "choice"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ChipType;->Choice:Lcom/google/appinventor/components/common/ChipType;

    .line 8
    new-instance v1, Lcom/google/appinventor/components/common/ChipType;

    const-string v3, "Action"

    const/4 v4, 0x1

    const-string v5, "action"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/appinventor/components/common/ChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/ChipType;->Action:Lcom/google/appinventor/components/common/ChipType;

    .line 9
    new-instance v3, Lcom/google/appinventor/components/common/ChipType;

    const-string v5, "Entry"

    const/4 v6, 0x2

    const-string v7, "entry"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/appinventor/components/common/ChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/ChipType;->Entry:Lcom/google/appinventor/components/common/ChipType;

    .line 10
    new-instance v5, Lcom/google/appinventor/components/common/ChipType;

    const-string v7, "Filter"

    const/4 v8, 0x3

    const-string v9, "filter"

    invoke-direct {v5, v7, v8, v9}, Lcom/google/appinventor/components/common/ChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/ChipType;->Filter:Lcom/google/appinventor/components/common/ChipType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/appinventor/components/common/ChipType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 6
    sput-object v7, Lcom/google/appinventor/components/common/ChipType;->$VALUES:[Lcom/google/appinventor/components/common/ChipType;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ChipType;->lookup:Ljava/util/Map;

    .line 21
    invoke-static {}, Lcom/google/appinventor/components/common/ChipType;->values()[Lcom/google/appinventor/components/common/ChipType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 22
    sget-object v4, Lcom/google/appinventor/components/common/ChipType;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ChipType;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/google/appinventor/components/common/ChipType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ChipType;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/appinventor/components/common/ChipType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ChipType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ChipType;
    .locals 1

    .line 6
    const-class v0, Lcom/google/appinventor/components/common/ChipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ChipType;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ChipType;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/appinventor/components/common/ChipType;->$VALUES:[Lcom/google/appinventor/components/common/ChipType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ChipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ChipType;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ChipType;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/appinventor/components/common/ChipType;->value:Ljava/lang/String;

    return-object v0
.end method
