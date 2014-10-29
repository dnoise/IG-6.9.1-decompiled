.class public Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;
.super Landroid/widget/ImageView;
.source "SpinnerImageView.java"


# instance fields
.field private a:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a()V

    .line 34
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/aq;->rotate_spinner:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a:Landroid/view/animation/Animation;

    .line 39
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 45
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 48
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->clearAnimation()V

    .line 68
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 69
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 54
    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    if-nez p2, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;->clearAnimation()V

    goto :goto_0
.end method
