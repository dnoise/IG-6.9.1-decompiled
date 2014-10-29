.class public Lcom/instagram/android/feed/a/a;
.super Landroid/widget/BaseAdapter;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/instagram/android/feed/a/a/q;
.implements Lcom/instagram/android/feed/a/a/r;
.implements Lcom/instagram/android/feed/a/b/f;
.implements Lcom/instagram/android/feed/ui/d;
.implements Lcom/instagram/feed/b/b;
.implements Lcom/instagram/feed/survey/m;


# instance fields
.field protected a:Lcom/instagram/android/fragment/a;

.field protected final b:Landroid/support/v4/app/an;

.field protected final c:Landroid/support/v4/app/s;

.field protected final d:Landroid/content/Context;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/feed/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/feed/survey/i;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/instagram/android/feed/a/a/e;

.field private final h:Lcom/instagram/android/feed/a/a/i;

.field private final i:Lcom/instagram/feed/b/a;

.field private final j:Lcom/instagram/android/feed/a/a/b;

.field private final k:Lcom/instagram/android/feed/a/a/m;

.field private l:Landroid/widget/ListView;

.field private m:Lcom/instagram/android/feed/ui/StickyHeaderListView;

.field private n:I

.field private o:I

.field private p:Lcom/instagram/base/b/b;

.field private q:Z

.field private r:Lcom/instagram/android/feed/a/g;

.field private s:Lcom/instagram/android/feed/a/f;

.field private t:Lcom/instagram/android/feed/a/b/a;

.field private u:I

.field private v:I

