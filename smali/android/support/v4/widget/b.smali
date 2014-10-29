.class public final Landroid/support/v4/widget/b;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "DrawerLayout.java"


# instance fields
.field public a:I

.field b:F

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1493
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1479
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/b;->a:I

    .line 1494
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1485
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1479
    iput v1, p0, Landroid/support/v4/widget/b;->a:I

    .line 1487
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->a()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1488
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/b;->a:I

    .line 1489
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1490
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/b;)V
    .locals 1
    .parameter

    .prologue
    .line 1502
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1479
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/b;->a:I

    .line 1503
    iget v0, p1, Landroid/support/v4/widget/b;->a:I

    iput v0, p0, Landroid/support/v4/widget/b;->a:I

    .line 1504
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 1507
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1479
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/b;->a:I

    .line 1508
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 1511
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1479
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/b;->a:I

    .line 1512
    return-void
.end method
