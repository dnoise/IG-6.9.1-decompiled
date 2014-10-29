.class final Lcom/instagram/common/a/a/l;
.super Ljava/lang/Object;
.source "RequestPerformerUtil.java"


# direct methods
.method static a(Lcom/instagram/common/a/a/a;)Lcom/instagram/common/l/a/e;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType::",
            "Lcom/instagram/common/a/a/m;",
            ">(",
            "Lcom/instagram/common/a/a/a",
            "<TResponseType;>;)",
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/instagram/common/a/a/a;->d()Lcom/instagram/common/a/a/n;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/n;->a(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/l/a/e;->a(Ljava/lang/Object;)Lcom/instagram/common/l/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :try_start_1
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 49
    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 35
    :try_start_2
    invoke-virtual {p0}, Lcom/instagram/common/a/a/a;->g_()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 36
    const-string v3, "network_request"

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :try_start_3
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 49
    :cond_0
    :goto_1
    invoke-static {}, Lcom/instagram/common/l/a/e;->c()Lcom/instagram/common/l/a/e;

    move-result-object v0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    :try_start_4
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 41
    :goto_2
    throw v0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 42
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method
