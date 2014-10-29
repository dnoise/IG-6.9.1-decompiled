.class final Lcom/facebook/g/h;
.super Ljava/io/OutputStream;
.source "FileLruCache.java"


# instance fields
.field final a:Ljava/io/OutputStream;

.field final b:Lcom/facebook/g/l;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/g/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 407
    iput-object p1, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    .line 408
    iput-object p2, p0, Lcom/facebook/g/h;->b:Lcom/facebook/g/l;

    .line 409
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-object v0, p0, Lcom/facebook/g/h;->b:Lcom/facebook/g/l;

    invoke-interface {v0}, Lcom/facebook/g/l;->a()V

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/g/h;->b:Lcom/facebook/g/l;

    invoke-interface {v1}, Lcom/facebook/g/l;->a()V

    throw v0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 423
    return-void
.end method

.method public final write(I)V
    .locals 1
    .parameter "oneByte"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 438
    return-void
.end method

.method public final write([B)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 433
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 428
    return-void
.end method
