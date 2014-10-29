.class public Lcom/instagram/android/people/widget/PeopleTagsLayout;
.super Landroid/view/ViewGroup;
.source "PeopleTagsLayout.java"


# instance fields
.field protected a:Z

.field private b:Lcom/instagram/android/people/widget/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a:Z

    .line 52
    return-void
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getOverlaps()Ljava/util/List;

    move-result-object v0

    .line 194
    const/16 v1, 0x14

    new-array v5, v1, [I

    .line 195
    const/16 v1, 0x15

    new-array v6, v1, [I

    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 200
    new-instance v1, Lcom/instagram/android/people/widget/j;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/widget/j;-><init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 208
    const/4 v1, -0x1

    aput v1, v6, v4

    move v2, v4

    .line 210
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 211
    invoke-direct {p0, v0, v2, v2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Ljava/util/List;II)[I

    move-result-object v1

    move-object v3, v1

    move v1, v2

    .line 214
    :goto_1
    aget v8, v3, v4

    aget v9, v6, v1

    if-ge v8, v9, :cond_1

    .line 215
    add-int/lit8 v1, v1, -0x1

    aget v1, v5, v1

    .line 216
    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Ljava/util/List;II)[I

    move-result-object v3

    goto :goto_1

    .line 219
    :cond_1
    add-int/lit8 v8, v2, 0x1

    aget v9, v3, v4

    const/4 v10, 0x1

    aget v3, v3, v10

    add-int/2addr v3, v9

    aput v3, v6, v8

    .line 220
    aput v1, v5, v2

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setTagsLayoutListener(Lcom/instagram/android/people/widget/m;)V

    return-void
.end method

.method protected static a(Lcom/instagram/android/people/widget/c;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getAbsoluteTagPosition()Landroid/graphics/PointF;

    move-result-object v3

    .line 338
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 339
    if-eqz p1, :cond_0

    .line 340
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 344
    :goto_0
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    return-void

    .line 342
    :cond_0
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/instagram/feed/d/l;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;",
            "Lcom/instagram/feed/d/l;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 81
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v4

    .line 82
    const/4 v2, 0x0

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    .line 86
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/model/people/PeopleTag;Z)Lcom/instagram/android/people/widget/c;

    move-result-object v1

    .line 87
    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/instagram/android/people/widget/c;->setMediaId(Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_2
    move-object v2, v0

    .line 95
    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 98
    :cond_2
    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {v2}, Lcom/instagram/android/people/widget/c;->bringToFront()V

    .line 102
    :cond_3
    if-eqz p3, :cond_4

    .line 103
    new-instance v0, Lcom/instagram/android/people/widget/i;

    invoke-direct {v0, p0, v3, p1}, Lcom/instagram/android/people/widget/i;-><init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setTagsLayoutListener(Lcom/instagram/android/people/widget/m;)V

    .line 114
    :cond_4
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->requestLayout()V

    .line 115
    return-void

    :cond_5
    move-object v0, v2

    goto :goto_2
.end method

.method private a(Ljava/util/List;II)[I
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/people/widget/c;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getMeasuredWidth()I

    move-result v2

    .line 263
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0, v2}, Lcom/instagram/android/people/widget/c;->a(I)I

    move-result v1

    .line 265
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0, v2}, Lcom/instagram/android/people/widget/c;->b(I)I

    move-result v2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getBubbleWidth()I

    move-result v0

    add-int/2addr v0, v2

    .line 268
    sub-int v3, v0, v1

    move v5, p2

    move v2, v4

    .line 270
    :goto_0
    if-gt v5, p3, :cond_0

    .line 271
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getBubbleWidth()I

    move-result v0

    add-int/2addr v2, v0

    .line 270
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 277
    :cond_0
    if-gt v2, v3, :cond_2

    .line 279
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getPreferredBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int v1, v0, v2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getPreferredBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    .line 281
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getPreferredBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    move v1, v2

    .line 285
    :goto_1
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v4

    .line 290
    :goto_2
    if-gt p2, p3, :cond_1

    .line 291
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getBubbleWidth()I

    move-result v0

    mul-int/2addr v0, v1

    div-int v6, v0, v2

    .line 292
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/c;

    add-int v7, v5, v3

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/instagram/android/people/widget/c;->c(I)V

    .line 293
    add-int v0, v3, v6

    .line 290
    add-int/lit8 p2, p2, 0x1

    move v3, v0

    goto :goto_2

    .line 296
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v5, v0, v4

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0

    :cond_2
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method private b(Lcom/instagram/android/people/widget/c;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 316
    invoke-virtual {p1}, Lcom/instagram/android/people/widget/c;->getAbsoluteTagPosition()Landroid/graphics/PointF;

    move-result-object v3

    .line 318
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 319
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 320
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 322
    new-instance v1, Lcom/instagram/android/people/widget/k;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/people/widget/k;-><init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;Lcom/instagram/android/people/widget/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 333
    invoke-virtual {p1, v0}, Lcom/instagram/android/people/widget/c;->startAnimation(Landroid/view/animation/Animation;)V

    .line 334
    return-void
.end method

.method private getOverlaps()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/people/widget/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 228
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 233
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v4

    .line 234
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v5, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 246
    add-int/lit8 v0, v1, 0x1

    :goto_1
    if-ge v0, v4, :cond_1

    .line 248
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/instagram/android/people/widget/c;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/instagram/android/people/widget/c;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/instagram/android/people/widget/c;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 257
    :cond_2
    return-object v2
.end method

.method private setTagsLayoutListener(Lcom/instagram/android/people/widget/m;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->b:Lcom/instagram/android/people/widget/m;

    .line 354
    return-void
.end method


# virtual methods
.method protected final a(I)Lcom/instagram/android/people/widget/c;
    .locals 1
    .parameter

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/c;

    return-object v0
.end method

.method protected final a(Lcom/instagram/model/people/PeopleTag;Z)Lcom/instagram/android/people/widget/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/instagram/model/people/PeopleTag;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/model/people/PeopleTag;->b()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Ljava/lang/String;Landroid/graphics/PointF;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lcom/instagram/android/people/widget/c;->setTag(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v0, p2}, Lcom/instagram/android/people/widget/c;->setClickable(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->addView(Landroid/view/View;)V

    .line 66
    return-object v0
.end method

.method protected final a(Ljava/lang/String;Landroid/graphics/PointF;)Lcom/instagram/android/people/widget/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/instagram/android/people/widget/c;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/people/widget/c;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v0, p1}, Lcom/instagram/android/people/widget/c;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0, p2}, Lcom/instagram/android/people/widget/c;->setNormalizedPosition(Landroid/graphics/PointF;)V

    .line 58
    return-object v0
.end method

.method public final a(Lcom/instagram/feed/d/l;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->V()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Ljava/util/List;Lcom/instagram/feed/d/l;Z)V

    .line 71
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Ljava/util/List;Lcom/instagram/feed/d/l;Z)V

    .line 75
    return-void
.end method

.method final a(Lcom/instagram/android/people/widget/c;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v2

    move v1, v0

    .line 120
    :goto_0
    if-ge v1, v2, :cond_0

    .line 121
    invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/instagram/android/people/widget/c;->getDrawingBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 127
    sget v4, Lcom/instagram/android/people/widget/c;->f:I

    sget v5, Lcom/instagram/android/people/widget/c;->f:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 128
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 129
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/16 v6, 0xfa

    invoke-static {v5, v6}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v5

    float-to-int v5, v5

    .line 130
    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v1, v2, :cond_1

    .line 131
    invoke-virtual {p0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instagram/android/people/widget/c;->getDrawingBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    sget v6, Lcom/instagram/android/people/widget/c;->f:I

    sget v7, Lcom/instagram/android/people/widget/c;->f:I

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 134
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v6, v7

    if-lt v6, v5, :cond_2

    .line 136
    const/4 v0, 0x1

    .line 141
    :cond_1
    return v0

    .line 130
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a()V

    .line 170
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 171
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->a()V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v2

    move v0, v1

    .line 302
    :goto_0
    if-ge v0, v2, :cond_0

    .line 303
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->b(Lcom/instagram/android/people/widget/c;)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 307
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 309
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 310
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 311
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 177
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->c()V

    .line 185
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->b:Lcom/instagram/android/people/widget/m;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsLayout;->b:Lcom/instagram/android/people/widget/m;

    invoke-interface {v0}, Lcom/instagram/android/people/widget/m;->a()V

    .line 188
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter

    .prologue
    .line 152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 154
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p1}, Landroid/view/View;->measure(II)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setMeasuredDimension(II)V

    .line 163
    return-void
.end method
