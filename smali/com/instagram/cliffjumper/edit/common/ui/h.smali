.class abstract Lcom/instagram/cliffjumper/edit/common/ui/h;
.super Ljava/lang/Object;
.source "TileButton.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:F

.field private c:F

.field private d:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    .line 457
    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    .line 459
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    .line 462
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->a:Ljava/lang/ref/WeakReference;

    .line 463
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final a(F)V
    .locals 2
    .parameter

    .prologue
    .line 495
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    .line 496
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/h;->a()V

    .line 499
    :cond_0
    return-void
.end method

.method protected final a(J)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 472
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/h;->b()V

    .line 474
    iput-wide v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    .line 488
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-wide v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 478
    iput-wide p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    .line 480
    :cond_2
    iget-wide v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    sub-long v0, p1, v0

    .line 481
    long-to-float v0, v0

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/ui/g;->c()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 482
    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    .line 485
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 486
    iput-wide p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    .line 487
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/h;->a()V

    goto :goto_0

    .line 482
    :cond_3
    const/4 v1, 0x0

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    sub-float v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1
.end method

.method protected abstract b()V
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    return v0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    return v0
.end method
