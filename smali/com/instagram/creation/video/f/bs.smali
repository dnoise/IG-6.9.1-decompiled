.class final Lcom/instagram/creation/video/f/bs;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoTrimFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/bi;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/video/f/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/video/f/bi;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 646
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bs;-><init>(Lcom/instagram/creation/video/f/bi;)V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 650
    const/4 v0, 0x1

    return v0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter
    .parameter
    .parameter "distanceX"
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 655
    iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->o(Lcom/instagram/creation/video/f/bi;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p3

    float-to-double v2, v0

    .line 656
    iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->p(Lcom/instagram/creation/video/f/bi;)D

    move-result-wide v4

    .line 657
    iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->j(Lcom/instagram/creation/video/f/bi;)D

    move-result-wide v0

    .line 660
    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 662
    iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->m(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/ui/FilmstripScrollView;

    move-result-object v0

    float-to-int v1, p3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/ui/FilmstripScrollView;->scrollBy(II)V

    .line 663
    iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->p(Lcom/instagram/creation/video/f/bi;)D

    move-result-wide v0

    .line 671
    :goto_0
    iget-object v2, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    double-to-int v0, v0

    invoke-static {v2, v0}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;I)V

    .line 672
    iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v1}, Lcom/instagram/creation/video/f/bi;->c(Lcom/instagram/creation/video/f/bi;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;

    .line 673
    iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->i()V

    .line 675
    iget-object v0, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0, v6}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;Z)Z

    .line 676
    return v6

    .line 664
    :cond_0
    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    .line 666
    iget-object v2, p0, Lcom/instagram/creation/video/f/bs;->a:Lcom/instagram/creation/video/f/bi;

    invoke-virtual {v2}, Lcom/instagram/creation/video/f/bi;->W()V

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 668
    goto :goto_0
.end method
