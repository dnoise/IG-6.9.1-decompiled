.class final Lcom/instagram/feed/c/m;
.super Ljava/lang/Object;
.source "LowLatencySessionUploadedListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/feed/c/l;


# direct methods
.method constructor <init>(Lcom/instagram/feed/c/l;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/feed/c/m;->a:Lcom/instagram/feed/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/feed/c/m;->a:Lcom/instagram/feed/c/l;

    invoke-static {v0}, Lcom/instagram/feed/c/l;->a(Lcom/instagram/feed/c/l;)Ljava/util/List;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/instagram/feed/c/m;->a:Lcom/instagram/feed/c/l;

    invoke-static {v0}, Lcom/instagram/feed/c/l;->b(Lcom/instagram/feed/c/l;)Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/instagram/api/f/a;

    iget-object v2, p0, Lcom/instagram/feed/c/m;->a:Lcom/instagram/feed/c/l;

    invoke-static {v2}, Lcom/instagram/feed/c/l;->c(Lcom/instagram/feed/c/l;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/api/f/a;-><init>(Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/instagram/feed/c/m;->a:Lcom/instagram/feed/c/l;

    invoke-static {}, Lcom/instagram/api/f/a;->b()Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/feed/c/l;->a(Lcom/instagram/feed/c/l;Lch/boye/httpclientandroidlib/client/HttpClient;)Lch/boye/httpclientandroidlib/client/HttpClient;

    .line 56
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    :try_start_1
    iget-object v3, p0, Lcom/instagram/feed/c/m;->a:Lcom/instagram/feed/c/l;

    invoke-static {v3}, Lcom/instagram/feed/c/l;->b(Lcom/instagram/feed/c/l;)Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v3

    new-instance v4, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-direct {v4, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/instagram/feed/c/l;->b()Ljava/lang/Class;

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 65
    :cond_1
    invoke-static {}, Lcom/instagram/feed/c/l;->b()Ljava/lang/Class;

    invoke-static {}, Lcom/instagram/common/l/a/b;->a()Lcom/instagram/common/l/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/common/l/a/b;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 67
    :cond_2
    return-void
.end method
