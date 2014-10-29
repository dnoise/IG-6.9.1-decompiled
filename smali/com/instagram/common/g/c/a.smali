.class public final Lcom/instagram/common/g/c/a;
.super Ljava/lang/Object;
.source "IgVideoCache.java"


# static fields
.field private static a:Lcom/instagram/common/g/c/a;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/common/g/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/common/g/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/Context;

.field private j:Lch/boye/httpclientandroidlib/client/HttpClient;

.field private k:Lcom/c/a/a;

.field private l:Lcom/instagram/common/g/a/i;

.field private m:Lcom/instagram/common/g/a/c;

.field private final n:Lcom/instagram/common/g/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/instagram/common/g/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/common/g/c/c;-><init>(B)V

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->b:Landroid/os/Handler;

    .line 100
    invoke-static {}, Lcom/instagram/common/y/c/e;->a()Lcom/instagram/common/y/c/e;

    move-result-object v0

    const-string v1, "IgVideoCache"

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/y/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/y/c/e;->c()Lcom/instagram/common/y/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->c:Ljava/util/concurrent/Executor;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->d:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->e:Ljava/util/Deque;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->f:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->g:Ljava/util/Set;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->h:Ljava/util/Set;

    .line 129
    sget-object v0, Lcom/instagram/common/g/a/g;->a:Lcom/instagram/common/g/a/i;

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->l:Lcom/instagram/common/g/a/i;

    .line 130
    new-instance v0, Lcom/instagram/common/g/a/e;

    invoke-direct {v0}, Lcom/instagram/common/g/a/e;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->m:Lcom/instagram/common/g/a/c;

    .line 132
    new-instance v0, Lcom/instagram/common/g/a/a;

    const-string v1, "video_disk"

    invoke-direct {v0, v1}, Lcom/instagram/common/g/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->n:Lcom/instagram/common/g/a/a;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->i:Landroid/content/Context;

    .line 149
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->n:Lcom/instagram/common/g/a/a;

    invoke-virtual {v0}, Lcom/instagram/common/g/a/a;->a()V

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/g/c/a;)Lcom/c/a/a;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/instagram/common/g/c/a;->d()Lcom/c/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/instagram/common/g/c/a;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/instagram/common/g/c/a;->a:Lcom/instagram/common/g/c/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/instagram/common/g/c/a;
    .locals 1
    .parameter

    .prologue
    .line 143
    new-instance v0, Lcom/instagram/common/g/c/a;

    invoke-direct {v0, p0}, Lcom/instagram/common/g/c/a;-><init>(Landroid/content/Context;)V

    .line 144
    sput-object v0, Lcom/instagram/common/g/c/a;->a:Lcom/instagram/common/g/c/a;

    return-object v0
.end method

