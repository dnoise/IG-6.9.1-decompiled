.class public final enum Lcom/instagram/common/u/b/g;
.super Ljava/lang/Enum;
.source "PushDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/common/u/b/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/common/u/b/g;

.field public static final enum b:Lcom/instagram/common/u/b/g;

.field public static final enum c:Lcom/instagram/common/u/b/g;

.field private static final synthetic e:[Lcom/instagram/common/u/b/g;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/instagram/common/u/b/g;

    const-string v1, "AMAZON"

    const-string v2, "android_adm"

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/common/u/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/common/u/b/g;->a:Lcom/instagram/common/u/b/g;

    .line 7
    new-instance v0, Lcom/instagram/common/u/b/g;

    const-string v1, "GCM"

    const-string v2, "android_gcm"

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/common/u/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/common/u/b/g;->b:Lcom/instagram/common/u/b/g;

    .line 8
    new-instance v0, Lcom/instagram/common/u/b/g;

    const-string v1, "NOKIA"

    const-string v2, "android_nokia"

    invoke-direct {v0, v1, v5, v2}, Lcom/instagram/common/u/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/common/u/b/g;->c:Lcom/instagram/common/u/b/g;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/common/u/b/g;

    sget-object v1, Lcom/instagram/common/u/b/g;->a:Lcom/instagram/common/u/b/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/common/u/b/g;->b:Lcom/instagram/common/u/b/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/common/u/b/g;->c:Lcom/instagram/common/u/b/g;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/common/u/b/g;->e:[Lcom/instagram/common/u/b/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/instagram/common/u/b/g;->d:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/common/u/b/g;
    .locals 1
    .parameter "name"

    .prologue
    .line 5
    const-class v0, Lcom/instagram/common/u/b/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/u/b/g;

    return-object v0
.end method

.method public static values()[Lcom/instagram/common/u/b/g;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/instagram/common/u/b/g;->e:[Lcom/instagram/common/u/b/g;

    invoke-virtual {v0}, [Lcom/instagram/common/u/b/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/common/u/b/g;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/common/u/b/g;->d:Ljava/lang/String;

    return-object v0
.end method
