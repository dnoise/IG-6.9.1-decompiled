.class public final Lcom/instagram/creation/video/widget/c;
.super Landroid/graphics/drawable/Drawable;
.source "IgScrubberThumb.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:F

.field private final f:F

.field private final g:Landroid/graphics/RectF;

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/Bitmap;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    sget v0, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/widget/c;->b:I

    .line 51
    sget v0, Lcom/facebook/as;->black:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/widget/c;->c:I

    .line 52
    sget v0, Lcom/facebook/as;->white:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/widget/c;->d:I

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/widget/c;->g:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/widget/c;->h:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/widget/c;->i:Landroid/graphics/RectF;

    .line 58
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;F)F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/widget/c;->e:F

    .line 59
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x3fc0

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;F)F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/widget/c;->f:F

    .line 60
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput p1, p0, Lcom/instagram/creation/video/widget/c;->l:I

    .line 108
    iput p2, p0, Lcom/instagram/creation/video/widget/c;->k:I

    .line 109
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/creation/video/widget/c;->j:Landroid/graphics/Bitmap;

    .line 103
    invoke-virtual {p0}, Lcom/instagram/creation/video/widget/c;->invalidateSelf()V

    .line 104
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x4080

    .line 81
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/creation/video/widget/c;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/creation/video/widget/c;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 87
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/creation/video/widget/c;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/creation/video/widget/c;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->j:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/instagram/creation/video/widget/c;->i:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/creation/video/widget/c;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/instagram/creation/video/widget/c;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/instagram/creation/video/widget/c;->k:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/instagram/creation/video/widget/c;->l:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, -0x3

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "bounds"

    .prologue
    const/high16 v2, 0x4000

    .line 64
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 66
    iget v0, p0, Lcom/instagram/creation/video/widget/c;->e:F

    div-float/2addr v0, v2

    .line 67
    iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 68
    iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 70
    iget v0, p0, Lcom/instagram/creation/video/widget/c;->e:F

    iget v1, p0, Lcom/instagram/creation/video/widget/c;->f:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 71
    iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->h:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 72
    iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->h:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 74
    iget v0, p0, Lcom/instagram/creation/video/widget/c;->e:F

    iget v1, p0, Lcom/instagram/creation/video/widget/c;->f:F

    add-float/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 76
    iget-object v1, p0, Lcom/instagram/creation/video/widget/c;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 77
    return-void
.end method

.method public final setAlpha(I)V
    .locals 2
    .parameter

    .prologue
    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setAlpha not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setColorFilter not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
