.class abstract Lcom/instagram/creation/photo/crop/s;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[F

.field private c:Lcom/instagram/creation/photo/crop/v;

.field private d:Ljava/lang/Runnable;

.field protected f:Landroid/graphics/Matrix;

.field protected g:Landroid/graphics/Matrix;

.field protected final h:Lcom/instagram/creation/photo/c/f;

.field i:I

.field j:I

.field k:F

.field protected l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 237
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->f:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->g:Landroid/graphics/Matrix;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->a:Landroid/graphics/Matrix;

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->b:[F

    .line 63
    new-instance v0, Lcom/instagram/creation/photo/c/f;

    invoke-direct {v0, v2}, Lcom/instagram/creation/photo/c/f;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    .line 65
    iput v1, p0, Lcom/instagram/creation/photo/crop/s;->i:I

    iput v1, p0, Lcom/instagram/creation/photo/crop/s;->j:I

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->l:Landroid/os/Handler;

    .line 150
    iput-object v2, p0, Lcom/instagram/creation/photo/crop/s;->d:Ljava/lang/Runnable;

    .line 238
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/s;->e()V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 242
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->f:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->g:Landroid/graphics/Matrix;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->a:Landroid/graphics/Matrix;

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->b:[F

    .line 63
    new-instance v0, Lcom/instagram/creation/photo/c/f;

    invoke-direct {v0, v2}, Lcom/instagram/creation/photo/c/f;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    .line 65
    iput v1, p0, Lcom/instagram/creation/photo/crop/s;->i:I

    iput v1, p0, Lcom/instagram/creation/photo/crop/s;->j:I

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->l:Landroid/os/Handler;

    .line 150
    iput-object v2, p0, Lcom/instagram/creation/photo/crop/s;->d:Ljava/lang/Runnable;

    .line 243
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/s;->e()V

    .line 244
    return-void
.end method

.method private a(Landroid/graphics/Matrix;)F
    .locals 2
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->b:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 252
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/instagram/creation/photo/c/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/creation/photo/c/f;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/photo/crop/s;->a(Lcom/instagram/creation/photo/c/f;Z)V

    .line 157
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/c/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    invoke-virtual {v1, p1}, Lcom/instagram/creation/photo/c/f;->a(Landroid/graphics/Bitmap;)V

    .line 139
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    invoke-virtual {v1, p2}, Lcom/instagram/creation/photo/c/f;->a(I)V

    .line 141
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->c:Lcom/instagram/creation/photo/crop/v;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->c:Lcom/instagram/creation/photo/crop/v;

    .line 144
    :cond_1
    return-void
.end method

.method private a(Lcom/instagram/creation/photo/c/f;Landroid/graphics/Matrix;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4040

    const/high16 v6, 0x4000

    .line 266
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 267
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 269
    invoke-virtual {p1}, Lcom/instagram/creation/photo/c/f;->e()I

    move-result v2

    int-to-float v2, v2

    .line 270
    invoke-virtual {p1}, Lcom/instagram/creation/photo/c/f;->d()I

    move-result v3

    int-to-float v3, v3

    .line 271
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 275
    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 276
    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 277
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 279
    invoke-virtual {p1}, Lcom/instagram/creation/photo/c/f;->c()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 280
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 282
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 285
    return-void
.end method

.method private b(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/s;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 247
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/s;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 248
    return-void
.end method

.method private f()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/s;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 292
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/s;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 293
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private g()F
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/c/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    const/high16 v0, 0x3f80

    .line 310
    :goto_0
    return v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/c/f;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/instagram/creation/photo/crop/s;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 308
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    invoke-virtual {v1}, Lcom/instagram/creation/photo/c/f;->d()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/creation/photo/crop/s;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 309
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    .line 310
    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 347
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 348
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 350
    const/high16 v2, 0x3f80

    invoke-virtual {p0, v2, v0, v1}, Lcom/instagram/creation/photo/crop/s;->a(FFF)V

    .line 351
    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 407
    return-void
.end method

.method protected a(FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    iget v0, p0, Lcom/instagram/creation/photo/crop/s;->k:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 315
    iget p1, p0, Lcom/instagram/creation/photo/crop/s;->k:F

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->d()F

    move-result v0

    .line 319
    div-float v0, p1, v0

    .line 321
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/s;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 322
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/s;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/s;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 323
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->c()V

    .line 324
    return-void
.end method

.method public final a(Lcom/instagram/creation/photo/c/f;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->getWidth()I

    move-result v0

    .line 163
    if-gtz v0, :cond_0

    .line 164
    new-instance v0, Lcom/instagram/creation/photo/crop/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/creation/photo/crop/t;-><init>(Lcom/instagram/creation/photo/crop/s;Lcom/instagram/creation/photo/c/f;Z)V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/s;->d:Ljava/lang/Runnable;

    .line 185
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/creation/photo/c/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/photo/crop/s;->a(Lcom/instagram/creation/photo/c/f;Landroid/graphics/Matrix;)V

    .line 174
    invoke-virtual {p1}, Lcom/instagram/creation/photo/c/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/photo/c/f;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/photo/crop/s;->a(Landroid/graphics/Bitmap;I)V

    .line 180
    :goto_1
    if-eqz p2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/s;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/s;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 184
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/s;->g()F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/photo/crop/s;->k:F

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/s;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/s;->a()V

    .line 148
    return-void
.end method

.method protected final b(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/instagram/creation/photo/crop/s;->a(FF)V

    .line 411
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/s;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/s;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 412
    return-void
.end method

.method protected final b(FFF)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4396

    .line 328
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->d()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, v2

    .line 329
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->d()F

    move-result v5

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 332
    iget-object v9, p0, Lcom/instagram/creation/photo/crop/s;->l:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/creation/photo/crop/u;

    move-object v1, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/instagram/creation/photo/crop/u;-><init>(Lcom/instagram/creation/photo/crop/s;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method

.method protected final c()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/c/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/s;->f()Landroid/graphics/Matrix;

    move-result-object v0

    .line 199
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    invoke-virtual {v3}, Lcom/instagram/creation/photo/c/f;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    invoke-virtual {v4}, Lcom/instagram/creation/photo/c/f;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 203
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 205
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 206
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 210
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->getHeight()I

    move-result v4

    .line 212
    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    .line 213
    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    .line 221
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->getWidth()I

    move-result v4

    .line 223
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    .line 224
    int-to-float v1, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 232
    :cond_1
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/instagram/creation/photo/crop/s;->a(FF)V

    .line 233
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/s;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/s;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 214
    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 215
    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    .line 216
    :cond_3
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 217
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_1

    .line 225
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    .line 226
    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_2

    .line 227
    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 228
    int-to-float v1, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected final d()F
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->g:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/s;->b(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 101
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 111
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/s;->d()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/s;->h()V

    .line 117
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 85
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 86
    sub-int v0, p4, p2

    iput v0, p0, Lcom/instagram/creation/photo/crop/s;->i:I

    .line 87
    sub-int v0, p5, p3

    iput v0, p0, Lcom/instagram/creation/photo/crop/s;->j:I

    .line 88
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->d:Ljava/lang/Runnable;

    .line 89
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/instagram/creation/photo/crop/s;->d:Ljava/lang/Runnable;

    .line 91
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    invoke-virtual {v0}, Lcom/instagram/creation/photo/c/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->h:Lcom/instagram/creation/photo/c/f;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/s;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/instagram/creation/photo/crop/s;->a(Lcom/instagram/creation/photo/c/f;Landroid/graphics/Matrix;)V

    .line 95
    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/s;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/crop/s;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 97
    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/photo/crop/s;->a(Landroid/graphics/Bitmap;I)V

    .line 128
    return-void
.end method
