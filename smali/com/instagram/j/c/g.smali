.class public final Lcom/instagram/j/c/g;
.super Lcom/instagram/base/a/i;
.source "NewsfeedFragment.java"

# interfaces
.implements Lcom/instagram/j/a/a/a;


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field private static c:Z


# instance fields
.field private final aa:Landroid/content/BroadcastReceiver;

.field private final ab:Lcom/instagram/common/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/e",
            "<",
            "Lcom/instagram/user/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/instagram/j/c/p;

.field private e:Lcom/instagram/j/c/o;

.field private f:Landroid/content/IntentFilter;

.field private g:Lcom/instagram/user/c/a;

.field private h:Lcom/instagram/feed/i/a;

.field private i:Lcom/instagram/ui/widget/bannertoast/BannerToast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/j/c/g;->a:Ljava/lang/Integer;

    .line 60
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    .line 62
    sput-boolean v1, Lcom/instagram/j/c/g;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/instagram/base/a/i;-><init>()V

    .line 78
    new-instance v0, Lcom/instagram/j/c/h;

    invoke-direct {v0, p0}, Lcom/instagram/j/c/h;-><init>(Lcom/instagram/j/c/g;)V

    iput-object v0, p0, Lcom/instagram/j/c/g;->aa:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v0, Lcom/instagram/j/c/i;

    invoke-direct {v0, p0}, Lcom/instagram/j/c/i;-><init>(Lcom/instagram/j/c/g;)V

    iput-object v0, p0, Lcom/instagram/j/c/g;->ab:Lcom/instagram/common/j/e;

    .line 359
    return-void
.end method

.method public static W()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/j/c/g;->c:Z

    .line 277
    return-void
.end method

.method private X()V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->V()I

    move-result v0

    sget-object v1, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/instagram/j/c/g;->g:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/instagram/j/c/g;->h:Lcom/instagram/feed/i/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v1, Lcom/instagram/feed/i/a;

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Lcom/instagram/feed/i/a;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/instagram/j/c/g;->h:Lcom/instagram/feed/i/a;

    .line 207
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/instagram/j/c/g;->h:Lcom/instagram/feed/i/a;

    invoke-virtual {v0}, Lcom/instagram/feed/i/a;->a()V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/instagram/j/c/g;->Y()V

    goto :goto_0

    .line 217
    :cond_2
    invoke-direct {p0}, Lcom/instagram/j/c/g;->Y()V

    goto :goto_0
.end method

.method private Y()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/instagram/j/c/g;->h:Lcom/instagram/feed/i/a;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/instagram/j/c/g;->h:Lcom/instagram/feed/i/a;

    invoke-virtual {v0}, Lcom/instagram/feed/i/a;->b()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/j/c/g;->h:Lcom/instagram/feed/i/a;

    .line 226
    :cond_0
    return-void
.end method

.method private Z()V
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/g;)V

    .line 296
    return-void
.end method

.method static synthetic a(Lcom/instagram/j/c/g;)Lcom/instagram/j/c/p;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/j/c/g;->d:Lcom/instagram/j/c/p;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/j/c/g;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/instagram/j/c/g;->f(I)V

    return-void
.end method

