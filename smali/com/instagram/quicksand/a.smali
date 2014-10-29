.class public Lcom/instagram/quicksand/a;
.super Ljava/lang/Object;
.source "QuickSandSolverRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Lcom/instagram/quicksand/QuickSandSolverBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/instagram/quicksand/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/instagram/quicksand/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/instagram/quicksand/QuickSandSolverBridge;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/quicksand/QuickSandSolverBridge;-><init>(II)V

    iput-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;

    .line 29
    iput-object p1, p0, Lcom/instagram/quicksand/a;->d:Ljava/lang/Integer;

    .line 30
    iput-object p2, p0, Lcom/instagram/quicksand/a;->b:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/instagram/quicksand/a;->e:Ljava/lang/Integer;

    .line 32
    iput-object p3, p0, Lcom/instagram/quicksand/a;->f:Ljava/lang/Integer;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/quicksand/a;->g:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;

    .line 35
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    const-string v0, "-"

    invoke-static {v0}, Lcom/instagram/common/l/a/b;->a(Ljava/lang/String;)Lcom/instagram/common/l/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/common/l/a/b;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 89
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 92
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;

    invoke-virtual {v0}, Lcom/instagram/quicksand/QuickSandSolverBridge;->a()V

    .line 73
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/instagram/quicksand/a;->d:Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/quicksand/a;->g:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/quicksand/a;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 40
    iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;

    invoke-virtual {v0}, Lcom/instagram/quicksand/QuickSandSolverBridge;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;

    invoke-virtual {v0}, Lcom/instagram/quicksand/QuickSandSolverBridge;->c()V

    .line 43
    sget-boolean v0, Lcom/instagram/quicksand/a;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;

    invoke-virtual {v0}, Lcom/instagram/quicksand/QuickSandSolverBridge;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;

    iget-object v1, p0, Lcom/instagram/quicksand/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/quicksand/a;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/quicksand/QuickSandSolverBridge;->a(Ljava/lang/String;I)[I

    move-result-object v1

    .line 52
    array-length v0, v1

    iget-object v2, p0, Lcom/instagram/quicksand/a;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/instagram/quicksand/a;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 55
    aget v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_1
    invoke-static {v2}, Lcom/instagram/quicksand/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/quicksand/a;->b:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/instagram/quicksand/a;->g:Ljava/util/List;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/instagram/quicksand/a;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_2
    iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/quicksand/a;->c:Ljava/lang/Integer;

    goto :goto_2

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/instagram/quicksand/a;->h:Lcom/instagram/quicksand/QuickSandSolverBridge;

    invoke-virtual {v0}, Lcom/instagram/quicksand/QuickSandSolverBridge;->c()V

    .line 68
    :cond_4
    return-void
.end method
