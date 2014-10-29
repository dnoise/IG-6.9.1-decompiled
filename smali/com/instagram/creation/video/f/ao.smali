.class public final Lcom/instagram/creation/video/f/ao;
.super Lcom/instagram/creation/video/f/ad;
.source "VideoCoverFragmentJellybean.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private g:Lcom/instagram/creation/video/f/ap;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ad;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ao;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/ao;)Lcom/instagram/creation/video/f/ap;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/ao;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 435
    invoke-super {p0}, Lcom/instagram/creation/video/f/ad;->H()V

    .line 436
    iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 437
    return-void
.end method

.method public final V()Lcom/instagram/creation/video/f/ah;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;

    return-object v0
.end method

.method public final X()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 47
    :cond_0
    iput-object v1, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;

    .line 49
    :cond_1
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/j;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/instagram/creation/video/f/ap;

    invoke-direct {v0, p0, p1}, Lcom/instagram/creation/video/f/ap;-><init>(Lcom/instagram/creation/video/f/ao;Lcom/instagram/creation/video/gl/j;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;

    .line 38
    return-void
.end method
