.class final Lcom/instagram/creation/photo/crop/q;
.super Ljava/lang/Object;
.source "HighlightView.java"


# instance fields
.field a:Landroid/view/View;

.field b:Z

.field c:Z

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/RectF;

.field f:Landroid/graphics/Matrix;

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:Landroid/graphics/RectF;

.field private m:Z

.field private n:F

.field private o:Z

.field private p:Landroid/graphics/drawable/ShapeDrawable;

.field private q:Lcom/instagram/creation/base/ui/i;

.field private final r:Landroid/graphics/Paint;

.field private final s:Landroid/graphics/Paint;

.field private final t:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    sget v0, Lcom/instagram/creation/photo/crop/r;->a:I

    iput v0, p0, Lcom/instagram/creation/photo/crop/q;->k:I

    .line 461
    iput-boolean v1, p0, Lcom/instagram/creation/photo/crop/q;->m:Z

    .line 463
    iput-boolean v1, p0, Lcom/instagram/creation/photo/crop/q;->o:Z

    .line 469
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->r:Landroid/graphics/Paint;

    .line 470
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->s:Landroid/graphics/Paint;

    .line 471
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->t:Landroid/graphics/Paint;

    .line 57
    iput-object p1, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    .line 58
    return-void
.end method

.method private b(FF)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 297
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 300
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 304
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 308
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->g()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    .line 309
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 310
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 311
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 312
    return-void
.end method

.method private static b(Landroid/graphics/Canvas;)Z
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 475
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(FF)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x41c8

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 316
    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/q;->m:Z

    if-eqz v0, :cond_0

    .line 317
    cmpl-float v0, p1, v6

    if-eqz v0, :cond_a

    .line 318
    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->n:F

    div-float p2, p1, v0

    .line 327
    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 332
    cmpg-float v0, p2, v6

    if-gez v0, :cond_f

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v1, v7, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    .line 333
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float v1, v0, v7

    .line 335
    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/q;->m:Z

    if-eqz v0, :cond_e

    .line 336
    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->n:F

    div-float p2, v1, v0

    move v0, p2

    .line 339
    :goto_1
    cmpl-float v4, v0, v6

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 340
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    .line 342
    iget-boolean v4, p0, Lcom/instagram/creation/photo/crop/q;->m:Z

    if-eqz v4, :cond_1

    .line 343
    iget v1, p0, Lcom/instagram/creation/photo/crop/q;->n:F

    mul-float/2addr v1, v0

    .line 347
    :cond_1
    cmpg-float v4, v1, v6

    if-ltz v4, :cond_2

    cmpg-float v4, v0, v6

    if-gez v4, :cond_4

    .line 348
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v7, v1

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/instagram/creation/photo/crop/q;->g:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, v0

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/instagram/creation/photo/crop/q;->g:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 349
    :cond_3
    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->g:I

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float v1, v0, v7

    .line 350
    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->g:I

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    .line 352
    neg-float v4, v1

    neg-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 356
    :cond_4
    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 359
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 361
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v0, v2, v0

    neg-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 363
    :cond_5
    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/q;->m:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->n:F

    div-float v0, v2, v0

    .line 366
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_6

    .line 367
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 371
    :cond_6
    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 372
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 376
    :cond_7
    :goto_3
    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 377
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 382
    :cond_8
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/instagram/creation/photo/crop/q;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/instagram/creation/photo/crop/q;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_9

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_9

    .line 384
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 385
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->g()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    .line 387
    :cond_9
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 388
    return-void

    .line 319
    :cond_a
    cmpl-float v0, p2, v6

    if-eqz v0, :cond_0

    .line 320
    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->n:F

    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 363
    goto/16 :goto_2

    .line 373
    :cond_c
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 374
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_3

    .line 378
    :cond_d
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 379
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_4

    :cond_e
    move v0, p2

    goto/16 :goto_1

    :cond_f
    move v0, p2

    move v1, p2

    goto/16 :goto_1
.end method

.method private e()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    .line 64
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lcom/facebook/as;->white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 66
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v0

    float-to-int v0, v0

    .line 67
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 68
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 69
    return-void
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/q;->b:Z

    return v0
.end method

.method private g()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 398
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 400
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 402
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->t:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 403
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v6, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v1, v6, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method


# virtual methods
.method public final a(FF)I
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 193
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->g()Landroid/graphics/Rect;

    move-result-object v5

    .line 194
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v3, 0x14

    invoke-static {v0, v3}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v6

    .line 197
    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/q;->o:Z

    if-eqz v0, :cond_5

    .line 198
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 199
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    .line 200
    mul-float v3, v0, v0

    mul-float v5, v2, v2

    add-float/2addr v3, v5

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v3, v7

    .line 202
    iget-object v5, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 203
    sub-int v7, v3, v5

    .line 204
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v7, v6

    if-gtz v6, :cond_4

    .line 205
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 206
    cmpg-float v0, v2, v9

    if-gez v0, :cond_1

    .line 207
    const/16 v1, 0x8

    .line 250
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    const/16 v1, 0x10

    goto :goto_0

    .line 212
    :cond_2
    cmpg-float v0, v0, v9

    if-gez v0, :cond_3

    .line 213
    const/4 v1, 0x2

    goto :goto_0

    .line 215
    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    .line 218
    :cond_4
    if-ge v3, v5, :cond_0

    move v1, v4

    .line 219
    goto :goto_0

    .line 226
    :cond_5
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_9

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    cmpg-float v0, p2, v0

    if-gez v0, :cond_9

    move v0, v1

    .line 228
    :goto_1
    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_6

    iget v3, v5, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v6

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6

    move v2, v1

    .line 232
    :cond_6
    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_c

    if-eqz v0, :cond_c

    .line 233
    const/4 v3, 0x3

    .line 235
    :goto_2
    iget v7, v5, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_7

    if-eqz v0, :cond_7

    .line 236
    or-int/lit8 v3, v3, 0x4

    .line 238
    :cond_7
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_8

    if-eqz v2, :cond_8

    .line 239
    or-int/lit8 v3, v3, 0x8

    .line 241
    :cond_8
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_b

    if-eqz v2, :cond_b

    .line 242
    or-int/lit8 v3, v3, 0x10

    move v0, v3

    .line 246
    :goto_3
    if-ne v0, v1, :cond_a

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v4

    .line 247
    goto :goto_0

    :cond_9
    move v0, v2

    .line 226
    goto :goto_1

    :cond_a
    move v1, v0

    goto/16 :goto_0

    :cond_b
    move v0, v3

    goto :goto_3

    :cond_c
    move v3, v1

    goto :goto_2
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/crop/q;->b:Z

    .line 83
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 185
    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->k:I

    if-eq p1, v0, :cond_0

    .line 186
    iput p1, p0, Lcom/instagram/creation/photo/crop/q;->k:I

    .line 187
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 189
    :cond_0
    return-void
