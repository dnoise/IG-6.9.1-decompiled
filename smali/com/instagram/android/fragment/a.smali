.class public abstract Lcom/instagram/android/fragment/a;
.super Lcom/instagram/base/a/c;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/a/b/v;
.implements Lcom/instagram/android/fragment/ab;
.implements Lcom/instagram/base/a/e;
.implements Lcom/instagram/feed/g/a;
.implements Lcom/instagram/ui/widget/loadmore/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FeedAdapterType:",
        "Lcom/instagram/android/feed/a/a;",
        "MediaFeedResponseType:",
        "Lcom/instagram/feed/a/i;",
        ">",
        "Lcom/instagram/base/a/c;",
        "Lcom/instagram/android/feed/a/b/v;",
        "Lcom/instagram/android/fragment/ab;",
        "Lcom/instagram/base/a/e;",
        "Lcom/instagram/feed/g/a;",
        "Lcom/instagram/ui/widget/loadmore/c;"
    }
.end annotation


# instance fields
.field protected aa:Ljava/lang/Long;

.field protected ab:Ljava/lang/Boolean;

.field protected ac:Lcom/instagram/feed/f/a;

.field protected ad:Lcom/instagram/common/a/a/g;

.field private ae:Lcom/instagram/android/feed/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFeedAdapterType;"
        }
    .end annotation
.end field

.field private af:Lcom/instagram/feed/c/c;

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Lcom/instagram/common/d/h;

.field private al:Lcom/instagram/android/feed/e/k;

.field private final am:Lcom/instagram/common/j/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/j/d",
            "<",
            "Lcom/instagram/feed/d/t;",
            ">;"
        }
    .end annotation
.end field

.field private an:Landroid/os/Handler;

.field protected i:Lcom/instagram/feed/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/feed/a/h",
            "<TMediaFeedResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->ab:Ljava/lang/Boolean;

    .line 69
    iput-boolean v1, p0, Lcom/instagram/android/fragment/a;->ag:Z

    .line 70
    iput-boolean v1, p0, Lcom/instagram/android/fragment/a;->ah:Z

    .line 85
    new-instance v0, Lcom/instagram/android/fragment/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/b;-><init>(Lcom/instagram/android/fragment/a;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->am:Lcom/instagram/common/j/d;

    .line 177
    new-instance v0, Lcom/instagram/android/fragment/e;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/e;-><init>(Lcom/instagram/android/fragment/a;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->an:Landroid/os/Handler;

    .line 433
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->an:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/instagram/android/fragment/a;->ai:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/android/fragment/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/a;->ah:Z

    return v0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/instagram/android/fragment/a;->ag:Z

    return p1
.end method


# virtual methods
.method public F()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/instagram/base/a/c;->F()V

    .line 137
    iget-boolean v0, p0, Lcom/instagram/android/fragment/a;->ah:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->d()V

    .line 175
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-static {}, Lcom/instagram/creation/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->j()V

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->i()V

    .line 151
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/c;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/c;-><init>(Lcom/instagram/android/fragment/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/android/feed/a/f;)V

    .line 169
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->ak:Lcom/instagram/common/d/h;

    if-nez v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/g/c;->a(Landroid/app/Activity;)Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->ak:Lcom/instagram/common/d/h;

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->ak:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 173
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->al:Lcom/instagram/android/feed/e/k;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/k;->a()V

    .line 174
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->af:Lcom/instagram/feed/c/c;

    invoke-virtual {v0}, Lcom/instagram/feed/c/c;->c()V

    goto :goto_0
.end method

.method public G()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    .line 232
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/android/feed/a/f;)V

    .line 234
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->an:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->q()V

    .line 236
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->ak:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 237
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->al:Lcom/instagram/android/feed/e/k;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/k;->b()V

    .line 238
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->af:Lcom/instagram/feed/c/c;

    invoke-virtual {v0}, Lcom/instagram/feed/c/c;->b()V

    .line 239
    invoke-static {}, Lcom/instagram/feed/c/q;->a()Lcom/instagram/feed/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/q;->b()V

    .line 240
    return-void
.end method

.method public H()V
    .locals 3

    .prologue
    .line 272
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/t;

    iget-object v2, p0, Lcom/instagram/android/fragment/a;->am:Lcom/instagram/common/j/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 274
    invoke-super {p0}, Lcom/instagram/base/a/c;->H()V

    .line 275
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->af:Lcom/instagram/feed/c/c;

    invoke-virtual {v0}, Lcom/instagram/feed/c/c;->d()V

    .line 276
    return-void
.end method

.method public final V()Z
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v0

    sget v1, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final W()Lcom/instagram/android/feed/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFeedAdapterType;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->ae:Lcom/instagram/android/feed/a/a;

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->X()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->ae:Lcom/instagram/android/feed/a/a;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->ae:Lcom/instagram/android/feed/a/a;

    return-object v0
.end method

.method protected abstract X()Lcom/instagram/android/feed/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFeedAdapterType;"
        }
    .end annotation
.end method

.method protected Y()I
    .locals 1

    .prologue
    .line 305
    sget v0, Lcom/instagram/android/feed/a/h;->a:I

    return v0
.end method

