.class public Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
.super Landroid/widget/FrameLayout;
.source "IgAnimatingMapItem.java"


# static fields
.field public static final a:Lcom/instagram/android/b/b;

.field public static f:I


# instance fields
.field protected b:Landroid/view/animation/AnimationSet;

.field public c:Lcom/instagram/android/maps/ui/d;

.field public d:Lcom/instagram/android/maps/ui/f;

.field public e:Lcom/instagram/android/maps/ui/e;

.field private g:I

.field private h:I

.field private i:F

.field private j:Z

.field private k:Z

.field private l:Lcom/instagram/ui/a/a;

.field private m:Lcom/instagram/android/maps/ui/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/instagram/android/b/b;

    invoke-direct {v0}, Lcom/instagram/android/b/b;-><init>()V

    sput-object v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a:Lcom/instagram/android/b/b;

    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->k:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->k:Z

    .line 57
    invoke-direct {p0, p2}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a(Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->k:Z

    .line 63
    invoke-direct {p0, p2}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a(Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/bb;->IgAnimatingMapItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    sget v1, Lcom/facebook/bb;->IgAnimatingMapItem_scale:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->k:Z

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x12c

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 79
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    .line 81
    iget-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->k:Z

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/instagram/android/b/a;

    iget v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->g:I

    iget v2, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->g:I

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/b/a;-><init>(II)V

    .line 83
    invoke-virtual {v0, v7, v8}, Lcom/instagram/android/b/a;->setDuration(J)V

    .line 84
    invoke-virtual {v0, v5, v6}, Lcom/instagram/android/b/a;->setStartOffset(J)V

    .line 85
    invoke-virtual {v0, v4}, Lcom/instagram/android/b/a;->setFillBefore(Z)V

    .line 86
    invoke-virtual {v0, v4}, Lcom/instagram/android/b/a;->setFillAfter(Z)V

    .line 87
    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 90
    :cond_0
    new-instance v0, Lcom/instagram/ui/a/a;

    iget v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->i:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/a/a;-><init>(FFF)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    .line 94
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {v0, v7, v8}, Lcom/instagram/ui/a/a;->setDuration(J)V

    .line 95
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {v0, v5, v6}, Lcom/instagram/ui/a/a;->setStartOffset(J)V

    .line 96
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {v0, v4}, Lcom/instagram/ui/a/a;->setFillAfter(Z)V

    .line 97
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {v0, v4}, Lcom/instagram/ui/a/a;->setFillBefore(Z)V

    .line 99
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 100
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 102
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/instagram/android/maps/ui/a;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/a;-><init>(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a(Landroid/view/animation/AnimationSet;)V

    .line 105
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    return-void
.end method

.method public final a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getLeft()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/a/a;->a(F)V

    .line 146
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->l:Lcom/instagram/ui/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->maps_translate_animation_back_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/a/a;->b(F)V

    .line 147
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b()V

    .line 148
    return-void
.end method

.method protected a(Landroid/view/animation/AnimationSet;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    .line 139
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->reset()V

    .line 140
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    sget-object v1, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a:Lcom/instagram/android/b/b;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 141
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 197
    const-string v1, "draw %s %s %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v0, 0x1

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    .line 221
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getTop()I

    move-result v1

    if-nez v1, :cond_0

    .line 225
    :goto_0
    return v0

    .line 224
    :cond_0
    const-string v1, "drawChild %s %s %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getRight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->getBottom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    .line 126
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->m:Lcom/instagram/android/maps/ui/d;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->m:Lcom/instagram/android/maps/ui/d;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/d;->a()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->c:Lcom/instagram/android/maps/ui/d;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->j:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->c:Lcom/instagram/android/maps/ui/d;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/d;->a()V

    .line 133
    :cond_1
    const-string v0, "ANIMATING_STOPPING"

    invoke-static {v0}, Lcom/instagram/common/y/d;->b(Ljava/lang/String;)V

    .line 134
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    .line 135
    return-void
.end method

.method protected onAnimationStart()V
    .locals 1

    .prologue
    .line 114
    sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    .line 115
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->d:Lcom/instagram/android/maps/ui/f;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->d:Lcom/instagram/android/maps/ui/f;

    invoke-interface {v0}, Lcom/instagram/android/maps/ui/f;->a()V

    .line 119
    :cond_0
    const-string v0, "ANIMATING"

    invoke-static {v0}, Lcom/instagram/common/y/d;->b(Ljava/lang/String;)V

    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationStart()V

    .line 121
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 189
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 190
    const-string v0, "onLayout %s %s %s %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 68
    sget v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimationFinishListener(Lcom/instagram/android/maps/ui/d;)V
    .locals 0
    .parameter "ranimationFinishListener"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->m:Lcom/instagram/android/maps/ui/d;

    .line 165
    return-void
.end method

.method public setAnimationStartListener(Lcom/instagram/android/maps/ui/f;)V
    .locals 0
    .parameter "animationStartListener"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->d:Lcom/instagram/android/maps/ui/f;

    .line 175
    return-void
.end method

.method public setOriginalSize(I)V
    .locals 0
    .parameter "originalSize"

    .prologue
    .line 151
    iput p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->g:I

    .line 152
    return-void
.end method

.method public setReverseAnimationFinishListener(Lcom/instagram/android/maps/ui/d;)V
    .locals 0
    .parameter "reverseAnimationFinishListener"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->c:Lcom/instagram/android/maps/ui/d;

    .line 170
    return-void
.end method

.method public setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V
    .locals 0
    .parameter "reverseAnimationPreFinishListener"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->e:Lcom/instagram/android/maps/ui/e;

    .line 180
    return-void
.end method

.method public setStartX(I)V
    .locals 0
    .parameter "startX"

    .prologue
    .line 155
    iput p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->h:I

    .line 156
    return-void
.end method

.method public setStartY(F)V
    .locals 0
    .parameter "startY"

    .prologue
    .line 159
    iput p1, p0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->i:F

    .line 160
    return-void
.end method
