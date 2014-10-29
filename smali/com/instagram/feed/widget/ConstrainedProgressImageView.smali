.class public Lcom/instagram/feed/widget/ConstrainedProgressImageView;
.super Lcom/instagram/feed/widget/a;
.source "ConstrainedProgressImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/instagram/feed/widget/a;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/instagram/feed/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter

    .prologue
    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 28
    invoke-virtual {p0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 29
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p1}, Landroid/view/View;->measure(II)V

    .line 30
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, p1, v2}, Landroid/view/View;->measure(II)V

    .line 33
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p1}, Landroid/view/View;->measure(II)V

    .line 36
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->setMeasuredDimension(II)V

    .line 37
    return-void
.end method
