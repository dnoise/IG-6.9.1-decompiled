.class public Lcom/instagram/ui/widget/textview/IgTextLayoutView;
.super Landroid/view/View;
.source "IgTextLayoutView.java"


# instance fields
.field private a:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->setFocusable(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 111
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->setMeasuredDimension(II)V

    .line 116
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    if-nez v0, :cond_0

    move v0, v1

    .line 89
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 60
    if-eq v3, v2, :cond_1

    if-nez v3, :cond_3

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 65
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    .line 66
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 68
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getScrollX()I

    move-result v5

    add-int/2addr v0, v5

    .line 69
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 71
    iget-object v5, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    .line 75
    iget-object v5, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    int-to-float v6, v0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    int-to-float v5, v0

    iget-object v6, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    .line 77
    iget-object v5, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    int-to-float v0, v0

    invoke-virtual {v5, v4, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 78
    iget-object v0, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v4, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 81
    array-length v4, v0

    if-eqz v4, :cond_3

    .line 82
    if-ne v3, v2, :cond_2

    .line 83
    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_2
    move v0, v2

    .line 85
    goto :goto_0

    :cond_3
    move v0, v1

    .line 89
    goto :goto_0
.end method

.method public setTextLayout(Landroid/text/Layout;)V
    .locals 2
    .parameter "layout"

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CommentText must be spanned text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->a:Landroid/text/Layout;

    .line 50
    invoke-virtual {p0}, Lcom/instagram/ui/widget/textview/IgTextLayoutView;->requestLayout()V

    .line 51
    return-void
.end method
