.class public final enum Lcom/facebook/ch;
.super Ljava/lang/Enum;
.source "SessionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ch;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ch;

.field public static final enum b:Lcom/facebook/ch;

.field public static final enum c:Lcom/facebook/ch;

.field public static final enum d:Lcom/facebook/ch;

.field public static final enum e:Lcom/facebook/ch;

.field public static final enum f:Lcom/facebook/ch;

.field public static final enum g:Lcom/facebook/ch;

.field private static final synthetic i:[Lcom/facebook/ch;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/facebook/ch;

    const-string v1, "CREATED"

    sget v2, Lcom/facebook/ci;->a:I

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ch;->a:Lcom/facebook/ch;

    .line 47
    new-instance v0, Lcom/facebook/ch;

    const-string v1, "CREATED_TOKEN_LOADED"

    sget v2, Lcom/facebook/ci;->a:I

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/ch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ch;->b:Lcom/facebook/ch;

    .line 52
    new-instance v0, Lcom/facebook/ch;

    const-string v1, "OPENING"

    sget v2, Lcom/facebook/ci;->a:I

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/ch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ch;->c:Lcom/facebook/ch;

    .line 58
    new-instance v0, Lcom/facebook/ch;

    const-string v1, "OPENED"

    sget v2, Lcom/facebook/ci;->b:I

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/ch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ch;->d:Lcom/facebook/ch;

    .line 70
    new-instance v0, Lcom/facebook/ch;

    const-string v1, "OPENED_TOKEN_UPDATED"

    sget v2, Lcom/facebook/ci;->b:I

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/ch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ch;->e:Lcom/facebook/ch;

    .line 78
    new-instance v0, Lcom/facebook/ch;

    const-string v1, "CLOSED_LOGIN_FAILED"

    const/4 v2, 0x5

    sget v3, Lcom/facebook/ci;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ch;->f:Lcom/facebook/ch;

    .line 83
    new-instance v0, Lcom/facebook/ch;

    const-string v1, "CLOSED"

    const/4 v2, 0x6

    sget v3, Lcom/facebook/ci;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ch;->g:Lcom/facebook/ch;

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/ch;

    sget-object v1, Lcom/facebook/ch;->a:Lcom/facebook/ch;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ch;->b:Lcom/facebook/ch;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ch;->c:Lcom/facebook/ch;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ch;->d:Lcom/facebook/ch;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ch;->e:Lcom/facebook/ch;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/ch;->f:Lcom/facebook/ch;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ch;->g:Lcom/facebook/ch;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ch;->i:[Lcom/facebook/ch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lcom/facebook/ch;->h:I

    .line 89
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ch;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/facebook/ch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ch;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ch;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/ch;->i:[Lcom/facebook/ch;

    invoke-virtual {v0}, [Lcom/facebook/ch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ch;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/facebook/ch;->h:I

    sget v1, Lcom/facebook/ci;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/facebook/ch;->h:I

    sget v1, Lcom/facebook/ci;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
