.class public final enum Lcom/google/appinventor/components/common/SidebarDirection;
.super Ljava/lang/Enum;
.source "SidebarDirection.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/SidebarDirection;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/SidebarDirection;

.field public static final enum Left:Lcom/google/appinventor/components/common/SidebarDirection;

.field public static final enum Right:Lcom/google/appinventor/components/common/SidebarDirection;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/SidebarDirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/google/appinventor/components/common/SidebarDirection;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/google/appinventor/components/common/SidebarDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/SidebarDirection;->Left:Lcom/google/appinventor/components/common/SidebarDirection;

    .line 8
    new-instance v1, Lcom/google/appinventor/components/common/SidebarDirection;

    const-string v3, "Right"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/google/appinventor/components/common/SidebarDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/SidebarDirection;->Right:Lcom/google/appinventor/components/common/SidebarDirection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/appinventor/components/common/SidebarDirection;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 6
    sput-object v3, Lcom/google/appinventor/components/common/SidebarDirection;->$VALUES:[Lcom/google/appinventor/components/common/SidebarDirection;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/SidebarDirection;->lookup:Ljava/util/Map;

    .line 18
    invoke-static {}, Lcom/google/appinventor/components/common/SidebarDirection;->values()[Lcom/google/appinventor/components/common/SidebarDirection;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 19
    sget-object v4, Lcom/google/appinventor/components/common/SidebarDirection;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/SidebarDirection;->toUnderlyingValue()Ljava/lang/String;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/google/appinventor/components/common/SidebarDirection;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/SidebarDirection;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/appinventor/components/common/SidebarDirection;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/SidebarDirection;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/SidebarDirection;
    .locals 1

    .line 6
    const-class v0, Lcom/google/appinventor/components/common/SidebarDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/SidebarDirection;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/SidebarDirection;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/appinventor/components/common/SidebarDirection;->$VALUES:[Lcom/google/appinventor/components/common/SidebarDirection;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/SidebarDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/SidebarDirection;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/SidebarDirection;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/appinventor/components/common/SidebarDirection;->value:Ljava/lang/String;

    return-object v0
.end method
