.class public Lcom/instagram/filterkit/c/e;
.super Ljava/lang/Object;
.source "SingleThreadRenderManager.java"

# interfaces
.implements Lcom/instagram/filterkit/c/c;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/instagram/filterkit/c/d;

.field private final c:Lcom/instagram/filterkit/a/c;

.field private final d:Lcom/instagram/filterkit/c/b;

.field private final e:Lcom/instagram/filterkit/a/b;

.field private final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/instagram/filterkit/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Object;

.field private volatile i:Lcom/instagram/filterkit/c/h;

.field private volatile j:Lcom/instagram/filterkit/filter/IgFilter;

.field private volatile k:Lcom/instagram/filterkit/e/a;

.field private volatile l:Lcom/instagram/filterkit/e/c;

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/instagram/filterkit/c/e;

    sput-object v0, Lcom/instagram/filterkit/c/e;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/filterkit/a/c;Lcom/instagram/filterkit/c/b;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/instagram/filterkit/c/g;

    invoke-direct {v0, p0, v1}, Lcom/instagram/filterkit/c/g;-><init>(Lcom/instagram/filterkit/c/e;B)V

    iput-object v0, p0, Lcom/instagram/filterkit/c/e;->b:Lcom/instagram/filterkit/c/d;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/c/e;->f:Ljava/util/Queue;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/c/e;->g:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/c/e;->h:Ljava/lang/Object;

    .line 40
    iput-boolean v1, p0, Lcom/instagram/filterkit/c/e;->m:Z

    .line 45
    iput-object p2, p0, Lcom/instagram/filterkit/c/e;->c:Lcom/instagram/filterkit/a/c;

    .line 46
    iput-object p3, p0, Lcom/instagram/filterkit/c/e;->d:Lcom/instagram/filterkit/c/b;

    .line 48
    new-instance v0, Lcom/instagram/filterkit/a/b;

    invoke-direct {v0, p1}, Lcom/instagram/filterkit/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/filterkit/c/e;->e:Lcom/instagram/filterkit/a/b;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->e:Lcom/instagram/filterkit/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/filterkit/c/e;Lcom/instagram/filterkit/e/a;)Lcom/instagram/filterkit/e/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/instagram/filterkit/c/e;->k:Lcom/instagram/filterkit/e/a;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/filterkit/c/e;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/instagram/filterkit/c/e;->l:Lcom/instagram/filterkit/e/c;

    return-object p1
.end method

.method static synthetic b(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/c;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->c:Lcom/instagram/filterkit/a/c;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/e/a;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->k:Lcom/instagram/filterkit/e/a;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->d:Lcom/instagram/filterkit/c/b;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/instagram/filterkit/c/e;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/filterkit/c/e;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->g:Ljava/util/List;

    return-object v0
.end method

.method private f()Lcom/instagram/filterkit/c/h;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->i:Lcom/instagram/filterkit/c/h;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/instagram/filterkit/c/h;

    invoke-direct {v0, p0}, Lcom/instagram/filterkit/c/h;-><init>(Lcom/instagram/filterkit/c/e;)V

    iput-object v0, p0, Lcom/instagram/filterkit/c/e;->i:Lcom/instagram/filterkit/c/h;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->i:Lcom/instagram/filterkit/c/h;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/h;
    .locals 1
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/filterkit/c/e;->i:Lcom/instagram/filterkit/c/h;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/filterkit/c/e;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->f:Ljava/util/Queue;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->f()Lcom/instagram/filterkit/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/filterkit/c/h;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->f()Lcom/instagram/filterkit/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/filterkit/c/h;->start()V

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->f()Lcom/instagram/filterkit/c/h;

    move-result-object v1

    monitor-enter v1

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->f()Lcom/instagram/filterkit/c/h;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/filterkit/c/h;->a(Lcom/instagram/filterkit/c/h;)Z

    .line 101
    invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->f()Lcom/instagram/filterkit/c/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 102
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h(Lcom/instagram/filterkit/c/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/instagram/filterkit/c/e;->m:Z

    return v0
.end method

.method static synthetic i(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/e/c;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->l:Lcom/instagram/filterkit/e/c;

    return-object v0
.end method

.method static synthetic j(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/filter/IgFilter;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->j:Lcom/instagram/filterkit/filter/IgFilter;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/filterkit/c/e;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->h:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->f:Ljava/util/Queue;

    iget-object v1, p0, Lcom/instagram/filterkit/c/e;->b:Lcom/instagram/filterkit/c/d;

    invoke-interface {v0, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->b:Lcom/instagram/filterkit/c/d;

    invoke-virtual {p0, v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/d;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/filterkit/c/d;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 89
    iget-boolean v0, p0, Lcom/instagram/filterkit/c/e;->m:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "requestRender called after requestDestroy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->g()V

    .line 93
    return-void
.end method

.method public final a(Lcom/instagram/filterkit/e/c;)V
    .locals 3
    .parameter

    .prologue
    .line 69
    iget-object v1, p0, Lcom/instagram/filterkit/c/e;->g:Ljava/util/List;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->g:Ljava/util/List;

    new-instance v2, Lcom/instagram/filterkit/c/f;

    invoke-direct {v2, p0, p1}, Lcom/instagram/filterkit/c/f;-><init>(Lcom/instagram/filterkit/c/e;Lcom/instagram/filterkit/e/c;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/instagram/filterkit/filter/IgFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/instagram/filterkit/c/e;->j:Lcom/instagram/filterkit/filter/IgFilter;

    .line 54
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/instagram/filterkit/c/e;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/instagram/filterkit/c/e;->m:Z

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->g()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/filterkit/c/e;->i:Lcom/instagram/filterkit/c/h;

    .line 112
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/instagram/filterkit/c/e;->m:Z

    return v0
.end method

.method public final d()Lcom/instagram/filterkit/a/b;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/instagram/filterkit/c/e;->e:Lcom/instagram/filterkit/a/b;

    return-object v0
.end method
