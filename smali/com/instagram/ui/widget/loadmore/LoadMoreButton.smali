.class public Lcom/instagram/ui/widget/loadmore/LoadMoreButton;
.super Landroid/widget/ViewAnimator;
.source "LoadMoreButton.java"


# instance fields
.field a:Lcom/instagram/ui/widget/loadmore/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private a()Landroid/view/View;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;-><init>(Landroid/content/Context;)V

    .line 111
    sget v1, Lcom/facebook/au;->spinner_large:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    return-object v0
.end method

.method private b()Landroid/view/View;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/au;->loadmore_add_compound:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    new-instance v1, Lcom/instagram/ui/widget/loadmore/a;

    invoke-direct {v1, p0}, Lcom/instagram/ui/widget/loadmore/a;-><init>(Lcom/instagram/ui/widget/loadmore/LoadMoreButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-object v0
.end method

.method private static b(Lcom/instagram/ui/widget/loadmore/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->o_()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Landroid/view/View;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/au;->loadmore_icon_refresh_compound:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    new-instance v1, Lcom/instagram/ui/widget/loadmore/b;

    invoke-direct {v1, p0}, Lcom/instagram/ui/widget/loadmore/b;-><init>(Lcom/instagram/ui/widget/loadmore/LoadMoreButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-object v0
.end method

.method private c(Lcom/instagram/ui/widget/loadmore/c;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 63
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 69
    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->e(Lcom/instagram/ui/widget/loadmore/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-direct {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-direct {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-direct {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method

.method private d(Lcom/instagram/ui/widget/loadmore/c;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 76
    invoke-static {p1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->b(Lcom/instagram/ui/widget/loadmore/c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setVisibility(I)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0, v2}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setVisibility(I)V

    .line 85
    invoke-interface {p1}, Lcom/instagram/ui/widget/loadmore/c;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {p0, v1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0, v1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->removeViewAt(I)V

    .line 89
    :cond_2
    invoke-interface {p1}, Lcom/instagram/ui/widget/loadmore/c;->h()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->addView(Landroid/view/View;I)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-interface {p1}, Lcom/instagram/ui/widget/loadmore/c;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_0

    .line 93
    :cond_4
    invoke-interface {p1}, Lcom/instagram/ui/widget/loadmore/c;->o_()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_0

    .line 95
    :cond_5
    invoke-interface {p1}, Lcom/instagram/ui/widget/loadmore/c;->f()Z

    move-result v0

    if-nez v0, :cond_6

    .line 96
    invoke-virtual {p0, v2}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_0

    .line 97
    :cond_6
    invoke-interface {p1}, Lcom/instagram/ui/widget/loadmore/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method private e(Lcom/instagram/ui/widget/loadmore/c;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 103
    invoke-interface {p1, p0}, Lcom/instagram/ui/widget/loadmore/c;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->load_more_empty:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/instagram/ui/widget/loadmore/c;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->a:Lcom/instagram/ui/widget/loadmore/c;

    .line 41
    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->c(Lcom/instagram/ui/widget/loadmore/c;)V

    .line 45
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->d(Lcom/instagram/ui/widget/loadmore/c;)V

    .line 46
    return-void
.end method
