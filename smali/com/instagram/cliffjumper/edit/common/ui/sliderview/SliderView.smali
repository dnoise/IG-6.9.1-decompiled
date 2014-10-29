.class public Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;
.super Landroid/widget/HorizontalScrollView;
.source "SliderView.java"


# instance fields
.field private a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;

.field private b:F

.field private c:Z

.field private d:Z

.field private e:F

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private j:F

.field private k:F

.field private l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

.field private m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z

    .line 34
    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z

    .line 35
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z

    .line 34
    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z

    .line 35
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z

    .line 34
    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z

    .line 35
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;

    .line 51
    return-void
.end method

.method private a()F
    .locals 3

    .prologue
    .line 97
    const v0, 0x3dcccccd

    const/high16 v1, 0x4000

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getMaximumAngle()F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private a(F)F
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x4120

    .line 93
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getMaximumAngle()F

    move-result v0

    mul-float/2addr v0, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method private a(I)F
    .locals 6
    .parameter

    .prologue
    .line 326
    int-to-double v0, p1

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 327
    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->h:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b:F

    div-float/2addr v0, v1

    return v0
.end method

.method private a(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F

    .line 63
    iput p2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F

    .line 64
    return-void
.end method

.method private b(F)F
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getMaximumAngle()F

    move-result v0

    div-float v0, p1, v0

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z

    .line 244
    return-void
.end method

.method private b(FZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4000

    .line 338
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 339
    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 343
    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    .line 344
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 349
    if-eqz p2, :cond_0

    .line 350
    invoke-virtual {p0, v0, v4}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->smoothScrollTo(II)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->scrollTo(II)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z

    .line 248
    return-void
.end method

.method private c(F)Z
    .locals 2
    .parameter

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e80

    mul-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c()V

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

    .line 262
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 264
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->scrollTo(II)V

    .line 266
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->h:I

    .line 267
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b()V

    .line 268
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b:F

    .line 269
    return-void
.end method

.method private d(F)Z
    .locals 2
    .parameter

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f40

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentScrollPercent()F
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(I)F

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(FZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(F)F

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(FZ)V

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->d:Z

    .line 110
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->e:F

    .line 111
    iput-boolean p2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->f:Z

    goto :goto_0
.end method

.method public fling(I)V
    .locals 0
    .parameter

    .prologue
    .line 133
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 213
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 205
    :pswitch_0
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 219
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z

    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->d()V

    .line 221
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getMaximumAngle()F

    move-result v0

    .line 222
    const/high16 v1, -0x3e10

    div-float/2addr v1, v0

    const/high16 v2, 0x41f0

    div-float v0, v2, v0

    invoke-direct {p0, v1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(FF)V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z

    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->d:Z

    if-eqz v0, :cond_1

    .line 228
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->e:F

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(F)F

    move-result v0

    iget-boolean v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->f:Z

    invoke-direct {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(FZ)V

    .line 232
    iput-boolean v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->d:Z

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->e:F

    .line 234
    iput-boolean v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->f:Z

    .line 236
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 71
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    invoke-virtual {p0, v3}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getMeasuredWidth()I

    move-result v2

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v3, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getChildMeasureSpec(III)I

    move-result v0

    .line 77
    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 79
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 81
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 303
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z

    if-eqz v0, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getCurrentScrollPercent()F

    move-result v0

    .line 305
    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 306
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F

    invoke-direct {p0, v0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(FZ)V

    .line 307
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F

    .line 315
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(F)F

    move-result v0

    invoke-interface {v1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;->a(F)V

    .line 319
    :cond_1
    return-void

    .line 308
    :cond_2
    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 309
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F

    invoke-direct {p0, v0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(FZ)V

    .line 310
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    iput-boolean v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->g:Z

    .line 196
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->m:I

    .line 197
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_2
    return v0

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;->a()V

    .line 142
    :cond_1
    iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->g:Z

    .line 143
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    :pswitch_1
    iput-boolean v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->g:Z

    .line 148
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 149
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 150
    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->m:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    sub-int v0, v2, v0

    .line 151
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getCurrentScrollPercent()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(F)F

    move-result v2

    .line 152
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(F)F

    move-result v0

    .line 154
    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f40

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 156
    invoke-direct {p0, v5, v4}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(FZ)V

    move v0, v1

    .line 157
    goto :goto_2

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;->b()V

    .line 166
    :cond_2
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->g:Z

    if-eqz v0, :cond_3

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;

    if-eqz v0, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a()F

    move-result v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, -0x1

    .line 173
    invoke-virtual {p0, v0, v4}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->scrollBy(II)V

    .line 185
    :cond_3
    :goto_3
    iput-boolean v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->g:Z

    .line 189
    :pswitch_3
    iput v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->m:I

    .line 190
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 175
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->d(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;

    if-eqz v0, :cond_3

    .line 177
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a()F

    move-result v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 180
    invoke-virtual {p0, v0, v4}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->scrollBy(II)V

    goto :goto_3

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSlideListener(Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;

    .line 240
    return-void
.end method
