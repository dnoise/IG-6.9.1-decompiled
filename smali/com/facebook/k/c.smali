.class final enum Lcom/facebook/k/c;
.super Ljava/lang/Enum;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/k/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/k/c;

.field public static final enum b:Lcom/facebook/k/c;

.field public static final enum c:Lcom/facebook/k/c;

.field private static final synthetic d:[Lcom/facebook/k/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/facebook/k/c;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/k/c;->a:Lcom/facebook/k/c;

    .line 58
    new-instance v0, Lcom/facebook/k/c;

    const-string v1, "FATAL"

    invoke-direct {v0, v1, v3}, Lcom/facebook/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/k/c;->b:Lcom/facebook/k/c;

    .line 59
    new-instance v0, Lcom/facebook/k/c;

    const-string v1, "RETRY"

    invoke-direct {v0, v1, v4}, Lcom/facebook/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/k/c;->c:Lcom/facebook/k/c;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/k/c;

    sget-object v1, Lcom/facebook/k/c;->a:Lcom/facebook/k/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/k/c;->b:Lcom/facebook/k/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/k/c;->c:Lcom/facebook/k/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/k/c;->d:[Lcom/facebook/k/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/k/c;
    .locals 1
    .parameter "name"

    .prologue
    .line 56
    const-class v0, Lcom/facebook/k/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/k/c;

    return-object v0
.end method

.method public static values()[Lcom/facebook/k/c;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/k/c;->d:[Lcom/facebook/k/c;

    invoke-virtual {v0}, [Lcom/facebook/k/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/k/c;

    return-object v0
.end method
