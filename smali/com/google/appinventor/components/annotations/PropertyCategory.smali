.class public final enum Lcom/google/appinventor/components/annotations/PropertyCategory;
.super Ljava/lang/Enum;
.source "PropertyCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/annotations/PropertyCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum APPLICATION:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "BEHAVIOR"

    const/4 v2, 0x0

    const-string v3, "Behavior"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 29
    new-instance v1, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v3, "APPEARANCE"

    const/4 v4, 0x1

    const-string v5, "Appearance"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 34
    new-instance v3, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v5, "DEPRECATED"

    const/4 v6, 0x2

    const-string v7, "Deprecated"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/annotations/PropertyCategory;->DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 40
    new-instance v5, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v7, "UNSET"

    const/4 v8, 0x3

    const-string v9, "Unspecified"

    invoke-direct {v5, v7, v8, v9}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/annotations/PropertyCategory;->UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 47
    new-instance v7, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v9, "APPLICATION"

    const/4 v10, 0x4

    const-string v11, "Application"

    invoke-direct {v7, v9, v10, v11}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPLICATION:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 55
    new-instance v9, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v11, "ADVANCED"

    const/4 v12, 0x5

    const-string v13, "Advanced"

    invoke-direct {v9, v11, v12, v13}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 57
    new-instance v11, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v13, "GENERAL"

    const/4 v14, 0x6

    const-string v15, "General"

    invoke-direct {v11, v13, v14, v15}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 59
    new-instance v13, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v15, "THEMING"

    const/4 v14, 0x7

    const-string v12, "Theming"

    invoke-direct {v13, v15, v14, v12}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 60
    new-instance v12, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v15, "PRIVACY"

    const/16 v14, 0x8

    const-string v10, "Privacy"

    invoke-direct {v12, v15, v14, v10}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/google/appinventor/components/annotations/PropertyCategory;->PRIVACY:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 61
    new-instance v10, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v15, "CREDENTIALS"

    const/16 v14, 0x9

    const-string v8, "Credentials"

    invoke-direct {v10, v15, v14, v8}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 63
    new-instance v8, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v15, "PUBLISHING"

    const/16 v14, 0xa

    const-string v6, "Publishing"

    invoke-direct {v8, v15, v14, v6}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/appinventor/components/annotations/PropertyCategory;->PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    .line 13
    sput-object v6, Lcom/google/appinventor/components/annotations/PropertyCategory;->$VALUES:[Lcom/google/appinventor/components/annotations/PropertyCategory;

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

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1

    .line 13
    const-class v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->$VALUES:[Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/annotations/PropertyCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->name:Ljava/lang/String;

    return-object v0
.end method
