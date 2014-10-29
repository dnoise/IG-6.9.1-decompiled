.class public Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PrimitiveFrameLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v11, -0x1

    const/4 v3, 0x0

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 81
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->getConsiderGoneChildrenWhenMeasuring()Z

    move-result v9

    .line 40
    invoke-virtual {p0}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->getChildCount()I

    move-result v10

    move v8, v3

    move v6, v3

    move v7, v3

    .line 45
    :goto_1
    if-ge v8, v10, :cond_4

    .line 46
    invoke-virtual {p0, v8}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 47
    if-nez v9, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_6

    :cond_1
    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v2, v11, :cond_2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v2, v11, :cond_3

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "match_parent not supported for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    move v0, v2

    .line 45
    :goto_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v6, v0

    move v7, v1

    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {p0}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    .line 66
    invoke-virtual {p0}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    .line 69
    invoke-virtual {p0}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 70
    invoke-virtual {p0}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 73
    invoke-virtual {p0}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 76
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 79
    :cond_5
    invoke-static {v0, p1}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/ui/framelayout/PrimitiveFrameLayout;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_6
    move v0, v6

    move v1, v7

    goto :goto_2
.end method
