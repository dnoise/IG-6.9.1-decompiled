.class public final Lcom/instagram/android/fragment/cr;
.super Lcom/instagram/android/fragment/h;
.source "MainFeedFragment.java"

# interfaces
.implements Lcom/instagram/android/feed/e/d;
.implements Lcom/instagram/base/b/a;
.implements Lcom/instagram/feed/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/h",
        "<",
        "Lcom/instagram/android/feed/a/l;",
        "Lcom/instagram/feed/a/c;",
        ">;",
        "Lcom/instagram/android/feed/e/d;",
        "Lcom/instagram/base/b/a;",
        "Lcom/instagram/feed/e/a;"
    }
.end annotation


# static fields
.field private static final ae:Lcom/instagram/common/y/c/d;

.field private static af:Z


# instance fields
.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Ljava/lang/String;

.field private ak:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private al:Lcom/instagram/o/b/a;

.field private am:Lcom/instagram/feed/survey/q;

.field private an:Lcom/instagram/android/feed/e/a;

.field private ao:Lcom/instagram/ui/e/a;

.field private ap:Lcom/instagram/common/d/h;

.field private aq:Landroid/view/View;

.field private ar:Landroid/os/Handler;

.field private as:Lcom/instagram/common/a/a/o;

.field private at:Lcom/instagram/base/b/b;

