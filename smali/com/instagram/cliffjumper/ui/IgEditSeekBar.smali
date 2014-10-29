.class public Lcom/instagram/cliffjumper/ui/IgEditSeekBar;
.super Landroid/widget/FrameLayout;
.source "IgEditSeekBar.java"

# interfaces
.implements Lcom/facebook/f/a/c;
.implements Lcom/facebook/f/a/d;
.implements Lcom/facebook/f/a/f;


# instance fields
.field private a:Lcom/facebook/f/a/a;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:Lcom/instagram/cliffjumper/ui/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/16 v0, 0x64

    iput v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->m:I

    .line 62
    new-instance v0, Lcom/facebook/f/a/a;

    invoke-direct {v0, p1}, Lcom/facebook/f/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;

    .line 63
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/f/a/h;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/f/a/h;->c:Lcom/facebook/f/a/h;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/facebook/f/a/h;->d:Lcom/facebook/f/a/h;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/f/a/a;->a([Lcom/facebook/f/a/h;)V

    .line 64
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;

    invoke-virtual {v0, p0}, Lcom/facebook/f/a/a;->a(Lcom/facebook/f/a/d;)V

    .line 65
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;

    invoke-virtual {v0, p0}, Lcom/facebook/f/a/a;->a(Lcom/facebook/f/a/c;)V

    .line 66
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;

    invoke-virtual {v0, p0}, Lcom/facebook/f/a/a;->a(Lcom/facebook/f/a/f;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->b:Landroid/graphics/Paint;

    .line 70
    iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->b:Landroid/graphics/Paint;

    sget v2, Lcom/facebook/as;->seek_bar_inactive_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->b:Landroid/graphics/Paint;

    sget v2, Lcom/facebook/at;->seek_bar_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c:Landroid/graphics/Paint;

    .line 74
    iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c:Landroid/graphics/Paint;

    sget v2, Lcom/facebook/as;->seek_bar_active_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c:Landroid/graphics/Paint;

    sget v2, Lcom/facebook/at;->seek_bar_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;

    .line 78
    iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;

    sget v2, Lcom/facebook/as;->seek_bar_active_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;

    sget v2, Lcom/facebook/at;->seek_bar_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 81
    iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    iget-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 84
    sget v1, Lcom/facebook/at;->seek_bar_root_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->g:I

    .line 85
    sget v1, Lcom/facebook/at;->seek_bar_knob_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->h:I

    .line 86
    sget v1, Lcom/facebook/at;->seek_bar_tappable_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->i:I

    .line 87
    sget v1, Lcom/facebook/at;->seek_bar_default_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->j:I

    .line 89
    sget v1, Lcom/facebook/au;->seek_bar_root:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->e:Landroid/graphics/drawable/Drawable;

    .line 90
    sget v1, Lcom/facebook/au;->seek_bar_knob:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->f:Landroid/graphics/drawable/Drawable;

    .line 91
    return-void
.end method

.method private a(I)F
    .locals 3
    .parameter

    .prologue
    .line 329
    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I

    move-result v0

    :goto_0
    add-int/2addr v0, p1

    .line 331
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 332
    iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F

    .line 334
    :goto_1
    return v0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    .line 334
    :cond_1
    int-to-float v0, v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getSeekerBarSegmentSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F

    add-float/2addr v0, v1

    goto :goto_1
.end method

.method private static a(Landroid/graphics/drawable/Drawable;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    div-int/lit8 v0, p1, 0x2

    sub-int v0, p2, v0

    div-int/lit8 v1, p1, 0x2

    sub-int v1, p3, v1

    div-int/lit8 v2, p1, 0x2

    add-int/2addr v2, p2

    div-int/lit8 v3, p1, 0x2

    add-int/2addr v3, p3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 373
    return-void
.end method

.method private c(F)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->l:F

    add-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentPositionWithBounds(F)V

    .line 144
    return-void
.end method

.method private c(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0, p2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 187
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCurrentPositionAsValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentValue(I)V

    .line 192
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/ui/a;->b()V

    .line 195
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCurrentPositionAsValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentValue(I)V

    goto :goto_1
.end method

.method private d(F)Z
    .locals 2
    .parameter

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->i:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCenterY()I
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getCurrentPositionAsValue()I
    .locals 3

    .prologue
    .line 313
    iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->l:F

    iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getSeekerBarSegmentSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 315
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_0
    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I

    move-result v0

    :goto_1
    sub-int v0, v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I

    move-result v0

    neg-int v0, v0

    goto :goto_1
.end method

.method private getFatZeroExtraSegmentSize()I
    .locals 2

    .prologue
    .line 347
    iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroRadiusSegmentSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getFatZeroRadiusSegmentSize()I
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->m:I

    mul-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getKnobCenterX()I
    .locals 3

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLeftBound()I

    move-result v0

    iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->l:F

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLengthPx()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getLeftBound()I
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->h:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getLengthPx()I
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->h:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->j:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLeftBound()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRootCenterX()I
    .locals 3

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLeftBound()I

    move-result v0

    iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLengthPx()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getSeekerBarSegmentSize()I
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->m:I

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getFatZeroExtraSegmentSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private setCurrentPositionWithBounds(F)V
    .locals 2
    .parameter "position"

    .prologue
    .line 203
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->l:F

    .line 204
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCurrentPositionAsValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/instagram/cliffjumper/ui/a;->a(I)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->invalidate()V

    .line 208
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/ui/a;->a()V

    .line 130
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d(F)Z

    move-result v0

    return v0
.end method

.method public final a(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c(FF)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/ui/a;->b()V

    .line 152
    :cond_0
    return-void
.end method

.method public final b(F)V
    .locals 1
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLengthPx()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c(F)V

    .line 136
    return-void
.end method

.method public final b(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c(FF)Z

    .line 171
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/ui/a;->b()V

    .line 161
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLeftBound()I

    move-result v0

    int-to-float v1, v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I

    move-result v0

    int-to-float v2, v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLeftBound()I

    move-result v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getLengthPx()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 239
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getRootCenterX()I

    move-result v0

    int-to-float v1, v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I

    move-result v0

    int-to-float v2, v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getKnobCenterX()I

    move-result v0

    int-to-float v3, v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 247
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->e:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->g:I

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getRootCenterX()I

    move-result v2

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a(Landroid/graphics/drawable/Drawable;III)V

    .line 252
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->f:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->h:I

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getKnobCenterX()I

    move-result v2

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a(Landroid/graphics/drawable/Drawable;III)V

    .line 259
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCurrentPositionAsValue()I

    move-result v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getKnobCenterX()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCenterY()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;

    invoke-virtual {v0, p1}, Lcom/facebook/f/a/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a:Lcom/facebook/f/a/a;

    invoke-virtual {v0, p1}, Lcom/facebook/f/a/a;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCurrentValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->a(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentPositionWithBounds(F)V

    .line 109
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/instagram/cliffjumper/ui/a;)V
    .locals 2
    .parameter "onSeekBarChangeListener"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    .line 391
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->n:Lcom/instagram/cliffjumper/ui/a;

    invoke-direct {p0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->getCurrentPositionAsValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/instagram/cliffjumper/ui/a;->a(I)V

    .line 394
    :cond_0
    return-void
.end method

.method public setRootPosition(F)V
    .locals 0
    .parameter "position"

    .prologue
    .line 99
    iput p1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->k:F

    .line 100
    return-void
.end method

.method public setValueRangeSize(I)V
    .locals 0
    .parameter "rangeSize"

    .prologue
    .line 386
    iput p1, p0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->m:I

    .line 387
    return-void
.end method
