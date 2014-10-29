.class public final Lcom/instagram/cliffjumper/edit/photo/lux/a;
.super Ljava/lang/Object;
.source "CdfManager.java"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/lux/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/CountDownLatch;

.field private c:Z

.field private d:I

.field private e:I

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x4080

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    .line 24
    iput v3, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I

    .line 25
    iput v3, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    .line 28
    iput v2, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->f:F

    .line 29
    iput v2, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->g:F

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/a;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->g:F

    return p1
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    return p1
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/a;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/lux/a;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->f:F

    return p1
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/lux/a;)I
    .locals 1
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    return v0
.end method

.method static synthetic d(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()F
    .locals 2

    .prologue
    const/high16 v0, -0x4080

    .line 115
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->f:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    .line 118
    :try_start_1
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :cond_0
    :try_start_2
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->f:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/instagram/cliffjumper/edit/photo/lux/c;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 36
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    if-eq v0, v4, :cond_0

    .line 37
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    .line 40
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c:Z

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I

    if-eq v0, v4, :cond_1

    .line 53
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->a(I)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    monitor-exit p0

    return-void

    .line 43
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/lux/b;

    invoke-direct {v0, p0, p2}, Lcom/instagram/cliffjumper/edit/photo/lux/b;-><init>(Lcom/instagram/cliffjumper/edit/photo/lux/a;Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public final declared-synchronized b()F
    .locals 2

    .prologue
    const/high16 v0, -0x4080

    .line 128
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->g:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    .line 131
    :try_start_1
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :cond_0
    :try_start_2
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->g:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final declared-synchronized b(Lcom/instagram/cliffjumper/edit/photo/lux/c;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 60
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    .line 64
    :try_start_1
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 66
    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->loadCDF(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I

    .line 67
    iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0
.end method
