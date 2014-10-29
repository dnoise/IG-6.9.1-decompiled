.class final Lcom/instagram/common/g/b/m;
.super Ljava/lang/Object;
.source "IgImageCache.java"

# interfaces
.implements Lcom/instagram/common/g/b/s;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/g/b/h;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/instagram/common/g/b/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private volatile f:I

.field private volatile g:Z

.field private volatile h:Z

.field private i:Lcom/instagram/common/g/b/d;


# direct methods
.method private constructor <init>(Lcom/instagram/common/g/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 294
    iput-object p1, p0, Lcom/instagram/common/g/b/m;->a:Lcom/instagram/common/g/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/b/m;->b:Ljava/util/Map;

    .line 285
    iput v1, p0, Lcom/instagram/common/g/b/m;->f:I

    .line 286
    iput-boolean v1, p0, Lcom/instagram/common/g/b/m;->g:Z

    .line 287
    iput-boolean v1, p0, Lcom/instagram/common/g/b/m;->h:Z

    .line 295
    iput-object p2, p0, Lcom/instagram/common/g/b/m;->c:Ljava/lang/String;

    .line 296
    iput-object p3, p0, Lcom/instagram/common/g/b/m;->d:Ljava/lang/String;

    .line 297
    iput-object p4, p0, Lcom/instagram/common/g/b/m;->e:Ljava/lang/String;

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/g/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/common/g/b/m;-><init>(Lcom/instagram/common/g/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 4

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/b/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/common/g/b/c;

    .line 330
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    invoke-virtual {v1}, Lcom/instagram/common/g/b/c;->d()Lcom/instagram/common/g/b/k;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_0

    .line 335
    iget-object v3, p0, Lcom/instagram/common/g/b/m;->i:Lcom/instagram/common/g/b/d;

    if-eqz v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/instagram/common/g/b/m;->i:Lcom/instagram/common/g/b/d;

    invoke-virtual {v3}, Lcom/instagram/common/g/b/d;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/instagram/common/g/b/k;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 338
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/instagram/common/g/b/k;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private a(Lcom/instagram/common/g/b/c;Lcom/instagram/common/g/a/g;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 359
    iget-boolean v0, p0, Lcom/instagram/common/g/b/m;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/common/g/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/common/g/b/m;->h:Z

    .line 360
    iget-boolean v0, p0, Lcom/instagram/common/g/b/m;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/common/g/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/instagram/common/g/b/m;->g:Z

    .line 364
    invoke-virtual {p1}, Lcom/instagram/common/g/b/c;->d()Lcom/instagram/common/g/b/k;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_3

    .line 367
    iget-object v1, p2, Lcom/instagram/common/g/a/g;->c:Ljava/lang/String;

    iget v2, p0, Lcom/instagram/common/g/b/m;->f:I

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/g/b/k;->a(Ljava/lang/String;I)V

    .line 372
    :cond_3
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/b/m;->b:Ljava/util/Map;

    iget-object v1, p2, Lcom/instagram/common/g/a/g;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_4
    move v0, v1

    .line 359
    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/instagram/common/g/b/m;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/instagram/common/g/b/m;->a()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/g/b/m;Lcom/instagram/common/g/b/c;Lcom/instagram/common/g/a/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/g/b/m;->a(Lcom/instagram/common/g/b/c;Lcom/instagram/common/g/a/g;)V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 4

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/b/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/common/g/b/c;

    .line 348
    invoke-virtual {v1}, Lcom/instagram/common/g/b/c;->d()Lcom/instagram/common/g/b/k;

    move-result-object v1

    .line 349
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    if-eqz v1, :cond_0

    .line 353
    iget v3, p0, Lcom/instagram/common/g/b/m;->f:I

    invoke-interface {v1, v0, v3}, Lcom/instagram/common/g/b/k;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 356
    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/instagram/common/g/b/m;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/instagram/common/g/b/m;->b()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 379
    iput p1, p0, Lcom/instagram/common/g/b/m;->f:I

    .line 380
    iget-object v0, p0, Lcom/instagram/common/g/b/m;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v0}, Lcom/instagram/common/g/b/h;->f(Lcom/instagram/common/g/b/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/g/b/m;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v1}, Lcom/instagram/common/g/b/h;->f(Lcom/instagram/common/g/b/h;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    return-void
.end method

.method public final run()V
    .locals 8

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/common/g/b/m;->a(I)V

    .line 304
    new-instance v0, Lcom/instagram/common/g/b/r;

    iget-object v1, p0, Lcom/instagram/common/g/b/m;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v1}, Lcom/instagram/common/g/b/h;->a(Lcom/instagram/common/g/b/h;)Lcom/instagram/common/g/b/l;

    move-result-object v1

    iget-boolean v3, p0, Lcom/instagram/common/g/b/m;->h:Z

    iget-boolean v4, p0, Lcom/instagram/common/g/b/m;->g:Z

    iget-object v5, p0, Lcom/instagram/common/g/b/m;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/instagram/common/g/b/m;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/instagram/common/g/b/m;->c:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/instagram/common/g/b/r;-><init>(Lcom/instagram/common/g/b/t;Lcom/instagram/common/g/b/s;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/common/g/b/r;->a()Lcom/instagram/common/g/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/g/b/m;->i:Lcom/instagram/common/g/b/d;

    .line 315
    iget-object v0, p0, Lcom/instagram/common/g/b/m;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v0}, Lcom/instagram/common/g/b/h;->b(Lcom/instagram/common/g/b/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/b/m;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v0}, Lcom/instagram/common/g/b/h;->c(Lcom/instagram/common/g/b/h;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/common/g/b/m;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/instagram/common/g/b/m;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v0}, Lcom/instagram/common/g/b/h;->d(Lcom/instagram/common/g/b/h;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Lcom/instagram/common/g/b/m;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v0}, Lcom/instagram/common/g/b/h;->e(Lcom/instagram/common/g/b/h;)V

    .line 319
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    iget-object v0, p0, Lcom/instagram/common/g/b/m;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v0}, Lcom/instagram/common/g/b/h;->f(Lcom/instagram/common/g/b/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/g/b/m;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v1}, Lcom/instagram/common/g/b/h;->f(Lcom/instagram/common/g/b/h;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
