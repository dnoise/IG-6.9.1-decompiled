.class public Lcom/instagram/creation/video/ui/CamcorderBlinker;
.super Landroid/widget/ImageView;
.source "CamcorderBlinker.java"

# interfaces
.implements Lcom/instagram/creation/video/a/d;
.implements Lcom/instagram/creation/video/c;


# instance fields
.field private a:Lcom/instagram/creation/video/a;

.field private b:Landroid/view/animation/Animation;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->c:I

    .line 33
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->d()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->c:I

    .line 38
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->d()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->c:I

    .line 43
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->d()V

    .line 44
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/aq;->camcorder_blinker:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b:Landroid/view/animation/Animation;

    .line 48
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 60
    iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a:Lcom/instagram/creation/video/a;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 63
    iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->c()I

    move-result v0

    .line 66
    int-to-double v2, v0

    const-wide v4, 0x40cd4c0000000000L

    div-double/2addr v2, v4

    iget v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->c:I

    int-to-double v4, v0

    mul-double/2addr v2, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v0

    float-to-double v4, v0

    sub-double/2addr v2, v4

    .line 70
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 71
    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->setVisibility(I)V

    .line 83
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b()V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->f()V

    .line 55
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->e()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 102
    sget v0, Lcom/instagram/creation/video/i/c;->c:I

    if-ne p1, v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b()V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->f()V

    goto :goto_0
.end method

.method public final a(Lcom/instagram/creation/video/i/a;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->clearAnimation()V

    .line 77
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->setVisibility(I)V

    .line 78
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 121
    sget v0, Lcom/instagram/creation/video/a/e;->b:I

    if-ne p1, v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->clearAnimation()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a:Lcom/instagram/creation/video/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public final b(Lcom/instagram/creation/video/i/a;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->f()V

    .line 97
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->e()V

    .line 98
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b()V

    .line 117
    return-void
.end method

.method public final c(Lcom/instagram/creation/video/i/a;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->e()V

    .line 112
    return-void
.end method

.method public setClipStackManager(Lcom/instagram/creation/video/a;)V
    .locals 0
    .parameter "clipStackManager"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a:Lcom/instagram/creation/video/a;

    .line 87
    invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->e()V

    .line 88
    return-void
.end method
