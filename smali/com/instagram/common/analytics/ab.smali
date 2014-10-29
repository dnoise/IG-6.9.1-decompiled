.class public final Lcom/instagram/common/analytics/ab;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Lcom/instagram/common/analytics/d;
.implements Lcom/instagram/common/p/b/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/AlarmManager;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Lcom/instagram/common/analytics/e;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/instagram/common/analytics/ap;

.field private final k:Lcom/instagram/common/analytics/ae;

.field private l:Lcom/instagram/common/analytics/y;

.field private m:Lcom/instagram/common/analytics/i;

.field private n:Lcom/instagram/common/analytics/i;

.field private o:Z

.field private final p:Landroid/os/Handler;

.field private final q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/instagram/common/y/c/d;

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final t:Ljava/lang/Runnable;

.field private final u:Lcom/instagram/common/analytics/k;

.field private final v:Lcom/instagram/common/analytics/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/instagram/common/analytics/ac;

    invoke-direct {v0, p0}, Lcom/instagram/common/analytics/ac;-><init>(Lcom/instagram/common/analytics/ab;)V

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->p:Landroid/os/Handler;

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->q:Ljava/util/Queue;

    .line 125
    invoke-static {}, Lcom/instagram/common/y/c/e;->a()Lcom/instagram/common/y/c/e;

    move-result-object v0

    const-string v1, "InstagramAnalyticsLogger"

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/y/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/y/c/e;->c()Lcom/instagram/common/y/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->r:Lcom/instagram/common/y/c/d;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->a:Landroid/content/Context;

    .line 163
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->b:Landroid/app/AlarmManager;

    .line 164
    iput-object p2, p0, Lcom/instagram/common/analytics/ab;->c:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Lcom/instagram/common/analytics/ab;->e:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/instagram/common/analytics/ab;->d:Ljava/lang/String;

    .line 167
    iput-object p5, p0, Lcom/instagram/common/analytics/ab;->f:Ljava/lang/String;

    .line 168
    invoke-direct {p0, p7}, Lcom/instagram/common/analytics/ab;->d(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p8}, Lcom/instagram/common/analytics/ab;->c(Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/instagram/common/analytics/y;

    invoke-direct {v0}, Lcom/instagram/common/analytics/y;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->l:Lcom/instagram/common/analytics/y;

    .line 173
    new-instance v0, Lcom/instagram/common/analytics/ap;

    invoke-direct {v0}, Lcom/instagram/common/analytics/ap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->j:Lcom/instagram/common/analytics/ap;

    .line 174
    new-instance v0, Lcom/instagram/common/analytics/al;

    invoke-direct {v0, p0}, Lcom/instagram/common/analytics/al;-><init>(Lcom/instagram/common/analytics/ab;)V

    .line 175
    new-instance v1, Lcom/instagram/common/d/j;

    invoke-direct {v1, p1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v1

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-interface {v1, v2, v0}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v1

    const-string v2, "android.intent.action.TIME_SET"

    invoke-interface {v1, v2, v0}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 181
    new-instance v0, Lcom/instagram/common/analytics/ae;

    invoke-direct {v0, p0}, Lcom/instagram/common/analytics/ae;-><init>(Lcom/instagram/common/analytics/ab;)V

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->k:Lcom/instagram/common/analytics/ae;

    .line 183
    new-instance v0, Lcom/instagram/common/analytics/ad;

    invoke-direct {v0, p0, v3}, Lcom/instagram/common/analytics/ad;-><init>(Lcom/instagram/common/analytics/ab;B)V

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->t:Ljava/lang/Runnable;

    .line 184
    new-instance v0, Lcom/instagram/common/analytics/k;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/analytics/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->u:Lcom/instagram/common/analytics/k;

    .line 185
    new-instance v0, Lcom/instagram/common/analytics/m;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/common/analytics/ab;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p6}, Lcom/instagram/common/analytics/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->v:Lcom/instagram/common/analytics/m;

    .line 189
    invoke-static {}, Lcom/instagram/common/p/b/b;->a()Lcom/instagram/common/p/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/common/p/b/b;->a(Lcom/instagram/common/p/b/a;)V

    .line 191
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->h()V

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/i;)Lcom/instagram/common/analytics/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/instagram/common/analytics/ab;->n:Lcom/instagram/common/analytics/i;

    return-object p1
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 348
    sget v0, Lcom/instagram/common/analytics/ar;->d:I

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    .line 351
    :goto_0
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0, v0}, Lcom/instagram/common/analytics/ab;->b(Lcom/instagram/common/analytics/b;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->j:Lcom/instagram/common/analytics/ap;

    invoke-virtual {v0, v1, v2, p1}, Lcom/instagram/common/analytics/ap;->a(JI)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p0, v0}, Lcom/instagram/common/analytics/ab;->a(Lcom/instagram/common/analytics/b;)V

    .line 362
    :cond_1
    return-void

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->l:Lcom/instagram/common/analytics/y;

    iget-object v3, p0, Lcom/instagram/common/analytics/ab;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/analytics/y;->a(JLjava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->o()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/analytics/ab;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/ab;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/ab;->c(Lcom/instagram/common/analytics/b;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/analytics/ab;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/ab;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/analytics/ab;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/ab;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->o()V

    .line 406
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 136
    invoke-static {p0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/instagram/common/analytics/ab;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/common/analytics/ab;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/ab;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/common/analytics/ab;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->q:Ljava/util/Queue;

    return-object v0
.end method

.method private c(Lcom/instagram/common/analytics/b;)V
    .locals 1
    .parameter

    .prologue
    .line 419
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 420
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 229
    invoke-static {p1}, Lcom/instagram/common/analytics/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->i:Ljava/lang/String;

    .line 230
    return-void
.end method

.method static synthetic d(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->n:Lcom/instagram/common/analytics/i;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 233
    invoke-static {p1}, Lcom/instagram/common/analytics/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->h:Ljava/lang/String;

    .line 234
    return-void
.end method

.method static synthetic e(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/k;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->u:Lcom/instagram/common/analytics/k;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/m;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->v:Lcom/instagram/common/analytics/m;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/e;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->g:Lcom/instagram/common/analytics/e;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->m:Lcom/instagram/common/analytics/i;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->m:Lcom/instagram/common/analytics/i;

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->j()V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->i()Lcom/instagram/common/analytics/i;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/analytics/ab;->m:Lcom/instagram/common/analytics/i;

    .line 246
    return-void
.end method

.method static synthetic i(Lcom/instagram/common/analytics/ab;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private i()Lcom/instagram/common/analytics/i;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lcom/instagram/common/analytics/i;

    invoke-direct {v0}, Lcom/instagram/common/analytics/i;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/instagram/common/analytics/ab;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/i;->b(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/instagram/common/analytics/ab;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/i;->c(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/instagram/common/analytics/ab;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/i;->e(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/instagram/common/analytics/ab;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/i;->d(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/instagram/common/analytics/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/i;->a(Ljava/lang/String;)V

    .line 256
    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->m:Lcom/instagram/common/analytics/i;

    invoke-virtual {v0}, Lcom/instagram/common/analytics/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->m:Lcom/instagram/common/analytics/i;

    .line 267
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->u:Lcom/instagram/common/analytics/k;

    iget-object v1, p0, Lcom/instagram/common/analytics/ab;->m:Lcom/instagram/common/analytics/i;

    invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/k;->a(Lcom/instagram/common/analytics/i;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string v1, "InstagramAnalyticsLogger"

    const-string v2, "Unable to store batch"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->k()V

    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->j()V

    .line 279
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->m:Lcom/instagram/common/analytics/i;

    invoke-virtual {v0}, Lcom/instagram/common/analytics/i;->a()V

    .line 280
    return-void
.end method

.method static synthetic k(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->m()V

    return-void
.end method

.method static synthetic l(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->i()Lcom/instagram/common/analytics/i;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 365
    sget-object v0, Lcom/instagram/common/analytics/l;->b:Lcom/instagram/common/analytics/l;

    iget-object v1, p0, Lcom/instagram/common/analytics/ab;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/common/analytics/ab;->b:Landroid/app/AlarmManager;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/l;->a(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 366
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 369
    sget-object v0, Lcom/instagram/common/analytics/l;->a:Lcom/instagram/common/analytics/l;

    iget-object v1, p0, Lcom/instagram/common/analytics/ab;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/common/analytics/ab;->b:Landroid/app/AlarmManager;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/l;->a(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 370
    return-void
.end method

.method static synthetic m(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->h()V

    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 377
    new-instance v0, Lcom/instagram/common/analytics/aj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/common/analytics/aj;-><init>(Lcom/instagram/common/analytics/ab;B)V

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method static synthetic n(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->j()V

    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->r:Lcom/instagram/common/y/c/d;

    iget-object v1, p0, Lcom/instagram/common/analytics/ab;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/d;->execute(Ljava/lang/Runnable;)V

    .line 412
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->l()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 384
    sget v0, Lcom/instagram/common/analytics/ar;->c:I

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(I)V

    .line 385
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->n()V

    .line 386
    invoke-virtual {p0}, Lcom/instagram/common/analytics/ab;->g()V

    .line 387
    return-void
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->k:Lcom/instagram/common/analytics/ae;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 323
    return-void
.end method

.method public final a(Lcom/instagram/common/analytics/b;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    new-instance v0, Lcom/instagram/common/analytics/af;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/instagram/common/analytics/af;-><init>(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method public final a(Lcom/instagram/common/analytics/e;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/instagram/common/analytics/ab;->g:Lcom/instagram/common/analytics/e;

    .line 203
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 307
    new-instance v0, Lcom/instagram/common/analytics/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/instagram/common/analytics/ag;-><init>(Lcom/instagram/common/analytics/ab;Ljava/lang/String;B)V

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->l:Lcom/instagram/common/analytics/y;

    invoke-virtual {v0}, Lcom/instagram/common/analytics/y;->a()V

    .line 295
    new-instance v0, Lcom/instagram/common/analytics/ah;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/instagram/common/analytics/ah;-><init>(Lcom/instagram/common/analytics/ab;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/instagram/common/analytics/ab;->o:Z

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/analytics/ab;->o:Z

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    sget v0, Lcom/instagram/common/analytics/ar;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(I)V

    .line 399
    invoke-direct {p0}, Lcom/instagram/common/analytics/ab;->n()V

    goto :goto_0
.end method

.method public final b(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->k:Lcom/instagram/common/analytics/ae;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 328
    return-void
.end method

.method public final b(Lcom/instagram/common/analytics/b;)V
    .locals 2
    .parameter

    .prologue
    .line 289
    new-instance v0, Lcom/instagram/common/analytics/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/instagram/common/analytics/ai;-><init>(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    sget v0, Lcom/instagram/common/analytics/ar;->f:I

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(I)V

    .line 301
    iget-object v0, p0, Lcom/instagram/common/analytics/ab;->l:Lcom/instagram/common/analytics/y;

    invoke-virtual {v0}, Lcom/instagram/common/analytics/y;->a()V

    .line 302
    new-instance v0, Lcom/instagram/common/analytics/ah;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/instagram/common/analytics/ah;-><init>(Lcom/instagram/common/analytics/ab;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Lcom/instagram/common/analytics/ag;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/instagram/common/analytics/ag;-><init>(Lcom/instagram/common/analytics/ab;Ljava/lang/String;B)V

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 317
    sget v0, Lcom/instagram/common/analytics/ar;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(I)V

    .line 318
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Lcom/instagram/common/analytics/h;->a()Lcom/instagram/common/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 373
    new-instance v0, Lcom/instagram/common/analytics/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/common/analytics/am;-><init>(Lcom/instagram/common/analytics/ab;B)V

    invoke-direct {p0, v0}, Lcom/instagram/common/analytics/ab;->a(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method