.method private aa()Lcom/instagram/j/c/n;
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/instagram/j/c/g;->e:Lcom/instagram/j/c/o;

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->V()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/j/c/o;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/j/c/n;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/j/c/g;)Lcom/instagram/user/c/a;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/j/c/g;->g:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method private b(Lcom/instagram/user/c/a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 325
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v3

    .line 328
    const/4 v0, 0x0

    .line 331
    sget-object v4, Lcom/instagram/j/c/m;->a:[I

    invoke-virtual {v3}, Lcom/instagram/user/c/c;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 351
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/instagram/j/c/g;->i:Lcom/instagram/ui/widget/bannertoast/BannerToast;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/instagram/j/c/g;->i:Lcom/instagram/ui/widget/bannertoast/BannerToast;

    invoke-virtual {v2, v0}, Lcom/instagram/ui/widget/bannertoast/BannerToast;->setBackgroundResource(I)V

    .line 353
    iget-object v0, p0, Lcom/instagram/j/c/g;->i:Lcom/instagram/ui/widget/bannertoast/BannerToast;

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/bannertoast/BannerToast;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/instagram/j/c/g;->i:Lcom/instagram/ui/widget/bannertoast/BannerToast;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/bannertoast/BannerToast;->bringToFront()V

    .line 355
    iget-object v0, p0, Lcom/instagram/j/c/g;->i:Lcom/instagram/ui/widget/bannertoast/BannerToast;

    invoke-virtual {v0}, Lcom/instagram/ui/widget/bannertoast/BannerToast;->a()V

    .line 357
    :cond_0
    return-void

    .line 333
    :pswitch_0
    sget v0, Lcom/facebook/as;->red_medium:I

    .line 334
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/f;

    move-result-object v3

    sget-object v4, Lcom/instagram/user/c/f;->c:Lcom/instagram/user/c/f;

    if-ne v3, v4, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->n()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->requested_cancel_confirmation_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->n()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/facebook/az;->unfollowing_confirmation_toast:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 341
    :pswitch_1
    sget v0, Lcom/facebook/as;->green_medium:I

    .line 342
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->n()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/facebook/az;->following_confirmation_toast:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 345
    :pswitch_2
    sget v0, Lcom/facebook/as;->grey_light:I

    .line 346
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->n()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/facebook/az;->requested_following_confirmation_toast:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/instagram/j/c/g;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/instagram/j/c/g;->X()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/j/c/g;)Lcom/instagram/j/c/n;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/instagram/j/c/g;->aa()Lcom/instagram/j/c/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/j/c/g;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/instagram/j/c/g;->Z()V

    return-void
.end method

.method private f(I)V
    .locals 3
    .parameter

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->V()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 286
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v2

    sget-object v0, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    const-string v0, "newsfeed_you"

    :goto_0
    invoke-virtual {v1, p0, v2, v0}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/g;ILjava/lang/String;)V

    .line 292
    :cond_0
    return-void

    .line 286
    :cond_1
    const-string v0, "newsfeed_following"

    goto :goto_0
.end method


