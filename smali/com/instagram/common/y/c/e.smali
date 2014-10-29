.class public final Lcom/instagram/common/y/c/e;
.super Ljava/lang/Object;
.source "SerialExecutor.java"


# instance fields
.field private final a:Lcom/instagram/common/y/b/a;

.field private final b:Lcom/facebook/d/b/b;

.field private final c:Ljava/util/concurrent/Executor;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method private constructor <init>(Lcom/instagram/common/y/b/a;Lcom/facebook/d/b/b;Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/instagram/common/y/c/e;->a:Lcom/instagram/common/y/b/a;

    .line 50
    iput-object p2, p0, Lcom/instagram/common/y/c/e;->b:Lcom/facebook/d/b/b;

    .line 51
    iput-object p3, p0, Lcom/instagram/common/y/c/e;->c:Ljava/util/concurrent/Executor;

    .line 52
    iput v0, p0, Lcom/instagram/common/y/c/e;->e:I

    .line 53
    iput v0, p0, Lcom/instagram/common/y/c/e;->f:I

    .line 54
    iput v0, p0, Lcom/instagram/common/y/c/e;->g:I

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/y/c/e;)Lcom/instagram/common/y/b/a;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/common/y/c/e;->a:Lcom/instagram/common/y/b/a;

    return-object v0
.end method

.method public static a()Lcom/instagram/common/y/c/e;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/instagram/common/y/c/e;

    invoke-static {}, Lcom/instagram/common/y/b/a;->a()Lcom/instagram/common/y/b/a;

    move-result-object v1

    invoke-static {}, Lcom/instagram/common/i/c;->a()Lcom/facebook/d/b/b;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/common/y/c/e;-><init>(Lcom/instagram/common/y/b/a;Lcom/facebook/d/b/b;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/common/y/c/e;)Lcom/facebook/d/b/b;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/common/y/c/e;->b:Lcom/facebook/d/b/b;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/common/y/c/e;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/common/y/c/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/common/y/c/e;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/common/y/c/e;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/common/y/c/e;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/instagram/common/y/c/e;->e:I

    return v0
.end method

.method static synthetic f(Lcom/instagram/common/y/c/e;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/instagram/common/y/c/e;->f:I

    return v0
.end method

.method static synthetic g(Lcom/instagram/common/y/c/e;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/instagram/common/y/c/e;->g:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/instagram/common/y/c/e;
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/instagram/common/y/c/e;->d:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public final b()Lcom/instagram/common/y/c/e;
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x2710

    iput v0, p0, Lcom/instagram/common/y/c/e;->g:I

    .line 83
    return-object p0
.end method

.method public final c()Lcom/instagram/common/y/c/d;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/instagram/common/y/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/common/y/c/d;-><init>(Lcom/instagram/common/y/c/e;B)V

    return-object v0
.end method