.field private w:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/a;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->e:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->f:Ljava/util/Set;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/feed/a/a;->n:I

    .line 114
    new-instance v0, Lcom/instagram/android/feed/a/g;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/g;-><init>(Lcom/instagram/android/feed/a/a;B)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    .line 124
    sget v0, Lcom/instagram/android/feed/a/h;->a:I

    iput v0, p0, Lcom/instagram/android/feed/a/a;->u:I

    .line 126
    iput v1, p0, Lcom/instagram/android/feed/a/a;->v:I

    .line 128
    new-instance v0, Lcom/instagram/android/feed/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/a/b;-><init>(Lcom/instagram/android/feed/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->w:Landroid/os/Handler;

    .line 144
    iput-object p1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    .line 145
    iput p2, p0, Lcom/instagram/android/feed/a/a;->u:I

    .line 146
    invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->n()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;

    .line 147
    invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->z()Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->b:Landroid/support/v4/app/an;

    .line 148
    invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->c:Landroid/support/v4/app/s;

    .line 151
    new-instance v0, Lcom/instagram/android/feed/a/a/e;

    invoke-static {}, Lcom/instagram/common/g/b/h;->a()Lcom/instagram/common/g/b/h;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/feed/a/a/e;-><init>(Lcom/instagram/common/g/b/h;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->g:Lcom/instagram/android/feed/a/a/e;

    .line 152
    new-instance v0, Lcom/instagram/android/feed/a/a/i;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/a/a/i;-><init>(Lcom/instagram/android/feed/a/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/i;

    .line 153
    new-instance v0, Lcom/instagram/feed/b/a;

    invoke-direct {v0, p0}, Lcom/instagram/feed/b/a;-><init>(Lcom/instagram/feed/b/b;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->i:Lcom/instagram/feed/b/a;

    .line 154
    new-instance v0, Lcom/instagram/android/feed/a/a/m;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/feed/a/a/m;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    .line 155
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0, p0}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/r;)V

    .line 156
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0, p0}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/q;)V

    .line 157
    new-instance v0, Lcom/instagram/android/feed/a/b/a;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-direct {v0, v1, p0}, Lcom/instagram/android/feed/a/b/a;-><init>(Lcom/instagram/android/fragment/a;Lcom/instagram/android/feed/a/b/f;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->t:Lcom/instagram/android/feed/a/b/a;

    .line 158
    new-instance v0, Lcom/instagram/android/feed/a/a/b;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/a/b;-><init>(Lcom/instagram/android/feed/a/a;Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;

    .line 160
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;

    new-instance v1, Lcom/instagram/android/feed/a/c;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/feed/a/c;-><init>(Lcom/instagram/android/feed/a/a;I)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/android/feed/a/a/d;)V

    .line 201
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->v()V

    .line 203
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-static {v0}, Lcom/instagram/base/b/b;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/base/b/b;->a(Landroid/content/Context;)Lcom/instagram/base/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->p:Lcom/instagram/base/b/b;

    .line 206
    :cond_0
    return-void
.end method

.method public static a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->row_feed_photo_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/widget/ConstrainedProgressImageView;

    return-object v0
.end method

.method public static a(Lcom/instagram/feed/widget/ConstrainedProgressImageView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 300
    sget v0, Lcom/facebook/av;->key_media_id:I

    invoke-virtual {p0, v0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 908
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/feed/a/g;->a(Ljava/util/List;Z)V

    .line 909
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V

    .line 910
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 508
    sget v1, Lcom/facebook/av;->media_group:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 510
    if-nez v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v4

    sub-int v1, v3, v1

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->u()Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/widget/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/a;)Lcom/instagram/android/feed/a/a/b;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/feed/a/a;)Lcom/instagram/android/feed/a/f;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->s:Lcom/instagram/android/feed/a/f;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/feed/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/instagram/android/feed/a/a;->u:I

    return v0
.end method

.method protected static f(I)I
    .locals 1
    .parameter

    .prologue
    .line 753
    add-int/lit8 v0, p0, 0x4

    return v0
.end method

.method private h(I)V
    .locals 3
    .parameter

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 653
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", child count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset position is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->j(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_1
    return-void
.end method

.method private i(I)Z
    .locals 1
    .parameter

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j(I)I
    .locals 1
    .parameter

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->k()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/survey/i;

    .line 362
    iget v2, p0, Lcom/instagram/android/feed/a/a;->v:I

    invoke-interface {v0, v2}, Lcom/instagram/feed/survey/i;->a(I)V

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->w:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 469
    return-void
.end method

.method private u()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 475
    invoke-static {}, Lcom/instagram/creation/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/feed/a/a;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 504
    :goto_0
    return v0

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v5

    .line 481
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    move v4, v2

    .line 483
    :goto_1
    if-ge v4, v6, :cond_3

    .line 484
    invoke-virtual {v5, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 485
    invoke-static {v5, v4}, Lcom/instagram/android/feed/a/a;->a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    sget v1, Lcom/facebook/av;->key_list_position:I

    invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 488
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/d/l;

    .line 490
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->g()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/instagram/android/feed/a/a;->n:I

    if-eq v8, v9, :cond_2

    invoke-static {v5, v7}, Lcom/instagram/android/feed/a/a;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 495
    sget v2, Lcom/facebook/av;->media_group:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/android/feed/a/b/ac;

    .line 498
    iget-object v4, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v2, v0, v3}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;IZ)V

    move v0, v3

    .line 499
    goto :goto_0

    .line 483
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 504
    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->k()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-virtual {v1}, Lcom/instagram/android/feed/a/g;->c()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/android/feed/a/a;->o:I

    .line 639
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    if-nez p2, :cond_0

    .line 688
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/instagram/android/feed/a/b/m;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 691
    :cond_0
    iget-object v2, p0, Lcom/instagram/android/feed/a/a;->t:Lcom/instagram/android/feed/a/b/a;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/b/r;

    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/d/l;

    invoke-virtual {v2, v0, v1}, Lcom/instagram/android/feed/a/b/a;->a(Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;)V

    .line 696
    return-object p2
.end method

