.class public Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
.super Landroid/view/View;
.source "AngleRulerView.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint$FontMetrics;

.field private final d:I

.field private final e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    .line 34
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->d:I

    .line 35
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->e:I

    .line 50
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    .line 34
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->d:I

    .line 35
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->e:I

    .line 56
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    .line 34
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->d:I

    .line 35
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->e:I

    .line 62
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a()V

    .line 63
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 66
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->sliderview_ruler_angle_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 69
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 70
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 73
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 74
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    .line 75
    invoke-static {v0, v3}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    .line 76
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->i:I

    .line 77
    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->j:I

    .line 79
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    sget v1, Lcom/facebook/at;->angle_ruler_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->k:I

    .line 81
    sget v1, Lcom/facebook/at;->angle_ruler_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->l:I

    .line 82
    sget v1, Lcom/facebook/at;->angle_ruler_small_line_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->m:I

    .line 86
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->sliderview_pointer_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 87
    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    rem-int/lit8 v1, v1, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-eq v1, v0, :cond_0

    .line 88
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    .line 90
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 134
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float v1, p2, v0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    add-float v3, p2, v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getLineBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IFF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    if-ltz p2, :cond_0

    .line 165
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 167
    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 169
    sub-float v1, v2, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr p3, v1

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 173
    return-void
.end method

.method private b(Landroid/graphics/Canvas;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    const/high16 v0, 0x3f80

    add-float v3, p2, v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getLineBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    return-void
.end method

.method private getLineBottom()I
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->l:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getMaximumAngle()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->f:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->k:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 110
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->i:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 112
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->f:I

    if-gt v0, v3, :cond_2

    .line 113
    iget v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->f:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    .line 114
    iget v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    mul-int/2addr v4, v0

    int-to-float v4, v4

    .line 116
    rem-int/lit8 v5, v3, 0x5

    if-nez v5, :cond_1

    .line 117
    invoke-direct {p0, p1, v4, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a(Landroid/graphics/Canvas;FF)V

    .line 120
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41f0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 121
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a(Landroid/graphics/Canvas;IFF)V

    .line 112
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->j:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->l:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->m:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 128
    invoke-direct {p0, p1, v4, v3}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_1

    .line 131
    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 99
    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    .line 102
    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    div-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->f:I

    .line 104
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->f:I

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->setMeasuredDimension(II)V

    .line 105
    return-void
.end method
