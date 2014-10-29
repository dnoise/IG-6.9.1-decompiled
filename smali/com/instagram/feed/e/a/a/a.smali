.class public final Lcom/instagram/feed/e/a/a/a;
.super Ljava/lang/Object;
.source "FeedAYSFBannerRowViewBinder.java"


# static fields
.field private static final a:Landroid/view/animation/AccelerateInterpolator;

.field private static final b:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/instagram/feed/e/a/a/a;->a:Landroid/view/animation/AccelerateInterpolator;

    .line 36
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/instagram/feed/e/a/a/a;->b:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->layout_feed_aysf_banner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/instagram/feed/e/a/a/g;

    invoke-direct {v1}, Lcom/instagram/feed/e/a/a/g;-><init>()V

    .line 43
    sget v2, Lcom/facebook/av;->title_banner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/feed/e/a/a/g;->a(Lcom/instagram/feed/e/a/a/g;Landroid/view/View;)Landroid/view/View;

    .line 46
    invoke-static {v1}, Lcom/instagram/feed/e/a/a/g;->a(Lcom/instagram/feed/e/a/a/g;)[Lcom/instagram/feed/e/a/a/h;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/facebook/av;->row_aysf_user_0:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/instagram/feed/e/a/a/a;->a(Landroid/view/View;)Lcom/instagram/feed/e/a/a/h;

    move-result-object v4

    aput-object v4, v2, v3

    .line 47
    invoke-static {v1}, Lcom/instagram/feed/e/a/a/g;->a(Lcom/instagram/feed/e/a/a/g;)[Lcom/instagram/feed/e/a/a/h;

    move-result-object v2

    const/4 v3, 0x1

    sget v4, Lcom/facebook/av;->row_aysf_user_1:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/instagram/feed/e/a/a/a;->a(Landroid/view/View;)Lcom/instagram/feed/e/a/a/h;

    move-result-object v4

    aput-object v4, v2, v3

    .line 48
    invoke-static {v1}, Lcom/instagram/feed/e/a/a/g;->a(Lcom/instagram/feed/e/a/a/g;)[Lcom/instagram/feed/e/a/a/h;

    move-result-object v2

    const/4 v3, 0x2

    sget v4, Lcom/facebook/av;->row_aysf_user_2:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/instagram/feed/e/a/a/a;->a(Landroid/view/View;)Lcom/instagram/feed/e/a/a/h;

    move-result-object v4

    aput-object v4, v2, v3

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    return-object v0
.end method

.method static synthetic a()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/instagram/feed/e/a/a/a;->b()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)Landroid/view/animation/Animation;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static/range {p0 .. p6}, Lcom/instagram/feed/e/a/a/a;->d(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/View;)Lcom/instagram/feed/e/a/a/h;
    .locals 2
    .parameter

    .prologue
    .line 82
    new-instance v1, Lcom/instagram/feed/e/a/a/h;

    invoke-direct {v1}, Lcom/instagram/feed/e/a/a/h;-><init>()V

    .line 83
    invoke-static {v1, p0}, Lcom/instagram/feed/e/a/a/h;->a(Lcom/instagram/feed/e/a/a/h;Landroid/view/View;)Landroid/view/View;

    .line 84
    sget v0, Lcom/facebook/av;->row_feed_aysf_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/feed/e/a/a/h;->b(Lcom/instagram/feed/e/a/a/h;Landroid/view/View;)Landroid/view/View;

    .line 85
    sget v0, Lcom/facebook/av;->row_feed_aysf_imageview:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-static {v1, v0}, Lcom/instagram/feed/e/a/a/h;->a(Lcom/instagram/feed/e/a/a/h;Lcom/instagram/common/ui/widget/imageview/CircularImageView;)Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    .line 86
    sget v0, Lcom/facebook/av;->row_feed_aysf_username:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/instagram/feed/e/a/a/h;->a(Lcom/instagram/feed/e/a/a/h;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/facebook/av;->row_feed_aysf_social_context:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/instagram/feed/e/a/a/h;->b(Lcom/instagram/feed/e/a/a/h;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/facebook/av;->row_feed_aysf_follow_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    invoke-static {v1, v0}, Lcom/instagram/feed/e/a/a/h;->a(Lcom/instagram/feed/e/a/a/h;Lcom/instagram/user/follow/FollowButton;)Lcom/instagram/user/follow/FollowButton;

    .line 90
    sget v0, Lcom/facebook/av;->row_feed_aysf_dismiss_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/feed/e/a/a/h;->c(Lcom/instagram/feed/e/a/a/h;Landroid/view/View;)Landroid/view/View;

    .line 91
    sget v0, Lcom/facebook/av;->row_feed_aysf_divider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/feed/e/a/a/h;->d(Lcom/instagram/feed/e/a/a/h;Landroid/view/View;)Landroid/view/View;

    .line 92
    return-object v1
.end method

.method static synthetic a(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static/range {p0 .. p5}, Lcom/instagram/feed/e/a/a/a;->b(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)V

    return-void
.end method

.method public static a(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;Lcom/instagram/feed/e/a;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 60
    invoke-static {p1}, Lcom/instagram/feed/e/a/a/g;->b(Lcom/instagram/feed/e/a/a/g;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/feed/e/a/a/b;

    invoke-direct {v1, p4}, Lcom/instagram/feed/e/a/a/b;-><init>(Lcom/instagram/feed/e/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {p1}, Lcom/instagram/feed/e/a/a/g;->a(Lcom/instagram/feed/e/a/a/g;)[Lcom/instagram/feed/e/a/a/h;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/instagram/feed/e/a/a/h;->a(Lcom/instagram/feed/e/a/a/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_0
    invoke-static {p1}, Lcom/instagram/feed/e/a/a/g;->a(Lcom/instagram/feed/e/a/a/g;)[Lcom/instagram/feed/e/a/a/h;

    move-result-object v0

    array-length v0, v0

    if-ge v5, v0, :cond_1

    .line 73
    invoke-virtual {p3}, Lcom/instagram/feed/f/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/instagram/feed/e/a/a/g;->a(Lcom/instagram/feed/e/a/a/g;)[Lcom/instagram/feed/e/a/a/h;

    move-result-object v0

    aget-object v2, v0, v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/instagram/feed/e/a/a/a;->b(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)V

    .line 71
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/instagram/feed/e/a/a/g;->a(Lcom/instagram/feed/e/a/a/g;)[Lcom/instagram/feed/e/a/a/h;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/instagram/feed/e/a/a/h;->b(Lcom/instagram/feed/e/a/a/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 79
    :cond_1
    return-void
.end method

.method private static b()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 215
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x4080

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 225
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 226
    sget-object v1, Lcom/instagram/feed/e/a/a/a;->a:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 227
    return-object v0
.end method

.method private static b(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-virtual {p3}, Lcom/instagram/feed/f/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 174
    if-lt p4, v0, :cond_0

    add-int/lit8 p4, v0, -0x1

    .line 176
    :cond_0
    invoke-virtual {p3}, Lcom/instagram/feed/f/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/d/a;

    .line 177
    invoke-virtual {p3, p4}, Lcom/instagram/feed/f/c;->a(I)V

    .line 179
    sget-object v1, Lcom/instagram/feed/f/d;->c:Lcom/instagram/feed/f/d;

    invoke-interface {p5, v1, v0}, Lcom/instagram/feed/e/a;->a(Lcom/instagram/feed/f/d;Lcom/instagram/user/d/a;)V

    .line 180
    invoke-virtual {p3}, Lcom/instagram/feed/f/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lcom/instagram/feed/f/d;->c:Lcom/instagram/feed/f/d;

    invoke-interface {p5, v0}, Lcom/instagram/feed/e/a;->b(Lcom/instagram/feed/f/d;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-static {p0, p1, p2, p3, p5}, Lcom/instagram/feed/e/a/a/a;->a(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;Lcom/instagram/feed/e/a;)V

    goto :goto_0
.end method

.method private static b(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-virtual/range {p4 .. p4}, Lcom/instagram/feed/f/c;->e()Ljava/util/List;

    move-result-object v2

    move/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instagram/user/d/a;

    .line 106
    invoke-interface/range {p6 .. p6}, Lcom/instagram/feed/e/a;->av()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v4}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const/4 v2, 0x0

    move/from16 v0, p5

    invoke-static {p0, v4, v0, v2}, Lcom/instagram/user/d/b;->a(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;IZ)V

    .line 110
    :cond_0
    invoke-static {p2}, Lcom/instagram/feed/e/a/a/h;->c(Lcom/instagram/feed/e/a/a/h;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/instagram/feed/e/a/a/c;

    move/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/instagram/feed/e/a/a/c;-><init>(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;ILcom/instagram/feed/e/a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-static {p2}, Lcom/instagram/feed/e/a/a/h;->d(Lcom/instagram/feed/e/a/a/h;)Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    move-result-object v2

    invoke-virtual {v4}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    .line 119
    invoke-static {p2}, Lcom/instagram/feed/e/a/a/h;->e(Lcom/instagram/feed/e/a/a/h;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v4}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v4}, Lcom/instagram/user/d/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    invoke-static {p2}, Lcom/instagram/feed/e/a/a/h;->f(Lcom/instagram/feed/e/a/a/h;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v4}, Lcom/instagram/user/d/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-static {p2}, Lcom/instagram/feed/e/a/a/h;->f(Lcom/instagram/feed/e/a/a/h;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v4}, Lcom/instagram/user/d/a;->g()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 125
    invoke-static {p2}, Lcom/instagram/feed/e/a/a/h;->f(Lcom/instagram/feed/e/a/a/h;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :goto_0
    invoke-static {p2}, Lcom/instagram/feed/e/a/a/h;->g(Lcom/instagram/feed/e/a/a/h;)Lcom/instagram/user/follow/FollowButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    .line 131
    invoke-static {p2}, Lcom/instagram/feed/e/a/a/h;->g(Lcom/instagram/feed/e/a/a/h;)Lcom/instagram/user/follow/FollowButton;

    move-result-object v2

    invoke-virtual {v4}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v6, Lcom/instagram/feed/e/a/a/d;

    move/from16 v0, p5

    invoke-direct {v6, p0, v4, v0}, Lcom/instagram/feed/e/a/a/d;-><init>(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;I)V

    invoke-virtual {v2, v3, p3, v5, v6}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V

    .line 142
    invoke-virtual {v4}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v2

    sget-object v3, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    if-ne v2, v3, :cond_1

    .line 144
    invoke-static {p2}, Lcom/instagram/feed/e/a/a/h;->c(Lcom/instagram/feed/e/a/a/h;)Landroid/view/View;

    move-result-object v2

    invoke-static/range {p0 .. p6}, Lcom/instagram/feed/e/a/a/a;->c(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    :cond_1
    invoke-static {p2}, Lcom/instagram/feed/e/a/a/h;->h(Lcom/instagram/feed/e/a/a/h;)Landroid/view/View;

    move-result-object v11

    new-instance v2, Lcom/instagram/feed/e/a/a/e;

    move-object v3, p0

    move/from16 v5, p5

    move-object v6, p2

    move-object v7, p1

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/instagram/feed/e/a/a/e;-><init>(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;ILcom/instagram/feed/e/a/a/h;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;Lcom/instagram/feed/e/a;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void

    .line 127
    :cond_2
    invoke-static {p2}, Lcom/instagram/feed/e/a/a/h;->f(Lcom/instagram/feed/e/a/a/h;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private static c(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)Landroid/view/animation/Animation;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 195
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 205
    invoke-static/range {p0 .. p6}, Lcom/instagram/feed/e/a/a/a;->e(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 208
    sget-object v1, Lcom/instagram/feed/e/a/a/a;->a:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 210
    return-object v0
.end method

.method private static d(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)Landroid/view/animation/Animation;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 239
    invoke-static/range {p0 .. p6}, Lcom/instagram/feed/e/a/a/a;->e(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 241
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 242
    sget-object v1, Lcom/instagram/feed/e/a/a/a;->b:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 243
    return-object v0
.end method

.method private static e(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)Landroid/view/animation/Animation$AnimationListener;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    new-instance v0, Lcom/instagram/feed/e/a/a/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/instagram/feed/e/a/a/f;-><init>(Lcom/instagram/common/analytics/g;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;Lcom/instagram/feed/e/a/a/h;)V

    return-object v0
.end method
