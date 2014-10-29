.class public final Lcom/instagram/creation/video/f/bi;
.super Lcom/instagram/creation/video/f/aw;
.source "VideoTrimFragment.java"

# interfaces
.implements Lcom/instagram/creation/video/d/c;
.implements Lcom/instagram/creation/video/ui/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field a:[D

.field private aa:Landroid/view/View;

.field private ab:Landroid/view/animation/Animation;

.field private ac:Landroid/view/animation/Animation;

.field private ad:I

.field private ae:Landroid/view/View;

.field private af:Z

.field private ag:I

.field private ah:D

.field private ai:D

.field private aj:Ljava/io/File;

.field private ak:J

.field private al:Landroid/media/MediaMetadataRetriever;

.field private am:Lcom/instagram/creation/b/a/b;

.field private an:Lcom/instagram/creation/b/a/a;

.field private ao:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final ap:Landroid/os/Handler;

.field private b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

.field private c:Lcom/instagram/creation/video/l/h;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ProgressBar;

.field private i:Lcom/instagram/creation/video/ui/r;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Lcom/instagram/creation/video/f/aw;-><init>()V

    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->a:[D

    .line 104
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->ao:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->ap:Landroid/os/Handler;

    .line 786
    return-void
.end method

.method private X()D
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->h(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private Z()D
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/instagram/creation/video/f/bi;->ag:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->h(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 359
    .line 362
    iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    invoke-static {v2}, Lcom/instagram/creation/video/l/c;->b(Lcom/instagram/creation/b/a/a;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->c()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 364
    iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->c()I

    move-result v2

    invoke-static {v2}, Lcom/instagram/camera/h;->a(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    .line 365
    iget v2, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 366
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v0, :cond_0

    :goto_0
    move v1, v0

    move v0, v2

    .line 368
    :goto_1
    iget-wide v2, p0, Lcom/instagram/creation/video/f/bi;->ai:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/instagram/creation/video/f/bi;->ah:D

    double-to-int v3, v3

    invoke-static {p1, v2, v3, v0, v1}, Lcom/instagram/o/c/a;->a(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 374
    if-nez p2, :cond_1

    .line 377
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {v1, v0}, Lcom/instagram/o/c/a;->a(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 381
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 391
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 366
    goto :goto_0

    .line 383
    :cond_1
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_2

    .line 384
    new-array v0, v5, [F

    fill-array-data v0, :array_1

    invoke-static {v1, v0}, Lcom/instagram/o/c/a;->a(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 388
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 391
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    .line 377
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
    .end array-data

    .line 384
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/bi;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/creation/video/f/bi;->am:Lcom/instagram/creation/b/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/l/h;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    return-object v0
.end method

.method private a(F)V
    .locals 1
    .parameter

    .prologue
    .line 823
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/b/a/a;->a(F)Lcom/instagram/creation/b/a/a;

    .line 824
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->g()V

    .line 825
    return-void
.end method

.method private a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 421
    if-ge p1, p2, :cond_0

    .line 422
    :goto_0
    if-gt p1, p2, :cond_1

    .line 423
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->i(I)V

    .line 422
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 426
    :cond_0
    :goto_1
    if-lt p2, p1, :cond_1

    .line 427
    invoke-direct {p0, p2}, Lcom/instagram/creation/video/f/bi;->i(I)V

    .line 426
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 430
    :cond_1
    return-void
.end method

.method private a(Landroid/widget/ImageView;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 396
    const-wide v0, 0x412e848000000000L

    iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->a:[D

    aget-wide v2, v2, p2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    .line 397
    iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->al:Landroid/media/MediaMetadataRetriever;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v1, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_0

    .line 402
    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->a:[D

    array-length v1, v1

    invoke-direct {p0, v0, p2, v1}, Lcom/instagram/creation/video/f/bi;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 403
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 405
    new-instance v0, Lcom/instagram/creation/video/f/bl;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/instagram/creation/video/f/bl;-><init>(Lcom/instagram/creation/video/f/bi;Landroid/widget/ImageView;Landroid/graphics/Bitmap;IJ)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 418
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/bi;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/bi;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->j(I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/bi;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/f/bi;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private a(Lcom/instagram/creation/video/ui/s;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 759
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/creation/video/ui/r;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->trim_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 764
    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;

    sget v2, Lcom/facebook/ba;->Tooltip_Popup:I

    invoke-virtual {v1, v2}, Lcom/instagram/creation/video/ui/r;->setAnimationStyle(I)V

    .line 765
    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;

    const/16 v2, 0x53

    invoke-virtual {v1, v0, v2, p2, p3}, Lcom/instagram/creation/video/ui/r;->showAtLocation(Landroid/view/View;III)V

    .line 766
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ap:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/video/f/bn;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/bn;-><init>(Lcom/instagram/creation/video/f/bi;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 775
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/bi;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/instagram/creation/video/f/bi;->af:Z

    return p1
.end method

.method private aa()D
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/instagram/creation/video/f/bi;->ai:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private ab()D
    .locals 4

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->aa()D

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v2}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private ac()D
    .locals 2

    .prologue
    .line 355
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->g(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private ad()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 732
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->ac:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 733
    return-void
.end method

.method private ae()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 738
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->ab:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 739
    return-void
.end method

.method private af()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 778
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->dismiss()V

    .line 780
    iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->i:Lcom/instagram/creation/video/ui/r;

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ap:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 784
    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/bi;I)D
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->g(I)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/bi;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/instagram/creation/video/f/bi;->af:Z

    return v0
.end method

.method static synthetic c(Lcom/instagram/creation/video/f/bi;)D
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->Z()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/instagram/creation/video/f/bi;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->l(I)V

    return-void
.end method

.method static synthetic d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/creation/video/f/bi;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->k(I)V

    return-void
.end method

.method static synthetic e(Lcom/instagram/creation/video/f/bi;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aj:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/creation/video/f/bi;)J
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ak:J

    return-wide v0
.end method

.method private g(I)D
    .locals 4
    .parameter

    .prologue
    .line 327
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/instagram/creation/video/f/bi;->ai:D

    mul-double/2addr v0, v2

    const-wide v2, 0x409f400000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic g(Lcom/instagram/creation/video/f/bi;)D
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ai:D

    return-wide v0
.end method

.method private h(I)D
    .locals 4
    .parameter

    .prologue
    .line 332
    int-to-double v0, p1

    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/instagram/creation/video/f/bi;->ai:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic h(Lcom/instagram/creation/video/f/bi;)D
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ah:D

    return-wide v0
.end method

.method static synthetic i(Lcom/instagram/creation/video/f/bi;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private i(I)V
    .locals 3
    .parameter

    .prologue
    .line 433
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 434
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->ao:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/instagram/creation/video/f/bm;

    invoke-direct {v2, p0, v0, p1}, Lcom/instagram/creation/video/f/bm;-><init>(Lcom/instagram/creation/video/f/bi;Landroid/widget/ImageView;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 444
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/instagram/creation/video/f/bi;)D
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ac()D

    move-result-wide v0

    return-wide v0
.end method

.method private j(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 453
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ao:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 455
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v1}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getWidth()I

    move-result v1

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/instagram/creation/video/f/bi;->ai:D

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    .line 458
    iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v2}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/instagram/creation/video/f/bi;->ai:D

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 459
    add-int v3, v2, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 462
    add-int/lit8 v4, v2, -0x1

    sub-int/2addr v4, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 463
    add-int/lit8 v5, v2, -0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 465
    add-int/lit8 v6, v3, 0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 466
    add-int/lit8 v7, v3, 0x1

    add-int/2addr v1, v7

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 469
    invoke-direct {p0, v2, v3}, Lcom/instagram/creation/video/f/bi;->a(II)V

    .line 472
    sget v1, Lcom/instagram/creation/video/f/br;->b:I

    if-ne p1, v1, :cond_0

    .line 473
    invoke-direct {p0, v6, v0}, Lcom/instagram/creation/video/f/bi;->a(II)V

    .line 474
    invoke-direct {p0, v5, v4}, Lcom/instagram/creation/video/f/bi;->a(II)V

    .line 479
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-direct {p0, v5, v4}, Lcom/instagram/creation/video/f/bi;->a(II)V

    .line 477
    invoke-direct {p0, v6, v0}, Lcom/instagram/creation/video/f/bi;->a(II)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/instagram/creation/video/f/bi;)D
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->aa()D

    move-result-wide v0

    return-wide v0
.end method

.method private k(I)V
    .locals 6
    .parameter

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;)I

    move-result v0

    .line 688
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 691
    iget v2, p0, Lcom/instagram/creation/video/f/bi;->ag:I

    if-ge v2, v1, :cond_1

    sub-int v2, v0, v1

    iget-object v3, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    .line 696
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ab()D

    move-result-wide v1

    int-to-double v3, v0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ab()D

    move-result-wide v2

    int-to-double v4, v0

    sub-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->scrollBy(II)V

    .line 701
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->l(I)V

    .line 702
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic l(Lcom/instagram/creation/video/f/bi;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;

    return-object v0
.end method

.method private l(I)V
    .locals 3
    .parameter

    .prologue
    .line 709
    iput p1, p0, Lcom/instagram/creation/video/f/bi;->ag:I

    .line 711
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->h:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/instagram/creation/video/f/bi;->ag:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 713
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/instagram/creation/video/f/bi;->ag:I

    iget-object v2, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 715
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 717
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v1}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/instagram/creation/video/f/bi;->ag:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 718
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 720
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->invalidate()V

    .line 721
    return-void
.end method

.method private m(I)I
    .locals 4
    .parameter

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->aa()D

    move-result-wide v0

    iget v2, p0, Lcom/instagram/creation/video/f/bi;->ad:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    .line 726
    int-to-double v2, p1

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/instagram/creation/video/f/bi;->ak:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->n(I)V

    .line 727
    return p1
.end method

.method static synthetic m(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/ui/FilmstripScrollView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    return-object v0
.end method

.method static synthetic n(Lcom/instagram/creation/video/f/bi;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->g:Landroid/view/View;

    return-object v0
.end method

.method private n(I)V
    .locals 3
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    iget v2, p0, Lcom/instagram/creation/video/f/bi;->ad:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 744
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 745
    return-void
.end method

.method static synthetic o(Lcom/instagram/creation/video/f/bi;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/instagram/creation/video/f/bi;->ag:I

    return v0
.end method

.method static synthetic p(Lcom/instagram/creation/video/f/bi;)D
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ab()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic q(Lcom/instagram/creation/video/f/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->af()V

    return-void
.end method

.method static synthetic r(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/ui/LivePreviewTextureView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 4

    .prologue
    .line 295
    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->F()V

    .line 296
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->c()V

    .line 297
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->e()V

    .line 298
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->aa()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 299
    sget v0, Lcom/instagram/creation/video/f/br;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->j(I)V

    .line 301
    :cond_0
    return-void
.end method

.method public final F_()V
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ae()V

    .line 528
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->m(I)I

    .line 529
    return-void
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ao:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 278
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->d()V

    .line 279
    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->G()V

    .line 281
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->af()V

    .line 282
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->H()V

    .line 306
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ao:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 307
    return-void
.end method

.method public final V()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->j()V

    .line 521
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->n(I)V

    .line 522
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ae()V

    .line 523
    return-void
.end method

.method public final W()V
    .locals 5

    .prologue
    .line 748
    sget-object v0, Lcom/instagram/creation/video/ui/s;->c:Lcom/instagram/creation/video/ui/s;

    .line 749
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    .line 750
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->E()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 751
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ac()D

    move-result-wide v3

    double-to-int v3, v3

    sub-int v1, v3, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/ui/s;II)V

    .line 756
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v1

    .line 156
    if-eqz v1, :cond_1

    sget v0, Lcom/facebook/aw;->fragment_video_trim:I

    :goto_0
    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 162
    invoke-static {v2}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V

    .line 164
    new-instance v0, Lcom/instagram/creation/video/ui/a/a;

    invoke-direct {v0}, Lcom/instagram/creation/video/ui/a/a;-><init>()V

    sget v3, Lcom/facebook/av;->play_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/creation/video/ui/a/a;->a(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;

    move-result-object v0

    sget v3, Lcom/facebook/av;->seek_frame_indicator:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/creation/video/ui/a/a;->b(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;

    move-result-object v3

    .line 168
    sget v0, Lcom/facebook/av;->textureview:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    .line 169
    new-instance v0, Lcom/instagram/creation/video/l/h;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3, v5}, Lcom/instagram/creation/video/l/h;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/a/a;Z)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    .line 170
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    iget-object v3, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0, v3}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setDelegate(Lcom/instagram/creation/video/ui/d;)V

    .line 171
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    iget-object v3, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v3}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/b/a/a;)V

    .line 172
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    iget-object v3, p0, Lcom/instagram/creation/video/f/bi;->am:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/instagram/creation/video/l/h;->a(I)V

    .line 173
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/video/d/c;)V

    .line 175
    sget v0, Lcom/facebook/av;->filmstrip_keyframes_holder:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;

    .line 177
    sget v0, Lcom/facebook/av;->filmstrip_scrollview:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/FilmstripScrollView;

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    .line 179
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a(Lcom/instagram/creation/video/ui/c;)V

    .line 180
    sget v0, Lcom/facebook/av;->trim_handle:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;

    .line 181
    sget v0, Lcom/facebook/av;->filmstrip_dimmer:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->f:Landroid/view/View;

    .line 182
    sget v0, Lcom/facebook/av;->filmstrip_play_indicator:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;

    .line 183
    sget v0, Lcom/facebook/av;->filmstrip_scrollview_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->g:Landroid/view/View;

    .line 184
    sget v0, Lcom/facebook/av;->trim_length_bar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->h:Landroid/widget/ProgressBar;

    .line 185
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 187
    if-nez v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v3, 0x42

    invoke-static {v1, v3}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v3, 0x401e

    div-double/2addr v0, v3

    iput-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ai:D

    .line 195
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ah:D

    .line 197
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/instagram/creation/video/f/bs;

    invoke-direct {v3, p0, v5}, Lcom/instagram/creation/video/f/bs;-><init>(Lcom/instagram/creation/video/f/bi;B)V

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 201
    new-instance v1, Lcom/instagram/creation/video/f/bj;

    invoke-direct {v1, p0, v0}, Lcom/instagram/creation/video/f/bj;-><init>(Lcom/instagram/creation/video/f/bi;Landroid/view/GestureDetector;)V

    .line 239
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/instagram/creation/video/f/bo;

    invoke-direct {v3, p0, v5}, Lcom/instagram/creation/video/f/bo;-><init>(Lcom/instagram/creation/video/f/bi;B)V

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 245
    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    new-instance v3, Lcom/instagram/creation/video/f/bk;

    invoke-direct {v3, p0, v0}, Lcom/instagram/creation/video/f/bk;-><init>(Lcom/instagram/creation/video/f/bi;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v3}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    return-object v2

    .line 156
    :cond_1
    sget v0, Lcom/facebook/aw;->fragment_video_trim_small:I

    goto/16 :goto_0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bi;->m(I)I

    .line 534
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/instagram/creation/video/f/aw;->a(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->Y()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->am:Lcom/instagram/creation/b/a/b;

    .line 127
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->am:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->K()Lcom/instagram/creation/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    .line 129
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->aj:Ljava/io/File;

    .line 131
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->al:Landroid/media/MediaMetadataRetriever;

    .line 132
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->al:Landroid/media/MediaMetadataRetriever;

    iget-object v1, p0, Lcom/instagram/creation/video/f/bi;->aj:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ak:J

    .line 135
    iget-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ak:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->al:Landroid/media/MediaMetadataRetriever;

    invoke-static {v0}, Lcom/instagram/creation/video/c/a;->a(Landroid/media/MediaMetadataRetriever;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/video/f/bi;->ak:J

    .line 137
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    iget-wide v1, p0, Lcom/instagram/creation/video/f/bi;->ak:J

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/b/a/a;->a(J)Lcom/instagram/creation/b/a/a;

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 143
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/aq;->import_play_fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->ab:Landroid/view/animation/Animation;

    .line 145
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/aq;->import_play_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/f/bi;->ac:Landroid/view/animation/Animation;

    .line 147
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->trim_play_indicator_min_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/f/bi;->ad:I

    .line 149
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-super {p0, p1, p2}, Lcom/instagram/creation/video/f/aw;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 260
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->creation_main_actions:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->seek_frame_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    sget-object v0, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/av;)V

    .line 265
    new-instance v0, Lcom/instagram/creation/video/f/bp;

    invoke-direct {v0, p0, v2}, Lcom/instagram/creation/video/f/bp;-><init>(Lcom/instagram/creation/video/f/bi;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/bp;->b([Ljava/lang/Object;)Lcom/instagram/common/c/a;

    .line 266
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->k()V

    .line 120
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ad()V

    .line 539
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ad()V

    .line 516
    return-void
.end method

.method public final f(I)V
    .locals 5
    .parameter

    .prologue
    .line 483
    if-ltz p1, :cond_2

    sget v0, Lcom/instagram/creation/video/f/br;->b:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->j(I)V

    .line 485
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ab()D

    move-result-wide v0

    .line 486
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->ac()D

    move-result-wide v2

    .line 488
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/l/b/a;->p()Z

    move-result v4

    if-nez v4, :cond_0

    .line 489
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/l/b/a;->q()Z

    .line 492
    :cond_0
    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 493
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->X()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->c(I)Lcom/instagram/creation/b/a/a;

    .line 501
    :goto_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I

    move-result v0

    int-to-long v0, v0

    .line 502
    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->aa()D

    move-result-wide v2

    long-to-double v0, v0

    sub-double v0, v2, v0

    double-to-int v0, v0

    .line 503
    iget v1, p0, Lcom/instagram/creation/video/f/bi;->ag:I

    if-le v1, v0, :cond_1

    .line 504
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->l(I)V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->Z()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;

    .line 508
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->c:Lcom/instagram/creation/video/l/h;

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->h()V

    .line 510
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/bi;->n(I)V

    .line 511
    return-void

    .line 483
    :cond_2
    sget v0, Lcom/instagram/creation/video/f/br;->a:I

    goto :goto_0

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->an:Lcom/instagram/creation/b/a/a;

    invoke-direct {p0}, Lcom/instagram/creation/video/f/bi;->Z()D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit16 v1, v1, -0xbb8

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->c(I)Lcom/instagram/creation/b/a/a;

    .line 497
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bi;->W()V

    goto :goto_1
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    const-string v0, "video_trim"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-super {p0}, Lcom/instagram/creation/video/f/aw;->m_()V

    .line 313
    iget-object v0, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->a()V

    .line 315
    iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->b:Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    .line 316
    iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->d:Landroid/widget/LinearLayout;

    .line 317
    iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->e:Lcom/instagram/creation/video/ui/FilmstripScrollView;

    .line 318
    iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->g:Landroid/view/View;

    .line 319
    iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->f:Landroid/view/View;

    .line 320
    iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->aa:Landroid/view/View;

    .line 321
    iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->ae:Landroid/view/View;

    .line 322
    iput-object v1, p0, Lcom/instagram/creation/video/f/bi;->h:Landroid/widget/ProgressBar;

    .line 323
    return-void
.end method
