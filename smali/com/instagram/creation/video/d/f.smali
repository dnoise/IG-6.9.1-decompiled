.class final Lcom/instagram/creation/video/d/f;
.super Lcom/instagram/creation/video/d/d;
.source "MediaPlayerManager.java"


# instance fields
.field final synthetic b:Lcom/instagram/creation/video/d/e;

.field private c:Lcom/instagram/creation/video/j/j;

.field private d:Lcom/instagram/creation/video/k/a;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/d/e;Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/k/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/d/d;-><init>(Lcom/instagram/creation/video/d/a;Lcom/instagram/creation/video/gl/j;)V

    .line 435
    new-instance v0, Lcom/instagram/creation/video/j/j;

    invoke-direct {v0}, Lcom/instagram/creation/video/j/j;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    .line 436
    iput-object p3, p0, Lcom/instagram/creation/video/d/f;->d:Lcom/instagram/creation/video/k/a;

    .line 437
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    invoke-virtual {p2, v0}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/p;)V

    .line 438
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    .line 482
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-object v1, v0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    invoke-virtual {v3}, Lcom/instagram/creation/video/j/j;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 485
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/j;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 487
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 488
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 497
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->b(Lcom/instagram/creation/video/d/e;)Z

    .line 498
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/instagram/creation/video/d/e;->b:Z

    .line 499
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->c(Lcom/instagram/creation/video/d/e;)Z

    .line 500
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->d(Lcom/instagram/creation/video/d/e;)I

    .line 501
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-object v0, v0, Lcom/instagram/creation/video/d/e;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/d/h;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/d/h;-><init>(Lcom/instagram/creation/video/d/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    :try_start_3
    const-string v2, "MediaPlayerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error during prepare: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-object v1, v0, Lcom/instagram/creation/video/d/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-boolean v0, v0, Lcom/instagram/creation/video/d/e;->b:Z

    if-nez v0, :cond_0

    .line 514
    monitor-exit v1

    .line 523
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/instagram/creation/video/d/e;->b:Z

    .line 519
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->a(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-static {v0}, Lcom/instagram/creation/video/d/e;->e(Lcom/instagram/creation/video/d/e;)Landroid/media/MediaPlayer;

    .line 523
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final H_()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->d:Lcom/instagram/creation/video/k/a;

    invoke-interface {v0}, Lcom/instagram/creation/video/k/a;->i()V

    .line 448
    invoke-virtual {p0}, Lcom/instagram/creation/video/d/f;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/gl/o;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(I)V

    .line 449
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/e;->r()V

    .line 450
    invoke-direct {p0}, Lcom/instagram/creation/video/d/f;->h()V

    .line 451
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    iget-object v1, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-object v1, v1, Lcom/instagram/creation/video/d/e;->e:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/j;->b(Lcom/instagram/creation/b/a/a;)V

    .line 452
    return-void
.end method

.method public final I_()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/instagram/creation/video/d/f;->i()V

    .line 457
    return-void
.end method

.method public final a()Lcom/instagram/creation/video/j/j;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    return-object v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/e;->r()V

    .line 462
    invoke-direct {p0}, Lcom/instagram/creation/video/d/f;->h()V

    .line 463
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    iget-object v0, v0, Lcom/instagram/creation/video/d/e;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/d/g;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/d/g;-><init>(Lcom/instagram/creation/video/d/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/instagram/creation/video/d/f;->c:Lcom/instagram/creation/video/j/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/j/j;->a(Z)V

    .line 474
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/instagram/creation/video/d/f;->i()V

    .line 479
    return-void
.end method
