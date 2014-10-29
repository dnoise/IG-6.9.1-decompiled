.class public Lcom/instagram/ui/widget/switchbutton/IgSwitch;
.super Landroid/widget/CompoundButton;
.source "IgSwitch.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/Rect;

.field private e:I

.field private f:F

.field private g:I

.field private h:Landroid/view/VelocityTracker;

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;

    .line 57
    invoke-direct {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;

    .line 62
    invoke-direct {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;

    .line 67
    invoke-direct {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a()V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/instagram/ui/widget/switchbutton/IgSwitch;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F

    return p1
.end method

.method static synthetic a(Lcom/instagram/ui/widget/switchbutton/IgSwitch;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I

    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->setClickable(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->m:I

    .line 77
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/au;->toggle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/au;->toggle_active:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/au;->toggle_nub:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->e:I

    .line 82
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I

    .line 83
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 254
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 255
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 256
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 257
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 258
    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->n:Z

    .line 289
    invoke-virtual {p0, p1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->setChecked(Z)V

    .line 290
    return-void
.end method

.method private a(FF)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I

    sub-int/2addr v0, v1

    .line 174
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 175
    iget v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->e:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 176
    iget-object v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 177
    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    int-to-float v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    int-to-float v0, v3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    iput v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 270
    :goto_0
    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a(Landroid/view/MotionEvent;)V

    .line 272
    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 275
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 276
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->m:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 277
    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 281
    :goto_1
    invoke-direct {p0, v1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a(Z)V

    .line 285
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 268
    goto :goto_0

    :cond_1
    move v1, v2

    .line 277
    goto :goto_1

    .line 279
    :cond_2
    invoke-direct {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getTargetCheckedState()Z

    move-result v1

    goto :goto_1

    .line 283
    :cond_3
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a(Z)V

    goto :goto_2
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F

    iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 163
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;

    .line 167
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F

    iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 116
    iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 118
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 125
    iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->e:I

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 144
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 146
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 154
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 156
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->setMeasuredDimension(II)V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    .line 182
    iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 183
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 188
    packed-switch v1, :pswitch_data_0

    .line 250
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    :goto_1
    return v0

    .line 190
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 192
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I

    .line 194
    iput v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->i:F

    .line 195
    iput v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->j:F

    goto :goto_0

    .line 201
    :pswitch_2
    iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 207
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 209
    iget v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->i:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_3

    iget v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->j:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 211
    :cond_3
    iput v5, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I

    .line 213
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 214
    iput v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->i:F

    .line 215
    iput v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->j:F

    goto :goto_1

    .line 222
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 223
    iget v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->i:F

    sub-float v2, v1, v2

    .line 224
    const/4 v3, 0x0

    iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F

    add-float/2addr v2, v4

    iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 225
    iget v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    .line 226
    iput v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F

    .line 227
    iput v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->i:F

    .line 228
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->invalidate()V

    goto :goto_1

    .line 238
    :pswitch_5
    iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I

    if-ne v1, v5, :cond_4

    .line 239
    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 242
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I

    .line 243
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 244
    iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 201
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->n:Z

    .line 88
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 95
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I

    .line 97
    :goto_0
    iget-boolean v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->n:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->clearAnimation()V

    .line 99
    new-instance v2, Lcom/instagram/ui/widget/switchbutton/a;

    iget v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F

    int-to-float v0, v0

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/instagram/ui/widget/switchbutton/a;-><init>(Lcom/instagram/ui/widget/switchbutton/IgSwitch;FFB)V

    invoke-virtual {p0, v2}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    :goto_1
    iput-boolean v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->n:Z

    .line 106
    return-void

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0

    .line 101
    :cond_1
    int-to-float v0, v0

    iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F

    .line 102
    invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->invalidate()V

    goto :goto_1
.end method
