.class public Lcom/instagram/feed/survey/widget/BoundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "BoundedLinearLayout.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget-object v0, Lcom/facebook/bb;->BoundedView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 20
    sget v1, Lcom/facebook/bb;->BoundedView_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->a:I

    .line 21
    sget v1, Lcom/facebook/bb;->BoundedView_maxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->b:I

    .line 22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 29
    iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->a:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->a:I

    if-ge v1, v0, :cond_0

    .line 30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 31
    iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->a:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 34
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 35
    iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->b:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->b:I

    if-ge v1, v0, :cond_1

    .line 36
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 37
    iget v1, p0, Lcom/instagram/feed/survey/widget/BoundedLinearLayout;->b:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 39
    .end local p2
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 40
    return-void
.end method
