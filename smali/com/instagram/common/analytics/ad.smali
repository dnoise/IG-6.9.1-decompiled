.class final Lcom/instagram/common/analytics/ad;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/ab;


# direct methods
.method private constructor <init>(Lcom/instagram/common/analytics/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/analytics/ab;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/ad;-><init>(Lcom/instagram/common/analytics/ab;)V

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 439
    iget-object v0, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->d(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->d(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/i;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->e(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/k;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v2}, Lcom/instagram/common/analytics/ab;->d(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/common/analytics/k;->a(Lcom/instagram/common/analytics/i;)Ljava/io/File;

    move-result-object v1

    .line 448
    iget-object v0, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/instagram/common/analytics/ab;->a(Lcom/instagram/common/analytics/ab;Lcom/instagram/common/analytics/i;)Lcom/instagram/common/analytics/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    if-eqz v1, :cond_1

    .line 456
    iget-object v0, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->f(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/m;->a(Ljava/io/File;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_1

    .line 460
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v1}, Lcom/instagram/common/analytics/ab;->g(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v1}, Lcom/instagram/common/analytics/ab;->g(Lcom/instagram/common/analytics/ab;)Lcom/instagram/common/analytics/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/e;->a(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 466
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 474
    :cond_1
    :goto_1
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    const-string v2, "InstagramAnalyticsLogger"

    const-string v3, "Unable to store batch"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->b(Lcom/instagram/common/analytics/ab;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 431
    :goto_0
    iget-object v0, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->c(Lcom/instagram/common/analytics/ab;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/instagram/common/analytics/ad;->a:Lcom/instagram/common/analytics/ab;

    invoke-static {v0}, Lcom/instagram/common/analytics/ab;->c(Lcom/instagram/common/analytics/ab;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/instagram/common/analytics/ad;->a()V

    .line 436
    return-void
.end method
