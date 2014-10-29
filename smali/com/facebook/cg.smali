.class public final enum Lcom/facebook/cg;
.super Ljava/lang/Enum;
.source "SessionLoginBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/cg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/cg;

.field public static final enum b:Lcom/facebook/cg;

.field public static final enum c:Lcom/facebook/cg;

.field private static final synthetic f:[Lcom/facebook/cg;


# instance fields
.field private final d:Z

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31
    new-instance v0, Lcom/facebook/cg;

    const-string v1, "SSO_WITH_FALLBACK"

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/facebook/cg;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/cg;->a:Lcom/facebook/cg;

    .line 37
    new-instance v0, Lcom/facebook/cg;

    const-string v1, "SSO_ONLY"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/facebook/cg;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/cg;->b:Lcom/facebook/cg;

    .line 42
    new-instance v0, Lcom/facebook/cg;

    const-string v1, "SUPPRESS_SSO"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/facebook/cg;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/cg;->c:Lcom/facebook/cg;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/cg;

    sget-object v1, Lcom/facebook/cg;->a:Lcom/facebook/cg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/cg;->b:Lcom/facebook/cg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/cg;->c:Lcom/facebook/cg;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/cg;->f:[Lcom/facebook/cg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-boolean p3, p0, Lcom/facebook/cg;->d:Z

    .line 49
    iput-boolean p4, p0, Lcom/facebook/cg;->e:Z

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/cg;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/facebook/cg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/cg;

    return-object v0
.end method

.method public static values()[Lcom/facebook/cg;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/cg;->f:[Lcom/facebook/cg;

    invoke-virtual {v0}, [Lcom/facebook/cg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/cg;

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/facebook/cg;->d:Z

    return v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/facebook/cg;->e:Z

    return v0
.end method
