.class public final Lcom/instagram/android/feed/a/a/i;
.super Ljava/lang/Object;
.source "FeedPeopleTagModule.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Lcom/instagram/android/feed/a/a;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/instagram/android/feed/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/i;->b:Ljava/util/Set;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/i;->c:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Lcom/instagram/android/feed/a/a/j;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/a/a/j;-><init>(Lcom/instagram/android/feed/a/a/i;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/i;->d:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/i;->a:Lcom/instagram/android/feed/a/a;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/i;)Lcom/instagram/android/feed/a/a;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->a:Lcom/instagram/android/feed/a/a;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 147
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 148
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 149
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 150
    new-instance v1, Lcom/instagram/android/feed/a/a/k;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/a/a/k;-><init>(Lcom/instagram/android/feed/a/a/i;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/AbsListView;)V
    .locals 3
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/i;->a:Lcom/instagram/android/feed/a/a;

    invoke-static {p1, v0}, Lcom/instagram/android/feed/a/a;->a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/instagram/android/feed/a/a/i;->a:Lcom/instagram/android/feed/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/widget/ConstrainedProgressImageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/a/a/i;->a(Ljava/lang/String;)V

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/i;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/i;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/a/i;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 163
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 164
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 165
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 166
    new-instance v1, Lcom/instagram/android/feed/a/a/l;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/a/a/l;-><init>(Lcom/instagram/android/feed/a/a/i;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    :cond_0
    return-void
.end method

.method private b(Landroid/widget/AbsListView;)V
    .locals 4
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v1, v0, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 135
    iget-object v3, p0, Lcom/instagram/android/feed/a/a/i;->b:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 140
    :cond_2
    iput-object v2, p0, Lcom/instagram/android/feed/a/a/i;->b:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->d()V

    .line 94
    invoke-direct {p0, p3}, Lcom/instagram/android/feed/a/a/i;->a(Landroid/view/View;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->X()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->removeAllViews()V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/feed/d/l;Z)V

    .line 100
    invoke-direct {p0, p3}, Lcom/instagram/android/feed/a/a/i;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/i;->d:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 111
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v0

    sget v1, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->l()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/i;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/i;->a(Landroid/widget/AbsListView;)V

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/i;->b(Landroid/widget/AbsListView;)V

    .line 68
    return-void
.end method
