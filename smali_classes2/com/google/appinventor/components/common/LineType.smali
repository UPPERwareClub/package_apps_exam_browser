.class public final enum Lcom/google/appinventor/components/common/LineType;
.super Ljava/lang/Enum;
.source "LineType.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/LineType;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/LineType;

.field public static final enum Curved:Lcom/google/appinventor/components/common/LineType;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/LineType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Linear:Lcom/google/appinventor/components/common/LineType;

.field public static final enum Stepped:Lcom/google/appinventor/components/common/LineType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/google/appinventor/components/common/LineType;

    const-string v1, "Linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/appinventor/components/common/LineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/LineType;->Linear:Lcom/google/appinventor/components/common/LineType;

    .line 13
    new-instance v1, Lcom/google/appinventor/components/common/LineType;

    const-string v3, "Curved"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/appinventor/components/common/LineType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/appinventor/components/common/LineType;->Curved:Lcom/google/appinventor/components/common/LineType;

    .line 14
    new-instance v3, Lcom/google/appinventor/components/common/LineType;

    const-string v5, "Stepped"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/appinventor/components/common/LineType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/appinventor/components/common/LineType;->Stepped:Lcom/google/appinventor/components/common/LineType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/appinventor/components/common/LineType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 11
    sput-object v5, Lcom/google/appinventor/components/common/LineType;->$VALUES:[Lcom/google/appinventor/components/common/LineType;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/LineType;->LOOKUP:Ljava/util/Map;

    .line 19
    invoke-static {}, Lcom/google/appinventor/components/common/LineType;->values()[Lcom/google/appinventor/components/common/LineType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 20
    sget-object v4, Lcom/google/appinventor/components/common/LineType;->LOOKUP:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/LineType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/google/appinventor/components/common/LineType;->value:I

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/LineType;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/appinventor/components/common/LineType;->LOOKUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/LineType;

    return-object p0
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/LineType;
    .locals 0

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/common/LineType;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/LineType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/LineType;
    .locals 1

    .line 11
    const-class v0, Lcom/google/appinventor/components/common/LineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/LineType;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/LineType;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/appinventor/components/common/LineType;->$VALUES:[Lcom/google/appinventor/components/common/LineType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/LineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/LineType;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/appinventor/components/common/LineType;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/LineType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