.method private a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/a/f;

    .line 265
    invoke-interface {v0, p1, p2}, Lcom/instagram/common/g/a/f;->a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/g/c/a;Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/g/c/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/g/c/a;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/instagram/common/g/c/a;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/instagram/common/g/c/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/common/g/c/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/instagram/common/g/c/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-static {p0}, Lcom/instagram/common/g/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 279
    iget-object v2, p0, Lcom/instagram/common/g/c/a;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/common/g/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    if-eqz v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/instagram/common/g/c/a;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/common/g/c/b;

    .line 285
    iget-object v3, p0, Lcom/instagram/common/g/c/a;->c:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/instagram/common/m/a;

    invoke-direct {p0}, Lcom/instagram/common/g/c/a;->f()Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v5

    invoke-static {v1}, Lcom/instagram/common/g/c/b;->a(Lcom/instagram/common/g/c/b;)Lcom/instagram/common/g/a/g;

    move-result-object v6

    iget-object v6, v6, Lcom/instagram/common/g/a/g;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v1}, Lcom/instagram/common/m/a;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Ljava/lang/String;Lcom/instagram/common/m/b;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 291
    iget-object v1, p0, Lcom/instagram/common/g/c/a;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private d()Lcom/c/a/a;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->k:Lcom/c/a/a;

    if-nez v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/instagram/common/g/c/a;->e()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->k:Lcom/c/a/a;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 270
    iget-object v1, p0, Lcom/instagram/common/g/c/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 274
    invoke-direct {p0}, Lcom/instagram/common/g/c/a;->c()V

    .line 275
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 298
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 6

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->k:Lcom/c/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 330
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->i:Landroid/content/Context;

    const-string v1, "video"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/instagram/common/g/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 315
    invoke-static {v2}, Lcom/instagram/common/g/a/d;->a(Ljava/io/File;)J

    move-result-wide v0

    .line 317
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 320
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->i:Landroid/content/Context;

    const-string v1, "video"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/common/g/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 321
    invoke-static {v2}, Lcom/instagram/common/g/a/d;->a(Ljava/io/File;)J

    move-result-wide v0

    .line 322
    const-string v3, "IgVideoCache"

    const-string v4, "Couldn\'t create in external storage"

    invoke-static {v3, v4}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cache directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cache size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v4, 0x100000

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-static {v2, v0, v1}, Lcom/c/a/a;->a(Ljava/io/File;J)Lcom/c/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->k:Lcom/c/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open video cache"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()Lch/boye/httpclientandroidlib/client/HttpClient;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->j:Lch/boye/httpclientandroidlib/client/HttpClient;

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/instagram/common/g/c/a;->g()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->j:Lch/boye/httpclientandroidlib/client/HttpClient;

    return-object v0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/instagram/common/g/c/a;->d()Lcom/c/a/a;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/common/g/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized g()V
    .locals 3

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->j:Lch/boye/httpclientandroidlib/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    :try_start_1
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-static {}, Lcom/instagram/common/a/g/d;->a()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    .line 352
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setDefaultMaxPerRoute(I)V

    .line 353
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setMaxTotal(I)V

    .line 355
    new-instance v1, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    .line 356
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    .line 357
    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 358
    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 360
    iget-object v2, p0, Lcom/instagram/common/g/c/a;->m:Lcom/instagram/common/g/a/c;

    invoke-interface {v2, v0, v1}, Lcom/instagram/common/g/a/c;->a(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/g/c/a;->j:Lch/boye/httpclientandroidlib/client/HttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/g/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/instagram/common/g/c/a;->m:Lcom/instagram/common/g/a/c;

    .line 257
    return-void
.end method

.method public final a(Lcom/instagram/common/g/a/f;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public final a(Lcom/instagram/common/g/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/instagram/common/g/c/a;->l:Lcom/instagram/common/g/a/i;

    .line 253
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/instagram/common/g/c/a;->a(Ljava/lang/String;ZLcom/instagram/common/g/c/d;)V

    .line 159
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/instagram/common/g/c/d;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->l:Lcom/instagram/common/g/a/i;

    invoke-interface {v0, p1}, Lcom/instagram/common/g/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/g/a/g;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/instagram/common/g/c/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/instagram/common/g/c/a;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/instagram/common/g/c/a;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/c/b;

    .line 243
    invoke-static {v0, p2}, Lcom/instagram/common/g/c/b;->b(Lcom/instagram/common/g/c/b;Lcom/instagram/common/g/c/d;)V

    .line 245
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;ZLcom/instagram/common/g/c/d;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    if-nez p1, :cond_1

    .line 167
    if-eqz p3, :cond_0

    .line 168
    invoke-interface {p3}, Lcom/instagram/common/g/c/d;->g()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->l:Lcom/instagram/common/g/a/i;

    invoke-interface {v0, p1}, Lcom/instagram/common/g/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/g/a/g;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-direct {p0, v1}, Lcom/instagram/common/g/c/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->n:Lcom/instagram/common/g/a/a;

    invoke-virtual {v0}, Lcom/instagram/common/g/a/a;->b()V

    .line 178
    if-eqz p3, :cond_0

    .line 179
    invoke-interface {p3}, Lcom/instagram/common/g/c/d;->f()V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/instagram/common/g/c/a;->n:Lcom/instagram/common/g/a/a;

    invoke-virtual {v2}, Lcom/instagram/common/g/a/a;->c()V

    .line 186
    iget-object v2, p0, Lcom/instagram/common/g/c/a;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 187
    :try_start_0
    iget-object v3, p0, Lcom/instagram/common/g/c/a;->f:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/c/b;

    .line 190
    if-eqz p3, :cond_3

    .line 191
    invoke-static {v0, p3}, Lcom/instagram/common/g/c/b;->a(Lcom/instagram/common/g/c/b;Lcom/instagram/common/g/c/d;)V

    .line 194
    :cond_3
    if-eqz p2, :cond_4

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Reordering "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to front of queue"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 222
    :cond_4
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 199
    :cond_5
    :try_start_1
    invoke-direct {p0, v1}, Lcom/instagram/common/g/c/a;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 202
    if-eqz p3, :cond_4

    .line 203
    invoke-interface {p3}, Lcom/instagram/common/g/c/d;->f()V

    goto :goto_1

    .line 206
    :cond_6
    new-instance v3, Lcom/instagram/common/g/c/b;

    invoke-direct {v3, p0, v0}, Lcom/instagram/common/g/c/b;-><init>(Lcom/instagram/common/g/c/a;Lcom/instagram/common/g/a/g;)V

    .line 207
    if-eqz p3, :cond_7

    .line 208
    invoke-static {v3, p3}, Lcom/instagram/common/g/c/b;->a(Lcom/instagram/common/g/c/b;Lcom/instagram/common/g/c/d;)V

    .line 210
    :cond_7
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    if-eqz p2, :cond_8

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Adding "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at front of queue"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 220
    :goto_2
    invoke-direct {p0}, Lcom/instagram/common/g/c/a;->c()V

    goto :goto_1

    .line 216
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Adding "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at back of queue"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/instagram/common/g/c/a;->d()Lcom/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/common/g/c/e;
    .locals 2
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/instagram/common/g/c/a;->l:Lcom/instagram/common/g/a/i;

    invoke-interface {v0, p1}, Lcom/instagram/common/g/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/g/a/g;

    move-result-object v0

    .line 227
    invoke-direct {p0}, Lcom/instagram/common/g/c/a;->d()Lcom/c/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/g/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/a/a;->b(Ljava/lang/String;)Lcom/c/a/g;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_0

    .line 229
    new-instance v0, Lcom/instagram/common/g/c/e;

    invoke-direct {v0, v1}, Lcom/instagram/common/g/c/e;-><init>(Lcom/c/a/g;)V

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