# virtual methods
.method public final F()V
    .locals 3

    .prologue
    .line 239
    invoke-super {p0}, Lcom/instagram/base/a/i;->F()V

    .line 240
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/j/c/g;->aa:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/instagram/j/c/g;->f:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 244
    sget-boolean v0, Lcom/instagram/j/c/g;->c:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/instagram/j/c/g;->d:Lcom/instagram/j/c/p;

    sget-object v1, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/j/c/p;->a(I)V

    .line 246
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/j/c/g;->c:Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/instagram/j/c/g;->h:Lcom/instagram/feed/i/a;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/instagram/j/c/g;->h:Lcom/instagram/feed/i/a;

    invoke-virtual {v0}, Lcom/instagram/feed/i/a;->a()V

    .line 252
    :cond_1
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/instagram/base/a/i;->G()V

    .line 234
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/j/c/g;->aa:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 235
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    sget v0, Lcom/facebook/aw;->fragment_newsfeed:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/instagram/base/a/i;->a(Landroid/os/Bundle;)V

    .line 105
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/j/c/g;->g:Lcom/instagram/user/c/a;

    .line 106
    new-instance v0, Lcom/instagram/j/c/o;

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->q()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/j/c/o;-><init>(Lcom/instagram/j/c/g;Landroid/support/v4/app/s;)V

    iput-object v0, p0, Lcom/instagram/j/c/g;->e:Lcom/instagram/j/c/o;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "NewsfeedFragment.BROADCAST_SWITCH_TO_MODE_YOU"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/j/c/g;->f:Landroid/content/IntentFilter;

    .line 109
    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    sget v0, Lcom/facebook/av;->newsfeed_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

    .line 138
    iget-object v1, p0, Lcom/instagram/j/c/g;->e:Lcom/instagram/j/c/o;

    invoke-virtual {v1, v0}, Lcom/instagram/j/c/o;->a(Landroid/view/ViewGroup;)V

    .line 139
    iget-object v1, p0, Lcom/instagram/j/c/g;->e:Lcom/instagram/j/c/o;

    invoke-virtual {v0, v1}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setAdapter(Landroid/support/v4/view/ae;)V

    .line 140
    new-instance v1, Lcom/instagram/j/c/j;

    invoke-direct {v1, p0}, Lcom/instagram/j/c/j;-><init>(Lcom/instagram/j/c/g;)V

    invoke-virtual {v0, v1}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bm;)V

    .line 158
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/i;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 118
    sget v0, Lcom/facebook/av;->newsfeed_banner_toast:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/bannertoast/BannerToast;

    iput-object v0, p0, Lcom/instagram/j/c/g;->i:Lcom/instagram/ui/widget/bannertoast/BannerToast;

    .line 120
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/g;

    iget-object v2, p0, Lcom/instagram/j/c/g;->ab:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 121
    invoke-direct {p0}, Lcom/instagram/j/c/g;->X()V

    .line 123
    if-eqz p2, :cond_0

    const-string v0, "NewsfeedFragment.EXTRA_CURRENT_MODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "NewsfeedFragment.EXTRA_CURRENT_MODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/j/c/g;->a(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 184
    sget v0, Lcom/facebook/az;->news:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 185
    const/4 v0, 0x1

    new-instance v1, Lcom/instagram/j/c/k;

    invoke-direct {v1, p0}, Lcom/instagram/j/c/k;-><init>(Lcom/instagram/j/c/g;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(ZLandroid/view/View$OnClickListener;)V

    .line 191
    invoke-direct {p0}, Lcom/instagram/j/c/g;->aa()Lcom/instagram/j/c/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/j/c/n;->V()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    .line 192
    new-instance v0, Lcom/instagram/j/c/l;

    invoke-direct {v0, p0}, Lcom/instagram/j/c/l;-><init>(Lcom/instagram/j/c/g;)V

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method

.method final a(Lcom/instagram/j/c/n;)V
    .locals 2
    .parameter

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/j/c/g;->aa()Lcom/instagram/j/c/n;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-interface {p1}, Lcom/instagram/j/c/n;->V()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 445
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/instagram/j/c/g;->b(Lcom/instagram/user/c/a;)V

    .line 482
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 459
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 460
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    new-instance v0, Lcom/instagram/j/c/p;

    invoke-direct {v0, p0, p1}, Lcom/instagram/j/c/p;-><init>(Lcom/instagram/j/c/g;Landroid/view/View;)V

    iput-object v0, p0, Lcom/instagram/j/c/g;->d:Lcom/instagram/j/c/p;

    .line 163
    iget-object v0, p0, Lcom/instagram/j/c/g;->d:Lcom/instagram/j/c/p;

    invoke-virtual {v0}, Lcom/instagram/j/c/p;->a()V

    .line 164
    return-void
.end method

.method final b(Lcom/instagram/j/c/n;)V
    .locals 3
    .parameter

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/j/c/g;->aa()Lcom/instagram/j/c/n;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->could_not_refresh_feed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 451
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/instagram/j/c/g;->V()I

    move-result v1

    sget-object v2, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/j/e/a;->f()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    const/4 v0, 0x1

    .line 469
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/j/e/a;->f()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_0
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/instagram/o/f/e;->b(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 472
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 486
    invoke-static {}, Lcom/instagram/o/f/b;->a()Lcom/instagram/o/f/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/instagram/o/f/a;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public final d()Lcom/instagram/base/a/j;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/instagram/j/c/g;->d:Lcom/instagram/j/c/p;

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/instagram/base/a/i;->d(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 491
    invoke-static {}, Lcom/instagram/o/f/d;->a()Lcom/instagram/o/f/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/instagram/o/f/c;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 476
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/j/c/a;

    invoke-direct {v1}, Lcom/instagram/j/c/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 477
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 178
    const-string v0, "NewsfeedFragment.EXTRA_CURRENT_MODE"

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->V()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    invoke-super {p0, p1}, Lcom/instagram/base/a/i;->e(Landroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 496
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/instagram/o/f/e;->d(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 497
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 501
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/j/c/g;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/instagram/o/f/e;->b(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 502
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const-string v0, "newsfeed"

    return-object v0
.end method

.method public final m_()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    iput-object v3, p0, Lcom/instagram/j/c/g;->h:Lcom/instagram/feed/i/a;

    .line 258
    iget-object v0, p0, Lcom/instagram/j/c/g;->e:Lcom/instagram/j/c/o;

    invoke-virtual {v0, v3}, Lcom/instagram/j/c/o;->a(Landroid/view/ViewGroup;)V

    .line 259
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/user/c/g;

    iget-object v2, p0, Lcom/instagram/j/c/g;->ab:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 262
    iget-object v0, p0, Lcom/instagram/j/c/g;->d:Lcom/instagram/j/c/p;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/instagram/j/c/g;->d:Lcom/instagram/j/c/p;

    invoke-virtual {v0}, Lcom/instagram/j/c/p;->b()V

    .line 264
    iput-object v3, p0, Lcom/instagram/j/c/g;->d:Lcom/instagram/j/c/p;

    .line 267
    :cond_0
    invoke-super {p0}, Lcom/instagram/base/a/i;->m_()V

    .line 268
    return-void
.end method

.method public final s_()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/instagram/j/c/g;->aa()Lcom/instagram/j/c/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/j/c/n;->W()V

    .line 282
    return-void
.end method