.field private final au:Lcom/facebook/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/instagram/common/y/c/e;->a()Lcom/instagram/common/y/c/e;

    move-result-object v0

    const-string v1, "mainfeed"

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/y/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/y/c/e;->c()Lcom/instagram/common/y/c/d;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/fragment/cr;->ae:Lcom/instagram/common/y/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/instagram/android/fragment/h;-><init>()V

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->ar:Landroid/os/Handler;

    .line 134
    new-instance v0, Lcom/instagram/base/b/b;

    invoke-direct {v0}, Lcom/instagram/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->at:Lcom/instagram/base/b/b;

    .line 687
    new-instance v0, Lcom/instagram/android/fragment/cw;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/cw;-><init>(Lcom/instagram/android/fragment/cr;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->au:Lcom/facebook/b/e;

    .line 726
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/cr;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->aq:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/cr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/instagram/android/fragment/cr;->aj:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/fragment/cr;Ljava/io/File;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/fragment/cr;->a(Ljava/io/File;J)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/cr;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/cr;->e(Z)V

    return-void
.end method

.method private a(Lcom/instagram/feed/a/c;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/h;->b(Lcom/instagram/feed/a/i;Z)V

    .line 296
    if-eqz p2, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/instagram/feed/a/c;->t()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/cr;->a(Ljava/util/List;)V

    .line 300
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/feed/a/c;->e()Lcom/instagram/feed/survey/j;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 301
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->am:Lcom/instagram/feed/survey/q;

    invoke-virtual {p1}, Lcom/instagram/feed/a/c;->e()Lcom/instagram/feed/survey/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/q;->b(Lcom/instagram/feed/survey/j;)V

    .line 307
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/instagram/android/fragment/cr;->ag:Z

    if-nez v0, :cond_5

    .line 308
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/cr;->b(Landroid/view/ViewGroup;)V

    .line 312
    :cond_2
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->a()Lcom/instagram/android/directshare/c/t;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 314
    invoke-virtual {v0}, Lcom/instagram/android/directshare/c/t;->i()V

    .line 317
    :cond_3
    invoke-static {}, Lcom/instagram/j/e/a;->a()Lcom/instagram/j/e/a;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/instagram/j/e/a;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 319
    invoke-virtual {v0}, Lcom/instagram/j/e/a;->b()V

    .line 322
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/cr;->ag:Z

    .line 325
    :cond_5
    invoke-virtual {p1}, Lcom/instagram/feed/a/c;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->aj:Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/l;

    invoke-virtual {p1}, Lcom/instagram/feed/a/c;->d()Lcom/instagram/feed/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/l;->a(Lcom/instagram/feed/a/e;)V

    .line 331
    const-string v0, "feedFetchEnd"

    invoke-static {v0}, Lcom/facebook/e/c/k;->a(Ljava/lang/String;)V

    .line 332
    return-void

    .line 302
    :cond_6
    invoke-virtual {p1}, Lcom/instagram/feed/a/c;->f()Lcom/instagram/feed/survey/MultiQuestionSurvey;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->am:Lcom/instagram/feed/survey/q;

    invoke-virtual {p1}, Lcom/instagram/feed/a/c;->f()Lcom/instagram/feed/survey/MultiQuestionSurvey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/q;->b(Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    goto :goto_0

    .line 325
    :cond_7
    invoke-virtual {p1}, Lcom/instagram/feed/a/c;->t()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/io/File;J)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 252
    :try_start_0
    sget-object v0, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 254
    invoke-static {v1}, Lcom/instagram/feed/a/g;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 256
    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    .line 259
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/feed/a/c;->t()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/instagram/feed/a/c;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/instagram/android/fragment/cr;->ar:Landroid/os/Handler;

    new-instance v2, Lcom/instagram/android/fragment/dd;

    invoke-direct {v2, p0, v0}, Lcom/instagram/android/fragment/dd;-><init>(Lcom/instagram/android/fragment/cr;Lcom/instagram/feed/a/c;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, p2

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    :cond_0
    return-void

    .line 256
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private a(Ljava/util/List;)V
    .locals 3
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
    .line 754
    sget-object v0, Lcom/instagram/android/fragment/cr;->ae:Lcom/instagram/common/y/c/d;

    new-instance v1, Lcom/instagram/android/fragment/dg;

    iget-object v2, p0, Lcom/instagram/android/fragment/cr;->aj:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/instagram/android/fragment/dg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/d;->execute(Ljava/lang/Runnable;)V

    .line 755
    return-void
.end method

.method private aA()Lcom/instagram/android/feed/a/l;
    .locals 2

    .prologue
    .line 603
    new-instance v0, Lcom/instagram/android/feed/a/l;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->Y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/l;-><init>(Lcom/instagram/android/fragment/a;I)V

    return-object v0
.end method

.method private static aB()Z
    .locals 2

    .prologue
    .line 611
    sget-boolean v0, Lcom/instagram/android/fragment/cr;->af:Z

    .line 612
    const/4 v1, 0x0

    sput-boolean v1, Lcom/instagram/android/fragment/cr;->af:Z

    .line 613
    return v0
.end method

.method public static as()V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/fragment/cr;->af:Z

    .line 608
    return-void
.end method

.method private aw()Z
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->aa:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/android/fragment/cr;->aa:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ax()V
    .locals 4

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/instagram/android/fragment/cr;->ai:Z

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/cr;->ai:Z

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 230
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/dc;

    invoke-direct {v3, p0, v0, v1}, Lcom/instagram/android/fragment/dc;-><init>(Lcom/instagram/android/fragment/cr;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 246
    :cond_0
    return-void
.end method

.method private ay()V
    .locals 2

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/instagram/android/fragment/cr;->az()V

    .line 558
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->button_find_friends:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/cu;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/cu;-><init>(Lcom/instagram/android/fragment/cr;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    return-void
.end method

.method private az()V
    .locals 3

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->button_find_friends:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 588
    if-eqz v0, :cond_1

    .line 589
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    .line 590
    invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;

    move-result-object v2

    .line 591
    invoke-virtual {v1}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v2, :cond_2

    .line 592
    :cond_0
    sget v1, Lcom/facebook/az;->find_friends_to_follow:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 599
    :cond_1
    :goto_0
    return-void

    .line 593
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/share/vkontakte/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 594
    sget v1, Lcom/facebook/az;->find_vkontakte_friends:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 596
    :cond_3
    sget v1, Lcom/facebook/az;->find_facebook_friends:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/android/fragment/cr;)Lcom/instagram/ui/e/a;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ao:Lcom/instagram/ui/e/a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 281
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "MainFeed.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter

    .prologue
    .line 541
    new-instance v1, Landroid/view/ViewStub;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->n()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/facebook/aw;->nux_main_feed_empty:I

    invoke-direct {v1, v0, v2}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    .line 542
    new-instance v0, Lcom/instagram/android/fragment/ct;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ct;-><init>(Lcom/instagram/android/fragment/cr;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 549
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 551
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 552
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 553
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/fragment/cr;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/cr;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/instagram/feed/a/c;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/h;->a(Lcom/instagram/feed/a/i;Z)V

    .line 340
    invoke-virtual {p1}, Lcom/instagram/feed/a/c;->d()Lcom/instagram/feed/a/e;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v1

    .line 346
    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->a()Lcom/instagram/feed/f/c;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 347
    sget-object v0, Lcom/instagram/feed/f/d;->b:Lcom/instagram/feed/f/d;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/cr;->c(Lcom/instagram/feed/f/d;)V

    .line 367
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 369
    invoke-virtual {p1}, Lcom/instagram/feed/a/c;->t()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 370
    invoke-virtual {p1}, Lcom/instagram/feed/a/c;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 372
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->aa()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 373
    const-string v3, "delivery"

    invoke-static {v3, v0, p0}, Lcom/instagram/feed/c/g;->b(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 375
    invoke-static {}, Lcom/instagram/feed/g/b;->a()Lcom/instagram/feed/g/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/instagram/feed/g/b;->a(Lcom/instagram/feed/d/l;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    invoke-static {v0}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/feed/d/l;)V

    .line 380
    :cond_1
    if-nez v1, :cond_9

    if-eqz p2, :cond_9

    :goto_2
    move-object v1, v0

    .line 384
    goto :goto_1

    .line 348
    :cond_2
    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->b()Lcom/instagram/feed/f/c;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 349
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->av()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 350
    sget-object v0, Lcom/instagram/feed/f/d;->c:Lcom/instagram/feed/f/d;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/cr;->c(Lcom/instagram/feed/f/d;)V

    goto :goto_0

    .line 351
    :cond_3
    invoke-virtual {v0}, Lcom/instagram/feed/a/e;->c()Lcom/instagram/feed/f/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/d/a;->a(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 353
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->as:Lcom/instagram/common/a/a/o;

    new-instance v1, Lcom/instagram/android/c/a/f;

    sget-object v2, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;

    sget-object v3, Lcom/instagram/android/c/a/g;->d:Lcom/instagram/android/c/a/g;

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/c/a/f;-><init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V

    const-string v2, "play_store_unavailable"

    invoke-virtual {v1, v2}, Lcom/instagram/android/c/a/f;->a(Ljava/lang/String;)Lcom/instagram/android/c/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/o;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_0

    .line 356
    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.instagram.bolt"

    invoke-static {v0, v1}, Lcom/instagram/common/y/d/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->as:Lcom/instagram/common/a/a/o;

    new-instance v1, Lcom/instagram/android/c/a/f;

    sget-object v2, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;

    sget-object v3, Lcom/instagram/android/c/a/g;->d:Lcom/instagram/android/c/a/g;

    invoke-direct {v1, v2, v3}, Lcom/instagram/android/c/a/f;-><init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V

    const-string v2, "pepper_installed"

    invoke-virtual {v1, v2}, Lcom/instagram/android/c/a/f;->a(Ljava/lang/String;)Lcom/instagram/android/c/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/o;->a(Lcom/instagram/common/a/a/a;)V

    goto/16 :goto_0

    .line 362
    :cond_5
    sget-object v0, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/cr;->c(Lcom/instagram/feed/f/d;)V

    goto/16 :goto_0

    .line 389
    :cond_6
    if-eqz v1, :cond_7

    .line 390
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v2

    .line 391
    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/instagram/l/b/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2, v3, v0}, Lcom/instagram/l/b/a;->a(Ljava/lang/String;Z)V

    .line 397
    :cond_7
    return-void

    .line 391
    :cond_8
    invoke-virtual {v2}, Lcom/instagram/l/b/a;->D()Z

    move-result v0

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 674
    new-instance v0, Lcom/instagram/android/fragment/fx;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fx;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/instagram/android/fragment/fx;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 675
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/instagram/android/fragment/cr;->ay()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/cr;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/cr;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/instagram/feed/f/d;)V
    .locals 3
    .parameter

    .prologue
    .line 767
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->as:Lcom/instagram/common/a/a/o;

    new-instance v1, Lcom/instagram/android/c/a/f;

    sget-object v2, Lcom/instagram/android/c/a/g;->a:Lcom/instagram/android/c/a/g;

    invoke-direct {v1, p1, v2}, Lcom/instagram/android/c/a/f;-><init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/o;->a(Lcom/instagram/common/a/a/a;)V

    .line 768
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 678
    new-instance v0, Lcom/instagram/android/fragment/fx;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fx;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/instagram/android/fragment/fx;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 685
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/fragment/cr;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/cr;->ah:Z

    return v0
.end method

.method static synthetic e(Lcom/instagram/android/fragment/cr;)Lcom/facebook/b/e;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->au:Lcom/facebook/b/e;

    return-object v0
.end method

.method private e(Z)V
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-static {}, Lcom/instagram/creation/b/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/fragment/cr;->aw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/cr;->c(Z)V

    .line 151
    :cond_1
    return-void
.end method


# virtual methods
.method public final F()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 448
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->F()V

    .line 450
    const-string v0, "%s#%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MainFeedFragment"

    aput-object v2, v1, v5

    const-string v2, "onResume"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/facebook/e/c/k;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->an:Lcom/instagram/android/feed/e/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/a;->b()V

    .line 454
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->al:Lcom/instagram/o/b/a;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->al:Lcom/instagram/o/b/a;

    invoke-virtual {v0}, Lcom/instagram/o/b/a;->b()V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->am:Lcom/instagram/feed/survey/q;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/q;->a()V

    .line 459
    invoke-direct {p0}, Lcom/instagram/android/fragment/cr;->az()V

    .line 461
    invoke-static {}, Lcom/instagram/android/fragment/cr;->aB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->s_()V

    .line 465
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/android/fragment/cr;->ah:Z

    if-eqz v0, :cond_2

    .line 466
    invoke-direct {p0, v4}, Lcom/instagram/android/fragment/cr;->e(Z)V

    .line 467
    iput-boolean v5, p0, Lcom/instagram/android/fragment/cr;->ah:Z

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->at:Lcom/instagram/base/b/b;

    new-instance v1, Lcom/instagram/android/fragment/df;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/df;-><init>(Lcom/instagram/android/fragment/cr;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->action_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    new-array v3, v4, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->l()Landroid/support/v4/app/k;

    move-result-object v4

    invoke-static {v4}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/a/f;->c()Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/base/b/b;->a(Lcom/instagram/base/b/d;F[Landroid/view/View;)V

    .line 481
    return-void
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 485
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->G()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->aq:Landroid/view/View;

    .line 490
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->an:Lcom/instagram/android/feed/e/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/a;->a()V

    .line 491
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->am:Lcom/instagram/feed/survey/q;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/q;->b()V

    .line 493
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->at:Lcom/instagram/base/b/b;

    invoke-virtual {v0}, Lcom/instagram/base/b/b;->a()V

    .line 494
    return-void
.end method

.method public final H()V
    .locals 2

    .prologue
    .line 442
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->H()V

    .line 443
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ar:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 444
    return-void
.end method

.method protected final synthetic X()Lcom/instagram/android/feed/a/a;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/instagram/android/fragment/cr;->aA()Lcom/instagram/android/feed/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 652
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ar:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/fragment/cv;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/cv;-><init>(Lcom/instagram/android/fragment/cr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/h;->a(IILandroid/content/Intent;)V

    .line 671
    return-void

    .line 663
    :cond_1
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lcom/instagram/android/fragment/cr;->au:Lcom/facebook/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    .line 667
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/h;->a(Landroid/content/Context;)V

    .line 175
    const-string v0, "%s#%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MainFeedFragment"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "onAttach"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/e/c/k;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-direct {v0, p1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "com.instagram.android.activity.BROADCAST_REFRESH_MAIN_FEED"

    new-instance v2, Lcom/instagram/android/fragment/db;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/db;-><init>(Lcom/instagram/android/fragment/cr;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "PendingMediaManager.BROADCAST_INTENT_CHECKPOINT_REQUIRED"

    new-instance v2, Lcom/instagram/android/fragment/da;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/da;-><init>(Lcom/instagram/android/fragment/cr;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "INTENT_ACTION_UPDATE_INBOX_BADGE"

    new-instance v2, Lcom/instagram/android/fragment/cz;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/cz;-><init>(Lcom/instagram/android/fragment/cr;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    new-instance v2, Lcom/instagram/android/fragment/cy;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/cy;-><init>(Lcom/instagram/android/fragment/cr;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->ap:Lcom/instagram/common/d/h;

    .line 216
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ap:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 217
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/h;->a(Landroid/os/Bundle;)V

    .line 408
    new-instance v0, Lcom/instagram/common/a/a/o;

    invoke-direct {v0}, Lcom/instagram/common/a/a/o;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->as:Lcom/instagram/common/a/a/o;

    .line 409
    invoke-static {}, Lcom/instagram/ui/e/d;->a()Lcom/instagram/ui/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->ao:Lcom/instagram/ui/e/a;

    .line 410
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/l;

    new-instance v1, Lcom/instagram/android/fragment/de;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/de;-><init>(Lcom/instagram/android/fragment/cr;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/l;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 422
    new-instance v1, Lcom/instagram/android/feed/e/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->n()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/instagram/creation/b/d/b;->b:I

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/e/e;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/instagram/android/feed/e/a;-><init>(Landroid/content/Context;ILcom/instagram/android/feed/e/e;Lcom/instagram/android/feed/e/d;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/cr;->an:Lcom/instagram/android/feed/e/a;

    .line 429
    const-string v0, "feedFetchStart"

    invoke-static {v0}, Lcom/facebook/e/c/k;->a(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Lcom/instagram/android/fragment/cr;->ax()V

    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/cr;->c(Z)V

    .line 433
    invoke-static {}, Lcom/instagram/o/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Lcom/instagram/o/b/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/o/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->al:Lcom/instagram/o/b/a;

    .line 437
    :cond_0
    new-instance v0, Lcom/instagram/feed/survey/q;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/instagram/feed/survey/q;-><init>(Landroid/app/Activity;Lcom/instagram/feed/g/a;Lcom/instagram/feed/survey/m;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->am:Lcom/instagram/feed/survey/q;

    .line 438
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-static {p0}, Lcom/instagram/base/b/b;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v1, p0, Lcom/instagram/android/fragment/cr;->at:Lcom/instagram/base/b/b;

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->action_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/base/b/b;->a(Landroid/widget/ListView;I)V

    .line 506
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/h;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 509
    iget-boolean v0, p0, Lcom/instagram/android/fragment/cr;->ag:Z

    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->E()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/cr;->b(Landroid/view/ViewGroup;)V

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ao:Lcom/instagram/ui/e/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->E()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "feed_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->j_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ao:Lcom/instagram/ui/e/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->E()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/instagram/ui/e/b;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;I)V

    .line 516
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/h;->a(Lcom/instagram/a/b;)V

    .line 161
    sget v0, Lcom/facebook/aw;->action_bar_title_logo:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(I)Landroid/view/View;

    .line 162
    sget v0, Lcom/facebook/aw;->action_bar_button_inbox:I

    new-instance v1, Lcom/instagram/android/fragment/cs;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/cs;-><init>(Lcom/instagram/android/fragment/cr;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/b;->a(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->aq:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->aq:Landroid/view/View;

    invoke-static {v0}, Lcom/instagram/android/directshare/f/c;->a(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method protected final synthetic a(Lcom/instagram/feed/a/i;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    check-cast p1, Lcom/instagram/feed/a/c;

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/cr;->b(Lcom/instagram/feed/a/c;Z)V

    return-void
.end method

.method public final a(Lcom/instagram/feed/f/d;)V
    .locals 3
    .parameter

    .prologue
    .line 772
    sget-object v0, Lcom/instagram/android/fragment/cx;->a:[I

    invoke-virtual {p1}, Lcom/instagram/feed/f/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 786
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->as:Lcom/instagram/common/a/a/o;

    new-instance v1, Lcom/instagram/android/c/a/f;

    sget-object v2, Lcom/instagram/android/c/a/g;->b:Lcom/instagram/android/c/a/g;

    invoke-direct {v1, p1, v2}, Lcom/instagram/android/c/a/f;-><init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/o;->a(Lcom/instagram/common/a/a/a;)V

    .line 788
    return-void

    .line 775
    :pswitch_0
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/cd;

    invoke-direct {v1}, Lcom/instagram/android/fragment/cd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_0

    .line 778
    :pswitch_1
    const-string v0, "market://details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "com.instagram.bolt"

    invoke-static {v0, v1}, Lcom/instagram/common/y/d/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 781
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 782
    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/cr;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 772
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/instagram/feed/f/d;Lcom/instagram/user/d/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 813
    sget-object v0, Lcom/instagram/android/fragment/cx;->a:[I

    invoke-virtual {p1}, Lcom/instagram/feed/f/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 818
    :goto_0
    return-void

    .line 815
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->as:Lcom/instagram/common/a/a/o;

    new-instance v1, Lcom/instagram/android/feed/b/a/a;

    invoke-direct {v1, p2}, Lcom/instagram/android/feed/b/a/a;-><init>(Lcom/instagram/user/d/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/o;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_0

    .line 813
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/instagram/feed/f/d;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 804
    sget-object v0, Lcom/instagram/android/fragment/cx;->a:[I

    invoke-virtual {p1}, Lcom/instagram/feed/f/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 809
    :goto_0
    return-void

    .line 806
    :pswitch_0
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_0

    .line 804
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 714
    new-instance v0, Lcom/instagram/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/c/a;->a()V

    .line 715
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .parameter
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

    .prologue
    .line 635
    const-string v0, "src"

    const-string v1, "timeline"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-void
.end method

.method public final ad()Z
    .locals 1

    .prologue
    .line 646
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ag()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method protected final ak()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public final at()Lcom/instagram/base/b/b;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->at:Lcom/instagram/base/b/b;

    return-object v0
.end method

.method public final au()V
    .locals 0

    .prologue
    .line 724
    return-void
.end method

.method public final av()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ak:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/cr;->ak:Ljava/util/HashSet;

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ak:Ljava/util/HashSet;

    return-object v0
.end method

.method protected final synthetic b(Lcom/instagram/feed/a/i;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    check-cast p1, Lcom/instagram/feed/a/c;

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/cr;->a(Lcom/instagram/feed/a/c;Z)V

    return-void
.end method

.method public final b(Lcom/instagram/feed/f/d;)V
    .locals 3
    .parameter

    .prologue
    .line 792
    sget-object v0, Lcom/instagram/android/fragment/cx;->a:[I

    invoke-virtual {p1}, Lcom/instagram/feed/f/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 798
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->as:Lcom/instagram/common/a/a/o;

    new-instance v1, Lcom/instagram/android/c/a/f;

    sget-object v2, Lcom/instagram/android/c/a/g;->c:Lcom/instagram/android/c/a/g;

    invoke-direct {v1, p1, v2}, Lcom/instagram/android/c/a/f;-><init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/o;->a(Lcom/instagram/common/a/a/a;)V

    .line 800
    return-void

    .line 795
    :pswitch_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/l;

    invoke-virtual {v0, p1}, Lcom/instagram/android/feed/a/l;->a(Lcom/instagram/feed/f/d;)V

    goto :goto_0

    .line 792
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final d(Z)Lcom/instagram/feed/a/h;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/instagram/feed/a/h",
            "<",
            "Lcom/instagram/feed/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v1, Lcom/instagram/feed/a/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->af()Lcom/instagram/feed/f/a;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/fragment/cr;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, p1, v0}, Lcom/instagram/feed/a/b;-><init>(Lcom/instagram/feed/f/a;ZLjava/io/File;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    const-string v0, "feed_timeline"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .prologue
    .line 520
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->m_()V

    .line 522
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ao:Lcom/instagram/ui/e/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->E()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;)V

    .line 523
    return-void
.end method

.method public final n_()V
    .locals 0

    .prologue
    .line 620
    invoke-static {}, Lcom/instagram/android/fragment/cr;->aB()Z

    .line 621
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->n_()V

    .line 622
    return-void
.end method

.method public final p_()Z
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public final r_()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->r_()V

    .line 222
    iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ap:Lcom/instagram/common/d/h;

    invoke-interface {v0}, Lcom/instagram/common/d/h;->c()V

    .line 223
    return-void
.end method
