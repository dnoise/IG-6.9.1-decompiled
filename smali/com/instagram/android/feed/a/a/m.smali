.class public Lcom/instagram/android/feed/a/a/m;
.super Ljava/lang/Object;
.source "FeedVideoPlayer.java"

# interfaces
.implements Lcom/instagram/android/feed/a/a/ah;
.implements Lcom/instagram/common/g/c/d;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/support/v4/app/Fragment;

.field private final c:Lcom/instagram/feed/g/a;

.field private final d:Landroid/view/animation/Animation;

.field private final e:Landroid/view/animation/Animation;

.field private final f:Lcom/instagram/android/feed/a/a/s;

.field private g:Lcom/instagram/android/feed/a/a/q;

.field private h:Lcom/instagram/android/feed/a/a/r;

.field private i:Lcom/instagram/android/l/a/c;

.field private j:I

.field private k:Lcom/instagram/feed/d/l;

.field private l:Lcom/instagram/android/feed/a/b/ac;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/instagram/android/feed/a/a/m;

    sput-object v0, Lcom/instagram/android/feed/a/a/m;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/instagram/android/feed/a/a/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/a/s;-><init>(Lcom/instagram/android/feed/a/a/m;B)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/m;->f:Lcom/instagram/android/feed/a/a/s;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/m;->k:Lcom/instagram/feed/d/l;

    .line 80
    iput-boolean v2, p0, Lcom/instagram/android/feed/a/a/m;->n:Z

    .line 81
    iput-boolean v2, p0, Lcom/instagram/android/feed/a/a/m;->o:Z

    .line 88
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/m;->b:Landroid/support/v4/app/Fragment;

    .line 89
    iput-object p2, p0, Lcom/instagram/android/feed/a/a/m;->c:Lcom/instagram/feed/g/a;

    .line 91
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/aq;->cover_photo_fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/m;->d:Landroid/view/animation/Animation;

    .line 93
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/aq;->cover_photo_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/m;->e:Landroid/view/animation/Animation;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/d/l;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->k:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/m;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0, v0, p1}, Lcom/instagram/android/feed/a/a/m;->a(ZZLjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/l;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    const-string v1, "LegacyVideoPlayerFragment.MEDIA_ID"

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "LegacyVideoPlayerFragement.POSITION"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    new-instance v1, Lcom/instagram/android/util/b;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/m;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/util/b;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/feed/a/a/t;

    invoke-direct {v2}, Lcom/instagram/android/feed/a/a/t;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/android/util/b;->a(Landroid/support/v4/app/f;Landroid/os/Bundle;)Lcom/instagram/android/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/util/b;->a()V

    goto :goto_0
.end method

.method private a(ZZLjava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 274
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->f:Lcom/instagram/android/feed/a/a/s;

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/a/a/s;->removeMessages(I)V

    .line 275
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->f:Lcom/instagram/android/feed/a/a/s;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/s;->removeMessages(I)V

    .line 276
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->f:Lcom/instagram/android/feed/a/a/s;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/s;->removeMessages(I)V

    .line 277
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->f:Lcom/instagram/android/feed/a/a/s;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/s;->removeMessages(I)V

    .line 278
    iput-boolean v2, p0, Lcom/instagram/android/feed/a/a/m;->o:Z

    .line 280
    iget v0, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    if-eq v0, v9, :cond_2

    .line 281
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->a()V

    .line 283
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->i:Lcom/instagram/android/l/a/c;

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->k:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/l/a/c;->l()I

    move-result v1

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/l/a/c;->n()I

    move-result v2

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/l/a/c;->m()I

    move-result v3

    iget v4, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    iget-boolean v5, p0, Lcom/instagram/android/feed/a/a/m;->n:Z

    iget-object v6, p0, Lcom/instagram/android/feed/a/a/m;->c:Lcom/instagram/feed/g/a;

    iget-object v7, p0, Lcom/instagram/android/feed/a/a/m;->p:Ljava/lang/String;

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/feed/d/l;IIIIZLcom/instagram/feed/g/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    if-eqz p1, :cond_3

    .line 299
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->f:Lcom/instagram/android/feed/a/a/s;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/s;->sendEmptyMessage(I)Z

    .line 304
    :goto_0
    invoke-static {}, Lcom/instagram/common/g/c/a;->a()Lcom/instagram/common/g/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/m;->k:Lcom/instagram/feed/d/l;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/m;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/feed/d/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/instagram/common/g/c/a;->a(Ljava/lang/String;Lcom/instagram/common/g/c/d;)V

    .line 307
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;

    move-result-object v0

    sget v1, Lcom/facebook/av;->key_list_position:I

    invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 308
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    if-ne v0, v1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;

    move-result-object v0

    .line 310
    if-eqz p2, :cond_4

    .line 311
    sget v1, Lcom/instagram/android/widget/o;->g:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V

    .line 318
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/widget/a;->clearAnimation()V

    .line 319
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/instagram/feed/widget/a;->setVisibility(I)V

    .line 321
    :cond_1
    iput-object v11, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    .line 322
    iput v9, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    .line 323
    iput-object v11, p0, Lcom/instagram/android/feed/a/a/m;->k:Lcom/instagram/feed/d/l;

    .line 324
    iput-boolean v10, p0, Lcom/instagram/android/feed/a/a/m;->m:Z

    .line 326
    :cond_2
    return-void

    .line 301
    :cond_3
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->e()V

    goto :goto_0

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/m;->g:Lcom/instagram/android/feed/a/a/q;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/m;->g:Lcom/instagram/android/feed/a/a/q;

    iget v2, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    invoke-interface {v1, v2}, Lcom/instagram/android/feed/a/a/q;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 314
    sget v1, Lcom/instagram/android/widget/o;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V

    goto :goto_1

    .line 316
    :cond_5
    sget v1, Lcom/instagram/android/widget/o;->d:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/m;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/instagram/android/feed/a/a/m;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/a/m;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    return v0
.end method

.method static synthetic c(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/g/a;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->c:Lcom/instagram/feed/g/a;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/feed/a/b/ac;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/feed/a/a/m;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/m;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/instagram/android/feed/a/a/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/feed/a/a/m;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->e:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/feed/a/a/m;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/m;->m:Z

    return v0
.end method

.method static synthetic i(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/feed/a/a/s;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->f:Lcom/instagram/android/feed/a/a/s;

    return-object v0
.end method

.method static synthetic j(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/l/a/c;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/instagram/android/feed/a/a/m;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/android/feed/a/a/m;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->d:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private k()Lcom/instagram/android/l/a/c;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->i:Lcom/instagram/android/l/a/c;

    if-nez v0, :cond_0

    .line 341
    invoke-static {}, Lcom/instagram/creation/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    new-instance v0, Lcom/instagram/android/l/a/a;

    invoke-direct {v0}, Lcom/instagram/android/l/a/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/m;->i:Lcom/instagram/android/l/a/c;

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->i:Lcom/instagram/android/l/a/c;

    new-instance v1, Lcom/instagram/android/feed/a/a/n;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/n;-><init>(Lcom/instagram/android/feed/a/a/m;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/a/c;->a(Lcom/instagram/android/l/a/e;)V

    .line 371
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->i:Lcom/instagram/android/l/a/c;

    new-instance v1, Lcom/instagram/android/feed/a/a/o;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/o;-><init>(Lcom/instagram/android/feed/a/a/m;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/a/c;->a(Lcom/instagram/android/l/a/f;)V

    .line 405
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->i:Lcom/instagram/android/l/a/c;

    new-instance v1, Lcom/instagram/android/feed/a/a/p;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/p;-><init>(Lcom/instagram/android/feed/a/a/m;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/a/c;->a(Lcom/instagram/android/l/a/d;)V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->i:Lcom/instagram/android/l/a/c;

    return-object v0

    .line 344
    :cond_1
    new-instance v0, Lcom/instagram/android/l/a/b;

    invoke-direct {v0}, Lcom/instagram/android/l/a/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/m;->i:Lcom/instagram/android/l/a/c;

    goto :goto_0
.end method


# virtual methods
.method public final a(ILcom/instagram/feed/d/l;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->w()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-eq v0, v1, :cond_0

    .line 441
    sget v0, Lcom/instagram/android/widget/o;->a:I

    .line 465
    :goto_0
    return v0

    .line 442
    :cond_0
    invoke-static {}, Lcom/instagram/creation/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    sget v0, Lcom/instagram/android/widget/o;->d:I

    goto :goto_0

    .line 447
    :cond_1
    iget v0, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    if-ne v0, p1, :cond_6

    .line 448
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->k()Z

    move-result v1

    if-nez v1, :cond_2

    .line 450
    sget v0, Lcom/instagram/android/widget/o;->c:I

    goto :goto_0

    .line 451
    :cond_2
    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 452
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/m;->n:Z

    if-eqz v0, :cond_3

    .line 453
    sget v0, Lcom/instagram/android/widget/o;->a:I

    goto :goto_0

    .line 455
    :cond_3
    sget v0, Lcom/instagram/android/widget/o;->f:I

    goto :goto_0

    .line 457
    :cond_4
    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 458
    sget v0, Lcom/instagram/android/widget/o;->d:I

    goto :goto_0

    .line 460
    :cond_5
    sget v0, Lcom/instagram/android/widget/o;->e:I

    goto :goto_0

    .line 462
    :cond_6
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->g:Lcom/instagram/android/feed/a/a/q;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->g:Lcom/instagram/android/feed/a/a/q;

    invoke-interface {v0, p1}, Lcom/instagram/android/feed/a/a/q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 463
    sget v0, Lcom/instagram/android/widget/o;->b:I

    goto :goto_0

    .line 465
    :cond_7
    sget v0, Lcom/instagram/android/widget/o;->d:I

    goto :goto_0
.end method

.method public final a(ILcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/m;->o:Z

    if-nez v0, :cond_1

    .line 123
    sget-object v0, Lcom/instagram/android/feed/a/a/m;->a:Ljava/lang/Class;

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget v0, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    if-eq v0, p1, :cond_3

    .line 128
    invoke-static {}, Lcom/instagram/creation/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->b:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/instagram/android/feed/a/a/t;

    if-nez v0, :cond_2

    .line 130
    invoke-direct {p0, p2, p1}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/feed/d/l;I)V

    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;IZ)V

    goto :goto_0

    .line 134
    :cond_3
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->l()I

    move-result v1

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->n()I

    move-result v2

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->m()I

    move-result v3

    iget-boolean v5, p0, Lcom/instagram/android/feed/a/a/m;->n:Z

    iget-object v6, p0, Lcom/instagram/android/feed/a/a/m;->c:Lcom/instagram/feed/g/a;

    iget-object v7, p0, Lcom/instagram/android/feed/a/a/m;->p:Ljava/lang/String;

    const-string v8, "tapped"

    move-object v0, p2

    move v4, p1

    invoke-static/range {v0 .. v8}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/feed/d/l;IIIIZLcom/instagram/feed/g/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->g()V

    .line 147
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;

    move-result-object v0

    sget v1, Lcom/instagram/android/widget/o;->e:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->a(I)V

    goto :goto_0

    .line 150
    :cond_4
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->i()Z

    move-result v0

    if-nez v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/m;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;

    move-result-object v1

    iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/m;->n:Z

    if-eqz v0, :cond_6

    sget v0, Lcom/instagram/android/widget/o;->a:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/MediaActionsView;->a(I)V

    .line 158
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->f:Lcom/instagram/android/feed/a/a/s;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/s;->removeMessages(I)V

    .line 159
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->k:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/l/a/c;->l()I

    move-result v1

    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/l/a/c;->m()I

    move-result v2

    iget-boolean v4, p0, Lcom/instagram/android/feed/a/a/m;->n:Z

    iget-object v5, p0, Lcom/instagram/android/feed/a/a/m;->c:Lcom/instagram/feed/g/a;

    const-string v6, "tapped"

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/feed/d/l;IIIZLcom/instagram/feed/g/a;Ljava/lang/String;)V

    .line 177
    :goto_2
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->d()V

    goto/16 :goto_0

    .line 153
    :cond_6
    sget v0, Lcom/instagram/android/widget/o;->f:I

    goto :goto_1

    .line 169
    :cond_7
    const-string v0, "tapped"

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/m;->p:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->k:Lcom/instagram/feed/d/l;

    iget-boolean v1, p0, Lcom/instagram/android/feed/a/a/m;->n:Z

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/m;->c:Lcom/instagram/feed/g/a;

    const-string v3, "tapped"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/feed/d/l;IZLcom/instagram/feed/g/a;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Lcom/instagram/android/feed/a/a/q;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/m;->g:Lcom/instagram/android/feed/a/a/q;

    .line 103
    return-void
.end method

.method public final a(Lcom/instagram/android/feed/a/a/r;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/m;->h:Lcom/instagram/android/feed/a/a/r;

    .line 99
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string v0, "scroll"

    invoke-direct {p0, v1, v1, v0}, Lcom/instagram/android/feed/a/a/m;->a(ZZLjava/lang/String;)V

    .line 205
    if-eqz p4, :cond_2

    .line 206
    const-string v0, "autoplay"

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/m;->p:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->c:Lcom/instagram/feed/g/a;

    invoke-static {p1, v0}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 212
    :goto_1
    iput-object p2, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    .line 213
    iput p3, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    .line 214
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/m;->k:Lcom/instagram/feed/d/l;

    .line 215
    iput-boolean p4, p0, Lcom/instagram/android/feed/a/a/m;->m:Z

    .line 216
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/feed/a/a/m;->n:Z

    .line 218
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/widget/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/instagram/android/l/a/c;->a(Landroid/widget/FrameLayout;)V

    .line 220
    invoke-static {}, Lcom/instagram/common/g/c/a;->a()Lcom/instagram/common/g/c/a;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->x()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->f:Lcom/instagram/android/feed/a/a/s;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/m;->f:Lcom/instagram/android/feed/a/a/s;

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/feed/a/a/s;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/s;->sendMessage(Landroid/os/Message;)Z

    .line 229
    :goto_2
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->h:Lcom/instagram/android/feed/a/a/r;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->h:Lcom/instagram/android/feed/a/a/r;

    invoke-interface {v0, p3}, Lcom/instagram/android/feed/a/a/r;->e(I)V

    goto :goto_0

    .line 209
    :cond_2
    const-string v0, "tapped"

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/m;->p:Ljava/lang/String;

    goto :goto_1

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/m;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/instagram/feed/d/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 226
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/instagram/common/g/c/a;->a(Ljava/lang/String;ZLcom/instagram/common/g/c/d;)V

    goto :goto_2
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    return v0
.end method

.method public final c()Lcom/instagram/feed/d/l;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->k:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f80

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/feed/a/a/m;->n:Z

    .line 184
    invoke-direct {p0}, Lcom/instagram/android/feed/a/a/m;->k()Lcom/instagram/android/l/a/c;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/instagram/android/l/a/c;->a(FF)V

    .line 185
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;

    move-result-object v0

    sget v1, Lcom/instagram/android/widget/o;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V

    .line 186
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->k:Lcom/instagram/feed/d/l;

    iget v1, p0, Lcom/instagram/android/feed/a/a/m;->j:I

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/m;->c:Lcom/instagram/feed/g/a;

    invoke-static {v0, v1, v2}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    .line 188
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->l:Lcom/instagram/android/feed/a/b/ac;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;

    move-result-object v0

    sget v1, Lcom/instagram/android/widget/o;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V

    .line 240
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->f:Lcom/instagram/android/feed/a/a/s;

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/m;->k:Lcom/instagram/feed/d/l;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/m;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/feed/d/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/s;->a(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 249
    const-string v0, "error"

    invoke-direct {p0, v1, v1, v0}, Lcom/instagram/android/feed/a/a/m;->a(ZZLjava/lang/String;)V

    .line 250
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "scroll"

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/feed/a/a/m;->a(ZZLjava/lang/String;)V

    .line 271
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->i:Lcom/instagram/android/l/a/c;

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "scroll"

    invoke-direct {p0, v1, v1, v0}, Lcom/instagram/android/feed/a/a/m;->a(ZZLjava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->i:Lcom/instagram/android/l/a/c;

    invoke-virtual {v0}, Lcom/instagram/android/l/a/c;->f()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/m;->i:Lcom/instagram/android/l/a/c;

    .line 337
    :cond_0
    return-void
.end method