.method protected abstract Z()V
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 250
    sget v0, Lcom/facebook/aw;->layout_feed:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    .line 283
    invoke-static {}, Lcom/instagram/feed/f/a;->a()Lcom/instagram/feed/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->ac:Lcom/instagram/feed/f/a;

    .line 285
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/a;->a(Landroid/widget/ListAdapter;)V

    .line 287
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/t;

    iget-object v2, p0, Lcom/instagram/android/fragment/a;->am:Lcom/instagram/common/j/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/j/b;->a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;

    .line 290
    new-instance v0, Lcom/instagram/feed/c/c;

    invoke-direct {v0, p0}, Lcom/instagram/feed/c/c;-><init>(Lcom/instagram/feed/g/a;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->af:Lcom/instagram/feed/c/c;

    .line 291
    new-instance v0, Lcom/instagram/android/feed/e/k;

    invoke-direct {v0, p0, p0}, Lcom/instagram/android/feed/e/k;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->al:Lcom/instagram/android/feed/e/k;

    .line 292
    new-instance v0, Lcom/instagram/common/a/a/g;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->ad:Lcom/instagram/common/a/a/g;

    .line 293
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 262
    return-void
.end method

.method protected abstract a(Lcom/instagram/feed/a/i;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMediaFeedResponseType;Z)V"
        }
    .end annotation
.end method

.method public a(Lcom/instagram/feed/d/ai;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 532
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->am()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {p1}, Lcom/instagram/feed/d/ai;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->ao()Z

    move-result v4

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->aq()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;ZZZ)Lcom/instagram/base/a/a/a;

    move-result-object v1

    invoke-interface {p1}, Lcom/instagram/feed/d/ai;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "video_thumbnail"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 539
    return-void

    .line 532
    :cond_0
    const-string v0, "photo_thumbnail"

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected a(Lcom/instagram/common/l/a/e;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<TMediaFeedResponseType;>;)Z"
        }
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract aa()V
.end method

.method protected abstract ab()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public final ac()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->aj:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->aj:Ljava/util/HashMap;

    .line 338
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->aj:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/a;->a(Ljava/util/Map;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->aj:Ljava/util/HashMap;

    return-object v0
.end method

.method public ad()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public final ae()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->o_()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/instagram/android/fragment/a;->ac:Lcom/instagram/feed/f/a;

    invoke-virtual {v1}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v1

    sget-object v2, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/instagram/android/fragment/a;->ac:Lcom/instagram/feed/f/a;

    invoke-virtual {v1}, Lcom/instagram/feed/f/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final af()Lcom/instagram/feed/f/a;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->ac:Lcom/instagram/feed/f/a;

    return-object v0
.end method

.method public ag()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public ah()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method protected ai()Z
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method protected final aj()V
    .locals 3

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->could_not_refresh_feed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 431
    :cond_0
    return-void
.end method

.method protected ak()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public final al()Lcom/instagram/feed/c/c;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->af:Lcom/instagram/feed/c/c;

    return-object v0
.end method

.method protected abstract am()Landroid/support/v4/app/s;
.end method

.method public an()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public ao()Z
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public ap()Z
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public aq()Z
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b(Lcom/instagram/feed/a/i;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMediaFeedResponseType;Z)V"
        }
    .end annotation
.end method

.method protected final c(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 309
    const-string v0, "%s#%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AbstractFeedFragment"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "constructAndPerformFeedRequest"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/e/c/k;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/a;->d(Z)Lcom/instagram/feed/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->i:Lcom/instagram/feed/a/h;

    .line 314
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->i:Lcom/instagram/feed/a/h;

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/a;->aa:Ljava/lang/Long;

    .line 316
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->i:Lcom/instagram/feed/a/h;

    new-instance v1, Lcom/instagram/android/fragment/g;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v4}, Lcom/instagram/android/fragment/g;-><init>(Lcom/instagram/android/fragment/a;Landroid/content/Context;ZB)V

    invoke-virtual {v0, v1}, Lcom/instagram/feed/a/h;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 317
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->ad:Lcom/instagram/common/a/a/g;

    iget-object v1, p0, Lcom/instagram/android/fragment/a;->i:Lcom/instagram/feed/a/h;

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/g;->a(Lcom/instagram/common/a/a/a;)V

    .line 320
    :cond_0
    return-void
.end method

.method protected abstract d(Z)Lcom/instagram/feed/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/instagram/feed/a/h",
            "<TMediaFeedResponseType;>;"
        }
    .end annotation
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->p()I

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

.method public e()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/instagram/android/fragment/a;->ag:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->m()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/instagram/android/fragment/a;->ac:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Landroid/view/View;
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public m_()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lcom/instagram/base/a/c;->m_()V

    .line 267
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->h()V

    .line 268
    return-void
.end method

.method public n_()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/a;->c(Z)V

    .line 377
    return-void
.end method

.method public final o_()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/instagram/android/fragment/a;->ai:Z

    return v0
.end method

.method public p_()Z
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public r_()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Lcom/instagram/base/a/c;->r_()V

    .line 245
    return-void
.end method

.method public final s_()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->getCount()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p0, v2}, Lcom/instagram/android/fragment/a;->a_(I)V

    .line 203
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/instagram/base/a/f;->a(Landroid/support/v4/app/Fragment;Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/a;->a_(I)V

    .line 207
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 213
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/f;-><init>(Lcom/instagram/android/fragment/a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/a;->a_(I)V

    goto :goto_1
.end method
