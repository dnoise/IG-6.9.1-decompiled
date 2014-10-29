.class public final Lcom/instagram/android/feed/d/d;
.super Ljava/lang/Object;
.source "SponsoredHideHelper.java"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Lcom/instagram/feed/d/l;

.field private c:Lcom/instagram/android/feed/a/a;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/q;",
            ">;"
        }
    .end annotation
.end field

.field private h:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/a;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/d/d;->h:[Ljava/lang/CharSequence;

    .line 44
    iput-object p1, p0, Lcom/instagram/android/feed/d/d;->f:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/instagram/android/feed/d/d;->b:Lcom/instagram/feed/d/l;

    .line 46
    iput-object p3, p0, Lcom/instagram/android/feed/d/d;->c:Lcom/instagram/android/feed/a/a;

    .line 47
    iput-object p4, p0, Lcom/instagram/android/feed/d/d;->d:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->c:Lcom/instagram/android/feed/a/a;

    sget v1, Lcom/facebook/av;->starred_hide_shoutout:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/d/d;->e:Landroid/view/View;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/d/d;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/d/d;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/feed/d/d;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/d/d;->g:Ljava/util/List;

    return-object v0
.end method

.method private b()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->h:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->ad()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/d/d;->g:Ljava/util/List;

    .line 56
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/q;

    .line 57
    iget-object v0, v0, Lcom/instagram/feed/d/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/instagram/android/feed/d/d;->h:[Ljava/lang/CharSequence;

    .line 61
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->h:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->h:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private c()Landroid/view/animation/AnimationSet;
    .locals 7

    .prologue
    const/high16 v6, -0x3d38

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 120
    new-instance v1, Lcom/instagram/android/feed/d/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/d/f;-><init>(Lcom/instagram/android/feed/d/d;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 135
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 136
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v4, v4, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 137
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 138
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 140
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v4, v4, v4, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 141
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 142
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 143
    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 146
    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/feed/d/d;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/android/feed/d/d;->b()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private d()Landroid/animation/AnimatorSet;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 153
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/instagram/android/feed/d/d;->d:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 156
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 158
    iget-object v2, p0, Lcom/instagram/android/feed/d/d;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 160
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v5

    aput v5, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 161
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    new-instance v3, Lcom/instagram/android/feed/d/g;

    invoke-direct {v3, p0}, Lcom/instagram/android/feed/d/g;-><init>(Lcom/instagram/android/feed/d/d;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    new-instance v3, Lcom/instagram/android/feed/d/h;

    invoke-direct {v3, p0}, Lcom/instagram/android/feed/d/h;-><init>(Lcom/instagram/android/feed/d/d;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 185
    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/feed/d/d;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/feed/d/d;)Lcom/instagram/feed/d/l;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->b:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/feed/d/d;)Lcom/instagram/android/feed/a/a;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->c:Lcom/instagram/android/feed/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/feed/d/d;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/android/feed/d/d;->c()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/feed/d/d;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/instagram/android/feed/d/d;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/android/feed/d/d;->d()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/instagram/android/feed/d/d;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/feed/d/d;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->starred_hide:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/feed/d/d;->b()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/feed/d/i;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/feed/d/i;-><init>(Lcom/instagram/android/feed/d/d;B)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/d/d;->a:Landroid/app/Dialog;

    .line 74
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/android/feed/d/e;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/d/e;-><init>(Lcom/instagram/android/feed/d/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    iget-object v0, p0, Lcom/instagram/android/feed/d/d;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 83
    return-void
.end method
