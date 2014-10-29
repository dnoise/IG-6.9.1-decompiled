.class public Lcom/instagram/android/people/widget/PhotoScrollView;
.super Landroid/widget/ScrollView;
.source "PhotoScrollView.java"


# instance fields
.field private a:F

.field private b:Lcom/instagram/common/ui/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->a()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->a()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->a()V

    .line 19
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PhotoScrollView;)F
    .locals 1
    .parameter

    .prologue
    .line 11
    iget v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->a:F

    return v0
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 34
    return-void
.end method

.method private a(F)V
    .locals 3
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getChildCount()I

    move-result v0

    .line 77
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getHeight()I

    move-result v1

    .line 82
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 84
    const/4 v2, 0x0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PhotoScrollView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PhotoScrollView;->a(F)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 70
    iget-object v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->b:Lcom/instagram/common/ui/b/a;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->b:Lcom/instagram/common/ui/b/a;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getMeasuredHeight()I

    invoke-interface {v0, v1}, Lcom/instagram/common/ui/b/a;->a(I)V

    .line 73
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 54
    new-instance v0, Lcom/instagram/android/people/widget/n;

    invoke-direct {v0, p0}, Lcom/instagram/android/people/widget/n;-><init>(Lcom/instagram/android/people/widget/PhotoScrollView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/android/people/widget/PhotoScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public setOnMeasureListener(Lcom/instagram/common/ui/b/a;)V
    .locals 0
    .parameter "onMeasureListener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->b:Lcom/instagram/common/ui/b/a;

    .line 64
    return-void
.end method

.method public setScrollTarget(F)V
    .locals 1
    .parameter "target"

    .prologue
    .line 37
    iput p1, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->a:F

    .line 38
    iget v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->a:F

    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->a(F)V

    .line 39
    return-void
.end method
