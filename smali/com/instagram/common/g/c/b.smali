.class final Lcom/instagram/common/g/c/b;
.super Ljava/lang/Object;
.source "IgVideoCache.java"

# interfaces
.implements Lcom/instagram/common/m/b;


# instance fields
.field final synthetic a:Lcom/instagram/common/g/c/a;

.field private final b:Lcom/instagram/common/g/a/g;

.field private c:I

.field private d:J

.field private e:Z

.field private f:Lcom/c/a/d;

.field private g:Ljava/io/BufferedOutputStream;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/common/g/c/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/instagram/common/g/c/a;Lcom/instagram/common/g/a/g;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/instagram/common/g/c/b;->a:Lcom/instagram/common/g/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/g/c/b;->e:Z

    .line 396
    iput-object p2, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    .line 397
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/g/c/b;)Lcom/instagram/common/g/a/g;
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/common/g/c/b;Lcom/instagram/common/g/c/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/instagram/common/g/c/b;->a(Lcom/instagram/common/g/c/d;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/instagram/common/g/c/d;)V
    .locals 2
    .parameter

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->a:Lcom/instagram/common/g/c/a;

    iget-object v1, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    invoke-virtual {v1}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/g/c/a;->a(Lcom/instagram/common/g/c/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-interface {p1}, Lcom/instagram/common/g/c/d;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :goto_0
    monitor-exit p0

    return-void

    .line 407
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->h:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/c/b;->h:Ljava/util/Set;

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-interface {p1}, Lcom/instagram/common/g/c/d;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/instagram/common/g/c/b;Lcom/instagram/common/g/c/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/instagram/common/g/c/b;->b(Lcom/instagram/common/g/c/d;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/instagram/common/g/c/d;)V
    .locals 1
    .parameter

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->h:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :cond_0
    monitor-exit p0

    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 492
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->h:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/c/d;

    .line 494
    iget-object v2, p0, Lcom/instagram/common/g/c/b;->a:Lcom/instagram/common/g/c/a;

    invoke-static {v2}, Lcom/instagram/common/g/c/a;->b(Lcom/instagram/common/g/c/a;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/common/g/c/b;->a:Lcom/instagram/common/g/c/a;

    invoke-static {v3}, Lcom/instagram/common/g/c/a;->b(Lcom/instagram/common/g/c/a;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 497
    :cond_0
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 501
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->g:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->g:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->f:Lcom/c/a/d;

    if-eqz v0, :cond_1

    .line 511
    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->f:Lcom/c/a/d;

    invoke-virtual {v0}, Lcom/c/a/d;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->h:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/c/d;

    .line 519
    iget-object v2, p0, Lcom/instagram/common/g/c/b;->a:Lcom/instagram/common/g/c/a;

    invoke-static {v2}, Lcom/instagram/common/g/c/a;->b(Lcom/instagram/common/g/c/a;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/common/g/c/b;->a:Lcom/instagram/common/g/c/a;

    invoke-static {v3}, Lcom/instagram/common/g/c/a;->b(Lcom/instagram/common/g/c/a;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 505
    :catch_0
    move-exception v0

    const-string v0, "IgVideoCache"

    const-string v1, "Couldn\'t close disk cache output stream for %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 513
    :catch_1
    move-exception v0

    const-string v0, "IgVideoCache"

    const-string v1, "Couldn\'t abort cache entry for %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 522
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 462
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instagram/common/g/c/b;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video downloaded in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 466
    iget v0, p0, Lcom/instagram/common/g/c/b;->c:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/instagram/common/g/c/b;->e:Z

    if-nez v0, :cond_0

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->g:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 469
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->f:Lcom/c/a/d;

    invoke-virtual {v0}, Lcom/c/a/d;->b()V

    .line 471
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :try_start_1
    invoke-direct {p0}, Lcom/instagram/common/g/c/b;->c()V

    .line 473
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->a:Lcom/instagram/common/g/c/a;

    iget-object v1, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    invoke-virtual {v1}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/g/c/a;->b(Lcom/instagram/common/g/c/a;Ljava/lang/String;)V

    .line 483
    return-void

    .line 473
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 475
    :catch_0
    move-exception v0

    const-string v0, "IgVideoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t store cache entry for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/instagram/common/g/c/b;->d()V

    goto :goto_0
.end method

.method public final declared-synchronized a(Lch/boye/httpclientandroidlib/StatusLine;)V
    .locals 3
    .parameter

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/instagram/common/g/c/b;->c:I

    .line 436
    iget v0, p0, Lcom/instagram/common/g/c/b;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 438
    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->a:Lcom/instagram/common/g/c/a;

    invoke-static {v0}, Lcom/instagram/common/g/c/a;->a(Lcom/instagram/common/g/c/a;)Lcom/c/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/g/c/b;->a:Lcom/instagram/common/g/c/a;

    iget-object v1, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    invoke-virtual {v1}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/g/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/a/a;->c(Ljava/lang/String;)Lcom/c/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/g/c/b;->f:Lcom/c/a/d;

    .line 439
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/instagram/common/g/c/b;->f:Lcom/c/a/d;

    invoke-virtual {v1}, Lcom/c/a/d;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/instagram/common/g/c/b;->g:Ljava/io/BufferedOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    :try_start_2
    const-string v1, "IgVideoCache"

    const-string v2, "can\'t open disk cache entry for video "

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/g/c/b;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V
    .locals 2
    .parameter

    .prologue
    .line 424
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/common/g/c/b;->d:J

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Started downloading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->a:Lcom/instagram/common/g/c/a;

    iget-object v1, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    iget-object v1, v1, Lcom/instagram/common/g/a/g;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/instagram/common/g/c/a;->a(Lcom/instagram/common/g/c/a;Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public final declared-synchronized a([BI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->g:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 452
    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->g:Ljava/io/BufferedOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    :try_start_2
    const-string v1, "IgVideoCache"

    const-string v2, "can\'t write video cache "

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/g/c/b;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/instagram/common/g/c/b;->d()V

    .line 488
    iget-object v0, p0, Lcom/instagram/common/g/c/b;->a:Lcom/instagram/common/g/c/a;

    iget-object v1, p0, Lcom/instagram/common/g/c/b;->b:Lcom/instagram/common/g/a/g;

    invoke-virtual {v1}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/g/c/a;->b(Lcom/instagram/common/g/c/a;Ljava/lang/String;)V

    .line 489
    return-void
.end method
