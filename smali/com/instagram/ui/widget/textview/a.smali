.class public Lcom/instagram/ui/widget/textview/a;
.super Lcom/instagram/ui/text/FreightSansTextView;
.source "ImageWithFreightSansTextView.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:Z

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 33
    invoke-direct {p0, p1}, Lcom/instagram/ui/text/FreightSansTextView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/ui/widget/textview/a;->b:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/textview/a;->c:Z

    .line 25
    iput v1, p0, Lcom/instagram/ui/widget/textview/a;->d:F

    .line 26
    iput v1, p0, Lcom/instagram/ui/widget/textview/a;->e:F

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/instagram/ui/text/FreightSansTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v2, p0, Lcom/instagram/ui/widget/textview/a;->b:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/textview/a;->c:Z

    .line 25
    iput v1, p0, Lcom/instagram/ui/widget/textview/a;->d:F

    .line 26
    iput v1, p0, Lcom/instagram/ui/widget/textview/a;->e:F

    .line 38
    invoke-direct {p0, p1, p2, v2}, Lcom/instagram/ui/widget/textview/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/ui/text/FreightSansTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/ui/widget/textview/a;->b:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/textview/a;->c:Z

    .line 25
    iput v1, p0, Lcom/instagram/ui/widget/textview/a;->d:F

    .line 26
    iput v1, p0, Lcom/instagram/ui/widget/textview/a;->e:F

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/ui/widget/textview/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 47
    sget-object v0, Lcom/facebook/bb;->ImageWithTextView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    sget v1, Lcom/facebook/bb;->ImageWithTextView_drawable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, v1}, Lcom/instagram/ui/widget/textview/a;->setupDrawable(I)V

    .line 58
    :cond_0
    sget v1, Lcom/facebook/bb;->ImageWithTextView_innerSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/ui/widget/textview/a;->b:I

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 145
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/a;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/a;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/instagram/ui/widget/textview/a;->h:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/a;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/ui/widget/textview/a;->i:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    iget v0, p0, Lcom/instagram/ui/widget/textview/a;->d:F

    iget v1, p0, Lcom/instagram/ui/widget/textview/a;->e:F

    iget v2, p0, Lcom/instagram/ui/widget/textview/a;->f:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, p0, Lcom/instagram/ui/widget/textview/a;->g:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 151
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private setupDrawable(I)V
    .locals 4
    .parameter "resId"

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/widget/textview/a;->a:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/instagram/ui/widget/textview/a;->f:I

    .line 97
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/instagram/ui/widget/textview/a;->g:I

    .line 98
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/a;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/instagram/ui/widget/textview/a;->f:I

    iget v2, p0, Lcom/instagram/ui/widget/textview/a;->g:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/a;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageScaleX()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/instagram/ui/widget/textview/a;->d:F

    return v0
.end method

.method public getImageScaleY()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/instagram/ui/widget/textview/a;->e:F

    return v0
.end method

.method public getInnerSpacing()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/instagram/ui/widget/textview/a;->b:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/instagram/ui/widget/textview/a;->c:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/textview/a;->a(Landroid/graphics/Canvas;)V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget v0, p0, Lcom/instagram/ui/widget/textview/a;->f:I

    iget v1, p0, Lcom/instagram/ui/widget/textview/a;->b:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/ui/text/FreightSansTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    iget-boolean v0, p0, Lcom/instagram/ui/widget/textview/a;->c:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 142
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 103
    iget-boolean v0, p0, Lcom/instagram/ui/widget/textview/a;->c:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/instagram/ui/widget/textview/a;->f:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/instagram/ui/widget/textview/a;->b:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 110
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/instagram/ui/text/FreightSansTextView;->onMeasure(II)V

    .line 112
    iget-boolean v0, p0, Lcom/instagram/ui/widget/textview/a;->c:Z

    if-eqz v0, :cond_1

    .line 113
    iget v0, p0, Lcom/instagram/ui/widget/textview/a;->g:I

    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/a;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 114
    iget v1, p0, Lcom/instagram/ui/widget/textview/a;->f:I

    iget v2, p0, Lcom/instagram/ui/widget/textview/a;->b:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/a;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 115
    invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/textview/a;->setMeasuredDimension(II)V

    .line 118
    iget v2, p0, Lcom/instagram/ui/widget/textview/a;->f:I

    iget v3, p0, Lcom/instagram/ui/widget/textview/a;->b:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/a;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    add-float/2addr v2, v3

    .line 119
    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/instagram/ui/widget/textview/a;->h:F

    .line 120
    iget v1, p0, Lcom/instagram/ui/widget/textview/a;->g:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/instagram/ui/widget/textview/a;->i:F

    .line 122
    :cond_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/textview/a;->setupDrawable(I)V

    .line 90
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/a;->requestLayout()V

    .line 92
    :cond_0
    return-void
.end method

.method public setImageScaleX(F)V
    .locals 1
    .parameter "imageScaleX"

    .prologue
    .line 162
    iget v0, p0, Lcom/instagram/ui/widget/textview/a;->d:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iput p1, p0, Lcom/instagram/ui/widget/textview/a;->d:F

    .line 164
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/a;->invalidate()V

    .line 166
    :cond_0
    return-void
.end method

.method public setImageScaleY(F)V
    .locals 1
    .parameter "imageScaleY"

    .prologue
    .line 173
    iget v0, p0, Lcom/instagram/ui/widget/textview/a;->e:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iput p1, p0, Lcom/instagram/ui/widget/textview/a;->e:F

    .line 175
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/a;->invalidate()V

    .line 177
    :cond_0
    return-void
.end method

.method public setInnerSpacing(I)V
    .locals 0
    .parameter "innerSpacing"

    .prologue
    .line 80
    iput p1, p0, Lcom/instagram/ui/widget/textview/a;->b:I

    .line 81
    return-void
.end method