.method protected a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 757
    invoke-virtual {p0, p2}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 767
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->t:Lcom/instagram/android/feed/a/b/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/a;->a()Landroid/view/View;

    move-result-object v0

    .line 765
    :goto_0
    return-object v0

    .line 761
    :pswitch_1
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 763
    :pswitch_2
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/instagram/android/feed/a/b/s;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 765
    :pswitch_3
    invoke-static {p1, p3}, Lcom/instagram/ui/widget/loadmore/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 757
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v2

    .line 267
    if-nez v2, :cond_0

    move-object v0, v1

    .line 279
    :goto_0
    return-object v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 272
    invoke-static {v2, v0}, Lcom/instagram/android/feed/a/a;->a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;

    move-result-object v3

    .line 273
    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v3}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/widget/ConstrainedProgressImageView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 279
    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->n_()V

    .line 249
    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 793
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/a;->q:Z

    if-eqz v0, :cond_0

    .line 796
    iput-boolean v3, p0, Lcom/instagram/android/feed/a/a;->q:Z

    .line 797
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->w:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 800
    :cond_0
    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 835
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type unhandled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/feed/d/l;

    .line 806
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->b()I

    move-result v0

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->c()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/feed/d/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->h()V

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->t:Lcom/instagram/android/feed/a/b/a;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/i;

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/a/a/i;->a(Lcom/instagram/feed/d/l;)Z

    move-result v4

    iget-object v1, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v1, p3, v2}, Lcom/instagram/android/feed/a/a/m;->a(ILcom/instagram/feed/d/l;)I

    move-result v5

    move-object v1, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/a;->a(Landroid/view/View;Lcom/instagram/feed/d/l;IZI)V

    .line 833
    :goto_0
    :pswitch_1
    return-void

    .line 820
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/b/w;

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/a;->g(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne p3, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iget-object v5, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/s;->a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZZILcom/instagram/android/feed/a/b/v;)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 830
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/loadmore/e;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-static {v0, v1}, Lcom/instagram/ui/widget/loadmore/d;->a(Lcom/instagram/ui/widget/loadmore/e;Lcom/instagram/ui/widget/loadmore/c;)V

    goto :goto_0

    .line 800
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/graphics/Bitmap;Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 773
    if-eqz p1, :cond_1

    .line 774
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->c()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/i;

    invoke-virtual {v0, p2}, Lcom/instagram/android/feed/a/a/i;->a(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v0

    sget v1, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/i;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/i;->a(Ljava/lang/String;)V

    .line 785
    :cond_0
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->ad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->t()V

    .line 789
    :cond_1
    return-void
.end method

.method public final a(Lcom/instagram/android/feed/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/instagram/android/feed/a/a;->s:Lcom/instagram/android/feed/a/f;

    .line 859
    return-void
.end method

.method public final a(Lcom/instagram/android/feed/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 849
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 850
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter

    .prologue
    .line 884
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/d/l;Z)V

    .line 885
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-nez v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->w()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_2

    .line 533
    invoke-static {p1, p3}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/i;

    invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->b()Lcom/instagram/android/people/widget/PeopleTagsLayout;

    move-result-object v1

    invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/instagram/android/feed/a/a/i;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V

    goto :goto_0

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0, p2, p1, p3}, Lcom/instagram/android/feed/a/a/m;->a(ILcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V

    goto :goto_0
.end method

.method public final a(Lcom/instagram/feed/d/l;Landroid/view/View;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 582
    new-instance v0, Lcom/instagram/android/feed/a/a/x;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/feed/a/a/x;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/android/feed/a/a;Landroid/view/View;Lcom/instagram/feed/d/l;I)V

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/x;->a()V

    .line 590
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 888
    if-nez p1, :cond_0

    .line 901
    :goto_0
    return-void

    .line 892
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/feed/a/a;->n:I

    .line 897
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 898
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    invoke-direct {p0, v0, p2}, Lcom/instagram/android/feed/a/a;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/instagram/feed/survey/i;)V
    .locals 1
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    iget v0, p0, Lcom/instagram/android/feed/a/a;->v:I

    invoke-interface {p1, v0}, Lcom/instagram/feed/survey/i;->b(I)V

    .line 370
    return-void
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 594
    invoke-static {}, Lcom/instagram/creation/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/android/feed/a/a;->n:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v0

    sget v1, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public final b(Lcom/instagram/feed/d/l;ILcom/instagram/android/feed/a/b/ac;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a;->b:Landroid/support/v4/app/an;

    sget v4, Lcom/instagram/feed/d/o;->a:I

    sget v5, Lcom/instagram/android/g/g;->b:I

    iget-object v6, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    iget-object v7, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v7}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;IIILcom/instagram/android/fragment/ab;Lcom/instagram/feed/g/a;)V

    .line 555
    invoke-static {p1, p3}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->b()Lcom/instagram/android/people/widget/PeopleTagsLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/i;

    invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->b()Lcom/instagram/android/people/widget/PeopleTagsLayout;

    move-result-object v1

    invoke-virtual {p3}, Lcom/instagram/android/feed/a/b/ac;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/instagram/android/feed/a/a/i;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->w:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/feed/a/e;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/a/e;-><init>(Lcom/instagram/android/feed/a/a;Lcom/instagram/feed/d/l;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 573
    return-void
.end method

.method public final b(Lcom/instagram/feed/survey/i;)V
    .locals 1
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 375
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 879
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/g;->b()V

    .line 880
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/a;->c(Ljava/util/List;)V

    .line 881
    return-void
.end method

.method public final b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/instagram/feed/d/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 937
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->C()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 917
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-static {v0}, Lcom/instagram/android/feed/a/g;->b(Lcom/instagram/android/feed/a/g;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v3

    .line 284
    if-nez v3, :cond_0

    move-object v0, v2

    .line 296
    :goto_0
    return-object v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 289
    invoke-static {v3, v1}, Lcom/instagram/android/feed/a/a;->a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_1

    sget v4, Lcom/facebook/av;->key_list_position:I

    invoke-virtual {v0, v4}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 291
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 296
    goto :goto_0
.end method

.method public final c()Lcom/instagram/android/fragment/a;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 904
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/feed/a/a;->a(Ljava/util/List;Z)V

    .line 905
    return-void
.end method

.method public final d(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/a;->E()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->E()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 313
    :cond_0
    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 214
    iget v0, p0, Lcom/instagram/android/feed/a/a;->u:I

    .line 215
    sget v1, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v0, v1, :cond_1

    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    move v1, v0

    .line 216
    :goto_0
    iput v1, p0, Lcom/instagram/android/feed/a/a;->u:I

    .line 217
    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    if-ne v1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->h()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/i;

    .line 221
    invoke-interface {v0, v1}, Lcom/instagram/android/feed/a/i;->a(I)V

    goto :goto_1

    .line 215
    :cond_1
    sget v0, Lcom/instagram/android/feed/a/h;->a:I

    move v1, v0

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-static {v0}, Lcom/instagram/android/feed/a/g;->a(Lcom/instagram/android/feed/a/g;)V

    .line 224
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V

    .line 225
    return-void
.end method

.method public final e()Lcom/instagram/android/feed/a/a/b;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;

    return-object v0
.end method

.method public final e(I)V
    .locals 3
    .parameter

    .prologue
    .line 600
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/creation/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, p1, 0x15

    if-ge v1, v0, :cond_0

    .line 602
    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 603
    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 604
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    invoke-static {}, Lcom/instagram/common/g/c/a;->a()Lcom/instagram/common/g/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/instagram/feed/d/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/common/g/c/a;->a(Ljava/lang/String;)V

    .line 611
    :cond_0
    return-void

    .line 601
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final f()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->l:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 253
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->l:Landroid/widget/ListView;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->l:Landroid/widget/ListView;

    return-object v0
.end method

.method public final g()Lcom/instagram/android/feed/ui/StickyHeaderListView;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->m:Lcom/instagram/android/feed/ui/StickyHeaderListView;

    if-nez v0, :cond_0

    .line 260
    sget v0, Lcom/facebook/av;->sticky_header_list:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/ui/StickyHeaderListView;

    iput-object v0, p0, Lcom/instagram/android/feed/a/a;->m:Lcom/instagram/android/feed/ui/StickyHeaderListView;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->m:Lcom/instagram/android/feed/ui/StickyHeaderListView;

    return-object v0
.end method

.method public final g(I)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->j(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/g;->b(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/instagram/android/feed/a/a;->o:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->h(I)V

    .line 644
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    .line 647
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->j(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/g;->a(I)Lcom/instagram/feed/d/l;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 672
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->h(I)V

    .line 720
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    const/4 v0, 0x2

    .line 731
    :goto_0
    return v0

    .line 723
    :cond_0
    iget v0, p0, Lcom/instagram/android/feed/a/a;->u:I

    sget v1, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v0, v1, :cond_2

    .line 724
    invoke-virtual {p0, p1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 725
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->af()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    const/4 v0, 0x3

    goto :goto_0

    .line 728
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 731
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 677
    if-nez p2, :cond_0

    .line 678
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p3}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->d:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p1}, Lcom/instagram/android/feed/a/a;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 683
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x4

    return v0
.end method

.method public final h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 318
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/i;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/i;->a()V

    .line 319
    iput-object v1, p0, Lcom/instagram/android/feed/a/a;->l:Landroid/widget/ListView;

    .line 320
    iput-object v1, p0, Lcom/instagram/android/feed/a/a;->m:Lcom/instagram/android/feed/ui/StickyHeaderListView;

    .line 321
    return-void
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/b;->c()V

    .line 379
    return-void
.end method

.method public final i_()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->d()V

    .line 578
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->k()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 424
    iput v3, p0, Lcom/instagram/android/feed/a/a;->n:I

    .line 427
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->ad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v2

    .line 433
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 434
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 436
    if-ne v1, v3, :cond_2

    .line 438
    iput v0, p0, Lcom/instagram/android/feed/a/a;->n:I

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 441
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 442
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 443
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/instagram/android/feed/a/a;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    invoke-static {v2, v1}, Lcom/instagram/android/feed/a/a;->a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;

    move-result-object v4

    .line 445
    if-eqz v4, :cond_3

    .line 446
    sget v0, Lcom/facebook/av;->key_list_position:I

    invoke-virtual {v4, v0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/instagram/android/feed/a/a;->n:I

    .line 451
    sget v0, Lcom/facebook/av;->key_media_id:I

    invoke-virtual {v4, v0}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 452
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    invoke-virtual {v4}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 455
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/b/ac;

    .line 457
    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;

    move-result-object v0

    sget v4, Lcom/instagram/android/widget/o;->d:I

    invoke-virtual {v0, v4}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V

    .line 441
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public k()I
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 700
    iget v0, p0, Lcom/instagram/android/feed/a/a;->v:I

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/g;->e()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/a;->q:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/g;->a()V

    .line 616
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->v()V

    .line 617
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/feed/a/a;->q:Z

    .line 619
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->w:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 620
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/g;->a()V

    .line 625
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->v()V

    .line 626
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/feed/a/a;->q:Z

    .line 628
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->w:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    return-void
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Lcom/instagram/android/feed/a/a;->u:I

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->j:Lcom/instagram/android/feed/a/a/b;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/b;->a()V

    .line 386
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/android/feed/a/a/i;->onScroll(Landroid/widget/AbsListView;III)V

    .line 387
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->i:Lcom/instagram/feed/b/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/feed/b/a;->onScroll(Landroid/widget/AbsListView;III)V

    .line 390
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p3, :cond_0

    .line 391
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/a;->c(I)Landroid/view/View;

    move-result-object v0

    .line 392
    if-nez v0, :cond_3

    .line 394
    invoke-static {}, Lcom/instagram/creation/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->h()V

    .line 411
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->p:Lcom/instagram/base/b/b;

    if-eqz v0, :cond_1

    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->p:Lcom/instagram/base/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/base/b/b;->onScroll(Landroid/widget/AbsListView;III)V

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->g()Lcom/instagram/android/feed/ui/StickyHeaderListView;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 419
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 421
    :cond_2
    return-void

    .line 398
    :cond_3
    sget v1, Lcom/facebook/av;->media_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 402
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v4

    sub-int v0, v3, v0

    .line 403
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 404
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fd3333333333333L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 405
    if-ge v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->h()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 325
    iput p2, p0, Lcom/instagram/android/feed/a/a;->v:I

    .line 327
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a;->s()V

    .line 329
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v0

    sget v1, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->h:Lcom/instagram/android/feed/a/a/i;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/feed/a/a/i;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 331
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->g:Lcom/instagram/android/feed/a/a/e;

    invoke-virtual {v0, p1}, Lcom/instagram/android/feed/a/a/e;->a(Landroid/widget/AbsListView;)V

    .line 334
    :cond_0
    if-nez p2, :cond_5

    .line 335
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->w:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 340
    :goto_0
    iget v0, p0, Lcom/instagram/android/feed/a/a;->n:I

    if-eq v0, v3, :cond_3

    .line 343
    const/4 v0, 0x0

    .line 344
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 345
    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 347
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v1, v0

    .line 348
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    sub-int v0, v2, v0

    .line 349
    iget v2, p0, Lcom/instagram/android/feed/a/a;->n:I

    if-lt v2, v1, :cond_2

    iget v1, p0, Lcom/instagram/android/feed/a/a;->n:I

    if-le v1, v0, :cond_3

    .line 351
    :cond_2
    iput v3, p0, Lcom/instagram/android/feed/a/a;->n:I

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->p:Lcom/instagram/base/b/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->p:Lcom/instagram/base/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/base/b/b;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 358
    :cond_4
    return-void

    .line 337
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->w:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->r:Lcom/instagram/android/feed/a/g;

    invoke-static {v0}, Lcom/instagram/android/feed/a/g;->c(Lcom/instagram/android/feed/a/g;)I

    move-result v0

    return v0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->i()V

    .line 926
    return-void
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/instagram/android/feed/a/a;->k:Lcom/instagram/android/feed/a/a/m;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
