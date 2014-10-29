.class public Lcom/instagram/creation/base/ui/GridLinesView;
.super Landroid/view/View;
.source "GridLinesView.java"


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/Rect;

.field private final c:Lcom/instagram/creation/base/ui/i;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/base/ui/GridLinesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/creation/base/ui/GridLinesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->d:I

    .line 36
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/GridLinesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->a:I

    .line 38
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/GridLinesView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/bb;->GridLinesView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    sget v1, Lcom/facebook/bb;->GridLinesView_lines:I

    iget v2, p0, Lcom/instagram/creation/base/ui/GridLinesView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->d:I

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->b:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Lcom/instagram/creation/base/ui/i;

    iget v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->d:I

    iget v2, p0, Lcom/instagram/creation/base/ui/GridLinesView;->a:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/creation/base/ui/i;-><init>(IF)V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:Lcom/instagram/creation/base/ui/i;

    .line 48
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:Lcom/instagram/creation/base/ui/i;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/base/ui/i;->a(Landroid/graphics/Canvas;)V

    .line 72
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 55
    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/GridLinesView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/GridLinesView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/base/ui/GridLinesView;->setMeasuredDimension(II)V

    .line 56
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 62
    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:Lcom/instagram/creation/base/ui/i;

    iget-object v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/base/ui/i;->a(Landroid/graphics/Rect;)V

    .line 65
    return-void
.end method
