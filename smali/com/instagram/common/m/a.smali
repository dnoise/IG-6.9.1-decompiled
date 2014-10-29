.class public final Lcom/instagram/common/m/a;
.super Ljava/lang/Object;
.source "ListenableHttpDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lch/boye/httpclientandroidlib/client/HttpClient;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/instagram/common/m/b;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Ljava/lang/String;Lcom/instagram/common/m/b;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/instagram/common/m/a;->a:Lch/boye/httpclientandroidlib/client/HttpClient;

    .line 66
    iput-object p2, p0, Lcom/instagram/common/m/a;->b:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/instagram/common/m/a;->c:Lcom/instagram/common/m/b;

    .line 69
    iget-object v0, p0, Lcom/instagram/common/m/a;->c:Lcom/instagram/common/m/b;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    return-void
.end method

.method private a(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .locals 5
    .parameter

    .prologue
    .line 115
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 134
    :try_start_1
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :goto_0
    return-void

    .line 120
    :cond_0
    :try_start_2
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    :try_start_3
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 136
    :goto_1
    throw v0

    .line 124
    :cond_1
    const/16 v1, 0x1000

    :try_start_4
    new-array v1, v1, [B

    .line 129
    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/instagram/common/m/a;->c:Lcom/instagram/common/m/b;

    invoke-interface {v3, v1, v2}, Lcom/instagram/common/m/b;->a([BI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 134
    :cond_2
    :try_start_5
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    iget-object v1, p0, Lcom/instagram/common/m/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/instagram/common/m/a;->c:Lcom/instagram/common/m/b;

    invoke-interface {v1, v0}, Lcom/instagram/common/m/b;->a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;)V

    .line 81
    iget-object v1, p0, Lcom/instagram/common/m/a;->a:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/instagram/common/m/a;->c:Lcom/instagram/common/m/b;

    invoke-interface {v0}, Lcom/instagram/common/m/b;->b()V

    .line 105
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/instagram/common/m/a;->c:Lcom/instagram/common/m/b;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    invoke-interface {v1, v2}, Lcom/instagram/common/m/b;->a(Lch/boye/httpclientandroidlib/StatusLine;)V

    .line 96
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/m/a;->a(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    iget-object v0, p0, Lcom/instagram/common/m/a;->c:Lcom/instagram/common/m/b;

    invoke-interface {v0}, Lcom/instagram/common/m/b;->a()V

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "ListenableHttpDownloader"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/instagram/common/m/a;->c:Lcom/instagram/common/m/b;

    invoke-interface {v0}, Lcom/instagram/common/m/b;->b()V

    goto :goto_0
.end method
