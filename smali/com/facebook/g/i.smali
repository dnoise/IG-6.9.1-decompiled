.class final Lcom/facebook/g/i;
.super Ljava/io/InputStream;
.source "FileLruCache.java"


# instance fields
.field final a:Ljava/io/InputStream;

.field final b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    .line 447
    iput-object p2, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    .line 448
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    iget-object v0, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 467
    return-void

    .line 466
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public final mark(I)V
    .locals 1
    .parameter

    .prologue
    .line 472
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 492
    if-ltz v0, :cond_0

    .line 493
    iget-object v1, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 495
    :cond_0
    return v0
.end method

.method public final read([B)I
    .locals 3
    .parameter "buffer"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 483
    if-lez v0, :cond_0

    .line 484
    iget-object v1, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 486
    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/facebook/g/i;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 501
    if-lez v0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/facebook/g/i;->b:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 504
    :cond_0
    return v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 8
    .parameter "byteCount"

    .prologue
    .line 514
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 515
    const-wide/16 v0, 0x0

    .line 516
    :goto_0
    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    .line 517
    const/4 v3, 0x0

    sub-long v4, p1, v0

    const-wide/16 v6, 0x400

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/g/i;->read([BII)I

    move-result v3

    .line 518
    if-gez v3, :cond_1

    .line 523
    :cond_0
    return-wide v0

    .line 521
    :cond_1
    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 522
    goto :goto_0
.end method
