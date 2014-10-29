.class final Lcom/instagram/creation/photo/crop/u;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lcom/instagram/creation/photo/crop/s;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/s;FJFFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/u;->g:Lcom/instagram/creation/photo/crop/s;

    const/high16 v0, 0x4396

    iput v0, p0, Lcom/instagram/creation/photo/crop/u;->a:F

    iput-wide p3, p0, Lcom/instagram/creation/photo/crop/u;->b:J

    iput p5, p0, Lcom/instagram/creation/photo/crop/u;->c:F

    iput p6, p0, Lcom/instagram/creation/photo/crop/u;->d:F

    iput p7, p0, Lcom/instagram/creation/photo/crop/u;->e:F

    iput p8, p0, Lcom/instagram/creation/photo/crop/u;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 335
    iget v2, p0, Lcom/instagram/creation/photo/crop/u;->a:F

    iget-wide v3, p0, Lcom/instagram/creation/photo/crop/u;->b:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 336
    iget v1, p0, Lcom/instagram/creation/photo/crop/u;->c:F

    iget v2, p0, Lcom/instagram/creation/photo/crop/u;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 337
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/u;->g:Lcom/instagram/creation/photo/crop/s;

    iget v3, p0, Lcom/instagram/creation/photo/crop/u;->e:F

    iget v4, p0, Lcom/instagram/creation/photo/crop/u;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/instagram/creation/photo/crop/s;->a(FFF)V

    .line 339
    iget v1, p0, Lcom/instagram/creation/photo/crop/u;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/u;->g:Lcom/instagram/creation/photo/crop/s;

    iget-object v0, v0, Lcom/instagram/creation/photo/crop/s;->l:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    :cond_0
    return-void
.end method
