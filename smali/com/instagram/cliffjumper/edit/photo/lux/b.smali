.class final Lcom/instagram/cliffjumper/edit/photo/lux/b;
.super Ljava/lang/Object;
.source "CdfManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

.field final synthetic b:Lcom/instagram/cliffjumper/edit/photo/lux/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/lux/a;Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->a:Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 84
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->d:Z

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->a:Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->calcCDF(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;I)I

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->a:Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I

    .line 94
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 96
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c(Lcom/instagram/cliffjumper/edit/photo/lux/a;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 100
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c(Lcom/instagram/cliffjumper/edit/photo/lux/a;)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I

    .line 101
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;I)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v2}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 105
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Z

    .line 107
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->a:Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->calcBWpoint(I)[F

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;F)F

    .line 90
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    aget v0, v0, v4

    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b(Lcom/instagram/cliffjumper/edit/photo/lux/a;F)F

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
