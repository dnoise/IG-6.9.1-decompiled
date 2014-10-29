.class public final Lcom/instagram/creation/base/ui/g;
.super Landroid/widget/RadioButton;
.source "FilterTile.java"


# static fields
.field private static final a:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private final b:Lcom/instagram/creation/base/ui/h;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint$FontMetrics;

.field private final h:F

.field private final i:F

.field private final j:F

.field private final k:Z

.field private final l:Landroid/graphics/Rect;

.field private final m:Landroid/graphics/RectF;

.field private final n:Landroid/graphics/RectF;

.field private final o:Landroid/graphics/RectF;

.field private final p:Landroid/graphics/RectF;

.field private q:F

.field private r:F

.field private final s:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/instagram/creation/base/ui/g;->a:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/base/ui/h;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v1, 0xc

    const/4 v4, 0x1

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->f:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->g:Landroid/graphics/Paint$FontMetrics;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->l:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->m:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->n:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->o:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->p:Landroid/graphics/RectF;

    .line 54
    invoke-virtual {p0, v4}, Lcom/instagram/creation/base/ui/g;->setClickable(Z)V

    .line 55
    invoke-virtual {p0, v4}, Lcom/instagram/creation/base/ui/g;->setFocusable(Z)V

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/instagram/creation/base/ui/g;->a()V

    .line 61
    :cond_0
    iput-object p2, p0, Lcom/instagram/creation/base/ui/g;->b:Lcom/instagram/creation/base/ui/h;

    .line 62
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->b:Lcom/instagram/creation/base/ui/h;

    invoke-virtual {v0}, Lcom/instagram/creation/base/ui/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->d:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->b:Lcom/instagram/creation/base/ui/h;

    invoke-virtual {v0}, Lcom/instagram/creation/base/ui/h;->c()I

    move-result v0

    .line 65
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Lcom/instagram/creation/base/ui/g;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 67
    iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->c:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 70
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v2

    iput v2, p0, Lcom/instagram/creation/base/ui/g;->i:F

    .line 71
    const/high16 v2, 0x3fc0

    invoke-static {v0, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;F)F

    move-result v2

    iput v2, p0, Lcom/instagram/creation/base/ui/g;->j:F

    .line 72
    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v0

    iput v0, p0, Lcom/instagram/creation/base/ui/g;->s:F

    .line 74
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 79
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 80
    iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->g:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 84
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 86
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->g:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->g:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/base/ui/g;->h:F

    .line 87
    return-void

    .line 80
    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/base/ui/g;->setLayerType(ILandroid/graphics/Paint;)V

    .line 211
    return-void
.end method


# virtual methods
.method public final getFilter()Lcom/instagram/creation/base/ui/h;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->b:Lcom/instagram/creation/base/ui/h;

    return-object v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x4080

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 171
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 172
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    const v1, -0xbdbdbe

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 180
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    iget-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->m:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->d:Ljava/lang/String;

    iget v1, p0, Lcom/instagram/creation/base/ui/g;->q:F

    iget v2, p0, Lcom/instagram/creation/base/ui/g;->r:F

    iget-object v3, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    sget-object v1, Lcom/instagram/creation/base/ui/g;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 195
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/creation/base/ui/g;->i:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 198
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 201
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/creation/base/ui/g;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 205
    :cond_1
    return-void

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/as;->white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 11
    .parameter
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x4000

    .line 95
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 97
    iget-boolean v2, p0, Lcom/instagram/creation/base/ui/g;->k:Z

    if-eqz v2, :cond_0

    .line 98
    iget v2, p0, Lcom/instagram/creation/base/ui/g;->s:F

    iget v3, p0, Lcom/instagram/creation/base/ui/g;->h:F

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/16 v3, 0x58

    invoke-static {v2, v3}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 105
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v8

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 106
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v8

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 108
    iget-boolean v3, p0, Lcom/instagram/creation/base/ui/g;->k:Z

    if-eqz v3, :cond_1

    .line 110
    iget v3, p0, Lcom/instagram/creation/base/ui/g;->s:F

    iget v4, p0, Lcom/instagram/creation/base/ui/g;->h:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 113
    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/instagram/creation/base/ui/g;->setMeasuredDimension(II)V

    .line 116
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I

    move-result v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I

    move-result v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 122
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 125
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->n:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 126
    iget v0, p0, Lcom/instagram/creation/base/ui/g;->i:F

    div-float/2addr v0, v10

    .line 127
    iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->o:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 128
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->p:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->o:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 129
    iget v0, p0, Lcom/instagram/creation/base/ui/g;->j:F

    iget v2, p0, Lcom/instagram/creation/base/ui/g;->i:F

    add-float/2addr v0, v2

    div-float/2addr v0, v10

    .line 130
    iget-object v2, p0, Lcom/instagram/creation/base/ui/g;->p:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 133
    iget-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v8, v10

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v8

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v8

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 141
    iget-object v9, p0, Lcom/instagram/creation/base/ui/g;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v8, v10

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v3, v8

    const/4 v5, 0x0

    const/high16 v6, -0x7800

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    div-float v1, v8, v10

    add-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/base/ui/g;->q:F

    .line 154
    iget-object v0, p0, Lcom/instagram/creation/base/ui/g;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/instagram/creation/base/ui/g;->g:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/base/ui/g;->r:F

    .line 156
    iget-boolean v0, p0, Lcom/instagram/creation/base/ui/g;->k:Z

    if-eqz v0, :cond_3

    .line 158
    iget v0, p0, Lcom/instagram/creation/base/ui/g;->r:F

    iget v1, p0, Lcom/instagram/creation/base/ui/g;->s:F

    iget v2, p0, Lcom/instagram/creation/base/ui/g;->h:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/base/ui/g;->r:F

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_3
    iget v0, p0, Lcom/instagram/creation/base/ui/g;->r:F

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/base/ui/g;->r:F

    goto :goto_0
.end method