.end method

.method final a(IFF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 256
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->g()Landroid/graphics/Rect;

    move-result-object v3

    .line 257
    if-ne p1, v2, :cond_0

    .line 291
    :goto_0
    return-void

    .line 259
    :cond_0
    const/16 v4, 0x20

    if-ne p1, v4, :cond_2

    .line 262
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    .line 263
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    .line 267
    iget v2, p0, Lcom/instagram/creation/photo/crop/q;->h:I

    if-eqz v2, :cond_1

    .line 268
    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->j:F

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/instagram/creation/photo/crop/q;->i:F

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    .line 269
    iget v1, p0, Lcom/instagram/creation/photo/crop/q;->i:F

    mul-float/2addr v1, p2

    iget v2, p0, Lcom/instagram/creation/photo/crop/q;->j:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    .line 272
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/photo/crop/q;->b(FF)V

    goto :goto_0

    .line 274
    :cond_2
    and-int/lit8 v4, p1, 0x6

    if-nez v4, :cond_3

    move p2, v0

    .line 278
    :cond_3
    and-int/lit8 v4, p1, 0x18

    if-nez v4, :cond_4

    move p3, v0

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    mul-float v4, p2, v0

    .line 284
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float v3, p3, v0

    .line 286
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v4, v0

    .line 287
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v3

    .line 289
    invoke-direct {p0, v4, v0}, Lcom/instagram/creation/photo/crop/q;->c(FF)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 286
    goto :goto_1

    :cond_6
    move v0, v2

    .line 287
    goto :goto_2
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 94
    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/q;->c:Z

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 99
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 100
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->t:Landroid/graphics/Paint;

    const v1, -0x10fb2a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 105
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 106
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->t:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/as;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/q;->o:Z

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 110
    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 111
    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    div-float/2addr v0, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 123
    :goto_1
    invoke-static {p1}, Lcom/instagram/creation/photo/crop/q;->b(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 127
    :cond_3
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->r:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 135
    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->k:I

    sget v1, Lcom/instagram/creation/photo/crop/r;->b:I

    if-eq v0, v1, :cond_0

    .line 136
    iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/q;->o:Z

    if-eqz v0, :cond_6

    .line 137
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 141
    const-wide v2, 0x3fe921fb54442d18L

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 143
    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    .line 145
    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    .line 147
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 150
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 116
    :cond_4
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 119
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->q:Lcom/instagram/creation/base/ui/i;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/instagram/creation/base/ui/i;->a(Landroid/graphics/Rect;)V

    .line 120
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->q:Lcom/instagram/creation/base/ui/i;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/base/ui/i;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->s:Landroid/graphics/Paint;

    goto/16 :goto_2

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 154
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 156
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 160
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 166
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 172
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 178
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->p:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x7d

    const/4 v5, 0x1

    const/16 v4, 0x32

    .line 416
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->f:Landroid/graphics/Matrix;

    .line 418
    iput-object p3, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    .line 419
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    .line 420
    iput-boolean v5, p0, Lcom/instagram/creation/photo/crop/q;->m:Z

    .line 422
    iput p5, p0, Lcom/instagram/creation/photo/crop/q;->h:I

    .line 424
    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->h:I

    neg-int v0, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/q;->i:F

    .line 425
    iget v0, p0, Lcom/instagram/creation/photo/crop/q;->h:I

    neg-int v0, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/q;->j:F

    .line 427
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/photo/crop/q;->n:F

    .line 429
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/q;->g:I

    .line 435
    :goto_0
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->g()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    .line 436
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    const/high16 v0, 0x4000

    .line 437
    :goto_1
    new-instance v1, Lcom/instagram/creation/base/ui/i;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/instagram/creation/base/ui/i;-><init>(IF)V

    iput-object v1, p0, Lcom/instagram/creation/photo/crop/q;->q:Lcom/instagram/creation/base/ui/i;

    .line 438
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->q:Lcom/instagram/creation/base/ui/i;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/base/ui/i;->a(Landroid/graphics/Rect;)V

    .line 440
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 441
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 442
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->t:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 443
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 444
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 446
    sget v0, Lcom/instagram/creation/photo/crop/r;->a:I

    iput v0, p0, Lcom/instagram/creation/photo/crop/q;->k:I

    .line 447
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->e()V

    .line 448
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/q;->g:I

    goto :goto_0

    .line 436
    :cond_1
    const/high16 v0, 0x3f80

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/crop/q;->o:Z

    .line 91
    return-void
.end method

.method public final c()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 392
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/q;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/q;->g()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/q;->d:Landroid/graphics/Rect;

    .line 412
    return-void
.end method
