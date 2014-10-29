.class public final Lcom/instagram/android/directshare/c/c;
.super Lcom/instagram/base/a/b;
.source "InboxFragment.java"

# interfaces
.implements Lcom/instagram/a/c;
.implements Lcom/instagram/android/activity/e;
.implements Lcom/instagram/base/a/e;


# instance fields
.field private a:Landroid/os/Handler;

.field private aa:Landroid/view/View;

.field private ab:Landroid/view/View;

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Lcom/instagram/common/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/e",
            "<",
            "Lcom/instagram/android/c2dm/a;",
            ">;"
        }
    .end annotation
.end field

.field private ag:I

.field private ah:Z

.field private ai:Z

.field private aj:Lcom/instagram/common/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/a/a/j",
            "<",
            "Lcom/instagram/f/a/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instagram/android/directshare/c/a;

.field private c:Lcom/instagram/common/d/h;

.field private d:Lcom/instagram/android/directshare/c/m;

.field private e:Lcom/instagram/android/directshare/c/o;

.field private f:Lcom/instagram/android/activity/c;

.field private g:Lcom/instagram/android/feed/e/a;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    .line 87
    new-instance v0, Lcom/instagram/android/directshare/c/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/directshare/c/m;-><init>(Lcom/instagram/android/directshare/c/c;B)V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->d:Lcom/instagram/android/directshare/c/m;

    .line 110
    new-instance v0, Lcom/instagram/android/directshare/c/d;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/c/d;-><init>(Lcom/instagram/android/directshare/c/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->aj:Lcom/instagram/common/a/a/j;

    .line 559
    return-void
.end method

.method private V()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->ab:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->ab:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->ab:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private W()V
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ah:Z

    .line 491
    return-void
.end method

.method private X()Z
    .locals 2

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ah:Z

    .line 495
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/instagram/android/directshare/c/c;->ah:Z

    .line 496
    return v0
.end method

.method private Y()V
    .locals 5

    .prologue
    .line 504
    new-instance v0, Lcom/instagram/f/a/a/m;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->z()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/directshare/c/n;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/instagram/android/directshare/c/n;-><init>(Lcom/instagram/android/directshare/c/c;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/f/a/a/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/f/a/a/m;->g()V

    .line 509
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/o;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->e:Lcom/instagram/android/directshare/c/o;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->aa:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/directshare/c/c;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/c;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/f/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 512
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 513
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/c;->a(I)V

    .line 543
    :cond_1
    :goto_0
    return-void

    .line 516
    :cond_2
    invoke-direct {p0, v3}, Lcom/instagram/android/directshare/c/c;->a(I)V

    .line 517
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/c;->f(I)V

    .line 521
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lez v0, :cond_3

    .line 522
    iget-object v1, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 521
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 525
    :cond_3
    const/4 v0, 0x3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 526
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    move v2, v3

    .line 527
    :goto_2
    if-ge v2, v4, :cond_4

    .line 528
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/f/c/a;

    .line 529
    sget v1, Lcom/facebook/aw;->row_requested_direct_share_avatar:I

    iget-object v6, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    .line 534
    invoke-virtual {v0}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 537
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/instagram/android/directshare/c/c;->ag:I

    if-le v0, v1, :cond_1

    .line 538
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/android/directshare/a/a;->b(I)V

    .line 539
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/directshare/c/c;->ag:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/directshare/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->d()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/a;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;

    return-object v0
.end method

.method private c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 443
    sget v0, Lcom/instagram/android/directshare/c/b;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/instagram/android/directshare/c/c;->a(IZ)V

    .line 444
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 387
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->E()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/facebook/av;->inbox_empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 390
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/directshare/c/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ac:Z

    return v0
.end method

.method static synthetic e(Lcom/instagram/android/directshare/c/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ac:Z

    return v0
.end method

.method private f(I)V
    .locals 6
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/av;->inbox_requests_textview:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 553
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/ax;->directshare_inbox_pending_request_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    return-void
.end method

.method static synthetic f(Lcom/instagram/android/directshare/c/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ai:Z

    return v0
.end method

.method static synthetic g(Lcom/instagram/android/directshare/c/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ai:Z

    return v0
.end method

.method static synthetic h(Lcom/instagram/android/directshare/c/c;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic i(Lcom/instagram/android/directshare/c/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ae:Z

    return v0
.end method

.method static synthetic j(Lcom/instagram/android/directshare/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->V()V

    return-void
.end method

.method static synthetic k(Lcom/instagram/android/directshare/c/c;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/c;->c(Z)V

    return-void
.end method

.method static synthetic l(Lcom/instagram/android/directshare/c/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/instagram/android/directshare/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->Y()V

    return-void
.end method

.method static synthetic n(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/activity/c;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->f:Lcom/instagram/android/activity/c;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 318
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    .line 319
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->g:Lcom/instagram/android/feed/e/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/a;->b()V

    .line 321
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->B()V

    .line 325
    iget-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ad:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "InboxFragment.ADD_TO_BACKSTACK"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    move v0, v2

    .line 329
    :goto_0
    if-eqz v0, :cond_1

    .line 330
    invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/c2dm/c;->c()V

    .line 331
    invoke-static {}, Lcom/instagram/android/directshare/f/a;->a()Lcom/instagram/android/directshare/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/f/a;->b()V

    .line 335
    invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->Y()V

    .line 339
    invoke-static {}, Lcom/instagram/android/directshare/c/x;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iput-boolean v2, p0, Lcom/instagram/android/directshare/c/c;->ae:Z

    .line 344
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ae:Z

    if-eqz v0, :cond_2

    .line 345
    invoke-direct {p0, v2}, Lcom/instagram/android/directshare/c/c;->c(Z)V

    .line 346
    iput-boolean v1, p0, Lcom/instagram/android/directshare/c/c;->ae:Z

    .line 349
    :cond_2
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/android/c2dm/a;

    iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->af:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 351
    invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->X()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->s_()V

    .line 354
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 325
    goto :goto_0
.end method

.method public final G()V
    .locals 3

    .prologue
    .line 309
    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    .line 310
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->g:Lcom/instagram/android/feed/e/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/a;->a()V

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ad:Z

    .line 313
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/android/c2dm/a;

    iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->af:Lcom/instagram/common/j/e;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 314
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 262
    sget v0, Lcom/facebook/aw;->fragment_inbox:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 501
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->f:Lcom/instagram/android/activity/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/android/activity/c;->a(IILandroid/content/Intent;)V

    .line 463
    return-void
.end method

.method final a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 447
    iput-boolean p2, p0, Lcom/instagram/android/directshare/c/c;->ai:Z

    .line 448
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    .line 449
    sget v1, Lcom/instagram/android/directshare/c/b;->b:I

    if-ne p1, v1, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->i()V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->j()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 375
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V

    .line 376
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "InboxFragment.REFRESH_INBOX"

    iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->d:Lcom/instagram/android/directshare/c/m;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "InboxFragment.UPDATE_INBOX"

    iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->d:Lcom/instagram/android/directshare/c/m;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "InboxFragment.INBOX_SHARE_COUNT_CHANGED"

    iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->d:Lcom/instagram/android/directshare/c/m;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "INTENT_ACTION_PENDING_REQUEST_ACCEPTED"

    iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->d:Lcom/instagram/android/directshare/c/m;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->c:Lcom/instagram/common/d/h;

    .line 383
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->c:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 384
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 199
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/instagram/android/directshare/c/c;->a:Landroid/os/Handler;

    .line 200
    new-instance v2, Lcom/instagram/android/directshare/c/o;

    invoke-direct {v2, p0}, Lcom/instagram/android/directshare/c/o;-><init>(Lcom/instagram/android/directshare/c/c;)V

    iput-object v2, p0, Lcom/instagram/android/directshare/c/c;->e:Lcom/instagram/android/directshare/c/o;

    .line 202
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/directshare/c/t;->h()Z

    .line 204
    if-eqz p1, :cond_0

    .line 205
    const-string v2, "InboxFragment.LOGGED_INBOX_OPEN"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/instagram/android/directshare/c/c;->ac:Z

    .line 208
    :cond_0
    iget-boolean v2, p0, Lcom/instagram/android/directshare/c/c;->ac:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/directshare/c/t;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/directshare/c/t;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/directshare/a/a;->a(Ljava/util/List;)V

    .line 210
    iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ac:Z

    .line 213
    :cond_1
    new-instance v2, Lcom/instagram/android/directshare/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/directshare/c/c;->e:Lcom/instagram/android/directshare/c/o;

    invoke-direct {v2, v3, v4}, Lcom/instagram/android/directshare/c/a;-><init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;)V

    iput-object v2, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;

    .line 214
    iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;

    new-instance v3, Lcom/instagram/android/directshare/c/e;

    invoke-direct {v3, p0}, Lcom/instagram/android/directshare/c/e;-><init>(Lcom/instagram/android/directshare/c/c;)V

    invoke-virtual {v2, v3}, Lcom/instagram/android/directshare/c/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 221
    new-instance v2, Lcom/instagram/android/feed/e/a;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/instagram/creation/b/d/b;->a:I

    iget-object v5, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;

    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/instagram/android/feed/e/a;-><init>(Landroid/content/Context;ILcom/instagram/android/feed/e/e;Lcom/instagram/android/feed/e/d;)V

    iput-object v2, p0, Lcom/instagram/android/directshare/c/c;->g:Lcom/instagram/android/feed/e/a;

    .line 228
    new-instance v2, Lcom/instagram/android/activity/c;

    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/instagram/android/activity/c;-><init>(Landroid/content/Context;Lcom/instagram/android/activity/e;)V

    iput-object v2, p0, Lcom/instagram/android/directshare/c/c;->f:Lcom/instagram/android/activity/c;

    .line 229
    iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->f:Lcom/instagram/android/activity/c;

    invoke-virtual {v2, p1}, Lcom/instagram/android/activity/c;->b(Landroid/os/Bundle;)V

    .line 231
    if-eqz p1, :cond_2

    const-string v2, "InboxFragment.IGNORE_ADD_TO_BACKSTACK_ARGUMENT"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ad:Z

    .line 234
    new-instance v0, Lcom/instagram/android/directshare/c/f;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/c/f;-><init>(Lcom/instagram/android/directshare/c/c;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->af:Lcom/instagram/common/j/e;

    .line 256
    invoke-direct {p0, v1}, Lcom/instagram/android/directshare/c/c;->c(Z)V

    .line 257
    return-void

    :cond_2
    move v0, v1

    .line 231
    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 269
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;

    .line 270
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/directshare/c/h;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/c/h;-><init>(Lcom/instagram/android/directshare/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/directshare/c/c;->e:Lcom/instagram/android/directshare/c/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 284
    sget v0, Lcom/facebook/av;->inbox_requests_separator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->aa:Landroid/view/View;

    .line 285
    sget v0, Lcom/facebook/av;->inbox_requests_row:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;

    .line 286
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/instagram/android/directshare/c/i;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/c/i;-><init>(Lcom/instagram/android/directshare/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->d()V

    .line 296
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/c/c;->aj:Lcom/instagram/common/a/a/j;

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/t;->a(Lcom/instagram/common/a/a/j;)V

    .line 297
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 414
    sget v0, Lcom/facebook/az;->directshare_inbox:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(I)V

    .line 415
    new-instance v0, Lcom/instagram/android/directshare/c/j;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/c/j;-><init>(Lcom/instagram/android/directshare/c/c;)V

    invoke-interface {p1, v1, v0}, Lcom/instagram/a/b;->a(ZLandroid/view/View$OnClickListener;)V

    .line 422
    new-instance v0, Lcom/instagram/android/directshare/c/k;

    invoke-direct {v0, p0}, Lcom/instagram/android/directshare/c/k;-><init>(Lcom/instagram/android/directshare/c/c;)V

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Landroid/view/View$OnClickListener;)V

    .line 428
    invoke-interface {p1, v1}, Lcom/instagram/a/b;->a(Z)V

    .line 429
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->e()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    .line 431
    sget v0, Lcom/facebook/aw;->action_bar_button_new_directshare:I

    new-instance v1, Lcom/instagram/android/directshare/c/l;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/c/l;-><init>(Lcom/instagram/android/directshare/c/c;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 438
    sget v1, Lcom/facebook/av;->action_bar_inbox_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->ab:Landroid/view/View;

    .line 439
    invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->V()V

    .line 440
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 477
    const/16 v0, 0x2712

    invoke-static {p0, v0, p1}, Lcom/instagram/creation/base/e;->a(Landroid/support/v4/app/Fragment;ILjava/io/File;)V

    .line 478
    return-void
.end method

.method public final a(Ljava/io/File;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 472
    invoke-static {p0, p2, p1, p3}, Lcom/instagram/creation/photo/c/a;->a(Landroid/support/v4/app/Fragment;ILjava/io/File;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public final a_(Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/directshare/c/c;->a(Landroid/content/Intent;I)V

    .line 468
    return-void
.end method

.method final c()Lcom/instagram/android/directshare/c/a;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;

    return-object v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    .line 302
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->f:Lcom/instagram/android/activity/c;

    invoke-virtual {v0, p1}, Lcom/instagram/android/activity/c;->a(Landroid/os/Bundle;)V

    .line 303
    const-string v0, "InboxFragment.IGNORE_ADD_TO_BACKSTACK_ARGUMENT"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    const-string v0, "InboxFragment.LOGGED_INBOX_OPEN"

    iget-boolean v1, p0, Lcom/instagram/android/directshare/c/c;->ac:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    return-void
.end method

.method public final h_()V
    .locals 1

    .prologue
    .line 482
    invoke-static {}, Lcom/instagram/android/activity/MainTabActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->W()V

    goto :goto_0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    const-string v0, "direct_share_inbox"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 364
    invoke-super {p0}, Lcom/instagram/base/a/b;->m_()V

    .line 365
    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->ab:Landroid/view/View;

    .line 366
    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;

    .line 367
    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;

    .line 368
    iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->aa:Landroid/view/View;

    .line 370
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/c/c;->aj:Lcom/instagram/common/a/a/j;

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/t;->b(Lcom/instagram/common/a/a/j;)V

    .line 371
    return-void
.end method

.method public final r_()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Lcom/instagram/base/a/b;->r_()V

    .line 359
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->c:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 360
    return-void
.end method

.method public final s_()V
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/instagram/base/a/f;->a(Landroid/support/v4/app/Fragment;Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 410
    :cond_0
    return-void
.end method
