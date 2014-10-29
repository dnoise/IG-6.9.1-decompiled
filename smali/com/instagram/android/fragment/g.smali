.class public final Lcom/instagram/android/fragment/g;
.super Lcom/instagram/common/a/a/j;
.source "AbstractFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<TMediaFeedResponseType;>;"
    }
.end annotation


# instance fields
.field protected final a:Z

.field final synthetic b:Lcom/instagram/android/fragment/a;

.field private final c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/a;Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    .line 441
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/g;->c:Landroid/content/Context;

    .line 442
    iput-boolean p3, p0, Lcom/instagram/android/fragment/g;->a:Z

    .line 443
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/a;Landroid/content/Context;ZB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/fragment/g;-><init>(Lcom/instagram/android/fragment/a;Landroid/content/Context;Z)V

    return-void
.end method

.method private a(Lcom/instagram/feed/a/i;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMediaFeedResponseType;)V"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/fragment/a;->ab:Ljava/lang/Boolean;

    .line 448
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/android/fragment/a;Z)Z

    .line 449
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    invoke-virtual {p1}, Lcom/instagram/feed/a/i;->u()Lcom/instagram/feed/f/a;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/fragment/a;->ac:Lcom/instagram/feed/f/a;

    .line 451
    iget-boolean v0, p0, Lcom/instagram/android/fragment/g;->a:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/a/i;->t()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->b(Ljava/util/List;)V

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    iget-boolean v1, p0, Lcom/instagram/android/fragment/g;->a:Z

    invoke-virtual {v0, p1, v1}, Lcom/instagram/android/fragment/a;->b(Lcom/instagram/feed/a/i;Z)V

    .line 458
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/a/i;->t()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->c(Ljava/util/List;)V

    goto :goto_0
.end method

.method private b(Lcom/instagram/feed/a/i;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMediaFeedResponseType;)V"
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p1}, Lcom/instagram/feed/a/i;->t()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 495
    iget-boolean v0, p0, Lcom/instagram/android/fragment/g;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/fragment/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/creation/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p1}, Lcom/instagram/feed/a/i;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 497
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    invoke-static {}, Lcom/instagram/common/g/c/a;->a()Lcom/instagram/common/g/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/g;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/instagram/feed/d/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/common/g/c/a;->a(Ljava/lang/String;)V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->ak()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/feed/d/w;->a(Landroid/content/Context;)Lcom/instagram/feed/d/w;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/a/i;->t()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/w;->a(Ljava/util/Collection;)V

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    iget-boolean v1, p0, Lcom/instagram/android/fragment/g;->a:Z

    invoke-virtual {v0, p1, v1}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/feed/a/i;Z)V

    .line 512
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/android/fragment/a;Z)Z

    .line 481
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/a;->b(Lcom/instagram/android/fragment/a;Z)Z

    .line 482
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->Z()V

    .line 483
    return-void
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<TMediaFeedResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/a;->b(Lcom/instagram/android/fragment/a;Z)Z

    .line 488
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->aa()V

    .line 489
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    check-cast p1, Lcom/instagram/feed/a/i;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/g;->a(Lcom/instagram/feed/a/i;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<TMediaFeedResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/fragment/a;->ab:Ljava/lang/Boolean;

    .line 463
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/android/fragment/a;Z)Z

    .line 465
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/common/l/a/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->aj()V

    .line 469
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/k/a/d;

    invoke-static {v0}, Lcom/instagram/g/c;->a(Lcom/instagram/api/k/a/d;)V

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V

    .line 475
    iget-object v0, p0, Lcom/instagram/android/fragment/g;->b:Lcom/instagram/android/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->ab()V

    .line 476
    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    check-cast p1, Lcom/instagram/feed/a/i;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/g;->b(Lcom/instagram/feed/a/i;)V

    return-void
.end method
