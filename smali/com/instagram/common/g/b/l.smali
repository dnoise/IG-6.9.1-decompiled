.class final Lcom/instagram/common/g/b/l;
.super Ljava/lang/Object;
.source "IgImageCache.java"

# interfaces
.implements Lcom/instagram/common/g/b/t;


# instance fields
.field final synthetic a:Lcom/instagram/common/g/b/h;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/common/g/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/instagram/common/g/b/g;

.field private d:Lcom/instagram/common/g/a/c;

.field private e:Lcom/c/a/a;

.field private f:Lch/boye/httpclientandroidlib/client/HttpClient;


# direct methods
.method private constructor <init>(Lcom/instagram/common/g/b/h;)V
    .locals 1
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/instagram/common/g/b/l;->a:Lcom/instagram/common/g/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/b/l;->b:Ljava/util/Set;

    .line 392
    new-instance v0, Lcom/instagram/common/g/b/g;

    invoke-direct {v0}, Lcom/instagram/common/g/b/g;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/b/l;->c:Lcom/instagram/common/g/b/g;

    .line 393
    new-instance v0, Lcom/instagram/common/g/a/e;

    invoke-direct {v0}, Lcom/instagram/common/g/a/e;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/b/l;->d:Lcom/instagram/common/g/a/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/g/b/h;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/instagram/common/g/b/l;-><init>(Lcom/instagram/common/g/b/h;)V

    return-void
.end method

.method private a(Lcom/instagram/common/g/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/instagram/common/g/b/l;->d:Lcom/instagram/common/g/a/c;

    .line 407
    return-void
.end method

.method private a(Lcom/instagram/common/g/a/f;)V
    .locals 1
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/instagram/common/g/b/l;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 457
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/g/b/l;Lcom/instagram/common/g/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/instagram/common/g/b/l;->a(Lcom/instagram/common/g/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/g/b/l;Lcom/instagram/common/g/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/instagram/common/g/b/l;->a(Lcom/instagram/common/g/a/f;)V

    return-void
.end method

.method private declared-synchronized e()V
    .locals 3

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/b/l;->f:Lch/boye/httpclientandroidlib/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 423
    :goto_0
    monitor-exit p0

    return-void

    .line 412
    :cond_0
    :try_start_1
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-static {}, Lcom/instagram/common/a/g/d;->a()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    .line 414
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setDefaultMaxPerRoute(I)V

    .line 415
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setMaxTotal(I)V

    .line 417
    new-instance v1, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    .line 418
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    .line 419
    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 420
    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 422
    iget-object v2, p0, Lcom/instagram/common/g/b/l;->d:Lcom/instagram/common/g/a/c;

    invoke-interface {v2, v0, v1}, Lcom/instagram/common/g/a/c;->a(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/g/b/l;->f:Lch/boye/httpclientandroidlib/client/HttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 3

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/b/l;->e:Lcom/c/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 437
    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/g/b/l;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v0}, Lcom/instagram/common/g/b/h;->g(Lcom/instagram/common/g/b/h;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/g/b/l;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v1}, Lcom/instagram/common/g/b/h;->h(Lcom/instagram/common/g/b/h;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/common/g/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    const-wide/32 v1, 0x1e00000

    invoke-static {v0, v1, v2}, Lcom/c/a/a;->a(Ljava/io/File;J)Lcom/c/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/g/b/l;->e:Lcom/c/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    :cond_0
    monitor-exit p0

    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open disk cache for images"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Lch/boye/httpclientandroidlib/client/HttpClient;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/instagram/common/g/b/l;->f:Lch/boye/httpclientandroidlib/client/HttpClient;

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/instagram/common/g/b/l;->e()V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/g/b/l;->f:Lch/boye/httpclientandroidlib/client/HttpClient;

    return-object v0
.end method

.method public final a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/instagram/common/g/b/l;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/a/f;

    .line 462
    invoke-interface {v0, p1, p2}, Lcom/instagram/common/g/a/f;->a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method

.method public final b()Lcom/c/a/a;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/instagram/common/g/b/l;->e:Lcom/c/a/a;

    if-nez v0, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/instagram/common/g/b/l;->f()V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/g/b/l;->e:Lcom/c/a/a;

    return-object v0
.end method

.method public final c()Lcom/instagram/common/g/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/g/b/e",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/instagram/common/g/b/l;->a:Lcom/instagram/common/g/b/h;

    invoke-static {v0}, Lcom/instagram/common/g/b/h;->i(Lcom/instagram/common/g/b/h;)Lcom/instagram/common/g/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/instagram/common/g/b/g;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/instagram/common/g/b/l;->c:Lcom/instagram/common/g/b/g;

    return-object v0
.end method
