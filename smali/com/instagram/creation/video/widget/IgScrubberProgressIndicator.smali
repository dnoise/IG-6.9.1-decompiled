.class public Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;
.super Lcom/instagram/common/ui/widget/squareframelayout/SquareFrameLayout;
.source "IgScrubberProgressIndicator.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Landroid/animation/AnimatorSet;

.field private b:Z

.field private c:Z

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/common/ui/widget/squareframelayout/SquareFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b:Z

    .line 26
    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->c:Z

    .line 27
    new-instance v0, Lcom/instagram/creation/video/widget/a;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/widget/a;-><init>(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)V

    iput-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->d:Ljava/lang/Runnable;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->view_ig_scrubber_progress_indicator:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b()V

    .line 50
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b:Z

    .line 83
    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private b()V
    .locals 13

    .prologue
    const-wide/16 v7, 0xfa

    const/4 v6, 0x2

    .line 89
    sget v0, Lcom/facebook/av;->dot1:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    sget v1, Lcom/facebook/av;->dot2:I

    invoke-virtual {p0, v1}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 91
    sget v2, Lcom/facebook/av;->dot3:I

    invoke-virtual {p0, v2}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 93
    const-string v3, "scaleX"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 94
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 97
    const-string v5, "scaleY"

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 99
    const-string v5, "scaleX"

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 103
    const-string v6, "scaleY"

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 106
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 107
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 108
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 109
    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v9, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 115
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 116
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 117
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 118
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 123
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    .line 124
    iget-object v2, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 125
    iget-object v2, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 126
    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 127
    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 128
    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/instagram/creation/video/widget/b;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/widget/b;-><init>(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    return-void

    .line 93
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x71t 0x3dt 0xaat 0x3ft
    .end array-data

    .line 99
    :array_1
    .array-data 0x4
        0x71t 0x3dt 0xaat 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic c(Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->d:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/instagram/common/ui/widget/squareframelayout/SquareFrameLayout;->onAttachedToWindow()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->c:Z

    .line 69
    invoke-virtual {p0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a()V

    .line 72
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-super {p0}, Lcom/instagram/common/ui/widget/squareframelayout/SquareFrameLayout;->onDetachedFromWindow()V

    .line 77
    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->c:Z

    .line 78
    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b:Z

    .line 79
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/instagram/common/ui/widget/squareframelayout/SquareFrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 56
    iget-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->c:Z

    if-eqz v0, :cond_0

    .line 57
    if-nez p2, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->a()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/widget/IgScrubberProgressIndicator;->b:Z

    goto :goto_0
.end method
