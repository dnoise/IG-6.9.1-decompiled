.class public final enum Lcom/facebook/e/c/i;
.super Ljava/lang/Enum;
.source "TraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/e/c/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/e/c/i;

.field public static final enum b:Lcom/facebook/e/c/i;

.field public static final enum c:Lcom/facebook/e/c/i;

.field public static final enum d:Lcom/facebook/e/c/i;

.field public static final enum e:Lcom/facebook/e/c/i;

.field public static final enum f:Lcom/facebook/e/c/i;

.field private static final synthetic g:[Lcom/facebook/e/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/facebook/e/c/i;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/facebook/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/e/c/i;->a:Lcom/facebook/e/c/i;

    .line 23
    new-instance v0, Lcom/facebook/e/c/i;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/facebook/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/e/c/i;->b:Lcom/facebook/e/c/i;

    .line 24
    new-instance v0, Lcom/facebook/e/c/i;

    const-string v1, "START_ASYNC"

    invoke-direct {v0, v1, v5}, Lcom/facebook/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/e/c/i;->c:Lcom/facebook/e/c/i;

    .line 25
    new-instance v0, Lcom/facebook/e/c/i;

    const-string v1, "STOP_ASYNC"

    invoke-direct {v0, v1, v6}, Lcom/facebook/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/e/c/i;->d:Lcom/facebook/e/c/i;

    .line 26
    new-instance v0, Lcom/facebook/e/c/i;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v7}, Lcom/facebook/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/e/c/i;->e:Lcom/facebook/e/c/i;

    .line 27
    new-instance v0, Lcom/facebook/e/c/i;

    const-string v1, "SPAWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/e/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/e/c/i;->f:Lcom/facebook/e/c/i;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/e/c/i;

    sget-object v1, Lcom/facebook/e/c/i;->a:Lcom/facebook/e/c/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/e/c/i;->b:Lcom/facebook/e/c/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/e/c/i;->c:Lcom/facebook/e/c/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/e/c/i;->d:Lcom/facebook/e/c/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/e/c/i;->e:Lcom/facebook/e/c/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/e/c/i;->f:Lcom/facebook/e/c/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/e/c/i;->g:[Lcom/facebook/e/c/i;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/e/c/i;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/facebook/e/c/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/c/i;

    return-object v0
.end method

.method public static values()[Lcom/facebook/e/c/i;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/e/c/i;->g:[Lcom/facebook/e/c/i;

    invoke-virtual {v0}, [Lcom/facebook/e/c/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/e/c/i;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/facebook/e/c/i;->a:Lcom/facebook/e/c/i;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/e/c/i;->c:Lcom/facebook/e/c/i;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/facebook/e/c/i;->b:Lcom/facebook/e/c/i;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/e/c/i;->d:Lcom/facebook/e/c/i;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
