.class public final Lcom/instagram/filterkit/a/b;
.super Ljava/lang/Object;
.source "GlContext.java"


# instance fields
.field private final a:Lcom/instagram/filterkit/a/a;

.field private final b:Lcom/instagram/filterkit/d/c;

.field private final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/instagram/filterkit/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Lcom/instagram/filterkit/d/c;

    invoke-direct {v0, p1}, Lcom/instagram/filterkit/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/filterkit/a/b;->b:Lcom/instagram/filterkit/d/c;

    .line 25
    new-instance v0, Lcom/instagram/filterkit/a/a;

    invoke-direct {v0}, Lcom/instagram/filterkit/a/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/instagram/filterkit/a/b;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/filterkit/a/c;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;

    invoke-virtual {v0, p1}, Lcom/instagram/filterkit/a/a;->a(Lcom/instagram/filterkit/a/c;)V

    .line 45
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 46
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/instagram/filterkit/a/b;->d()V

    .line 48
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/instagram/filterkit/d/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->b:Lcom/instagram/filterkit/d/c;

    return-object v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->b:Lcom/instagram/filterkit/d/c;

    invoke-virtual {v0}, Lcom/instagram/filterkit/d/c;->b()V

    .line 57
    invoke-virtual {p0}, Lcom/instagram/filterkit/a/b;->e()V

    .line 58
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;

    invoke-virtual {v0}, Lcom/instagram/filterkit/a/a;->d()V

    .line 60
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 76
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;

    invoke-virtual {v0}, Lcom/instagram/filterkit/a/a;->a()V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;

    invoke-virtual {v0}, Lcom/instagram/filterkit/a/a;->b()V

    .line 92
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/filterkit/a/b;->a:Lcom/instagram/filterkit/a/a;

    invoke-virtual {v0}, Lcom/instagram/filterkit/a/a;->c()Z

    .line 97
    return-void
.end method
