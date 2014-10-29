.class final Lcom/instagram/creation/video/f/bo;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoTrimFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/bi;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/video/f/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/video/f/bi;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bo;-><init>(Lcom/instagram/creation/video/f/bi;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter
    .parameter
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x1

    .line 790
    iget-object v0, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->k()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v1}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->l()I

    move-result v1

    sub-int/2addr v0, v1

    .line 791
    if-nez v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return v6

    .line 796
    :cond_1
    iget-object v1, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v1}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/l/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/video/l/h;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    .line 804
    iget-object v2, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v2}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    float-to-double v2, p4

    div-double v0, v2, v0

    .line 806
    :goto_1
    const-wide/high16 v2, 0x3ff0

    iget-object v4, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v4}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/creation/b/a/a;->e()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v0, v4

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 807
    iget-object v2, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    double-to-float v3, v0

    invoke-static {v2, v3}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;F)V

    .line 808
    iget-object v2, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v2}, Lcom/instagram/creation/video/f/bi;->d(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->e()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    goto :goto_0

    .line 804
    :cond_2
    float-to-double v2, p3

    div-double v0, v2, v0

    goto :goto_1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/instagram/creation/video/f/bo;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->r(Lcom/instagram/creation/video/f/bi;)Lcom/instagram/creation/video/ui/LivePreviewTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->performClick()Z

    .line 817
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 818
    const/4 v0, 0x1

    return v0
.end method
