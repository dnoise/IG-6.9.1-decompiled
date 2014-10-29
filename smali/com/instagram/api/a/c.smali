.class public final Lcom/instagram/api/a/c;
.super Ljava/lang/Object;
.source "InstagramApiHttpClientFactory.java"

# interfaces
.implements Lcom/instagram/common/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lch/boye/httpclientandroidlib/client/HttpClient;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    .line 38
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    .line 39
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 40
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 41
    sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setVersion(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    .line 42
    invoke-static {}, Lcom/instagram/api/useragent/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setUserAgent(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-static {}, Lcom/instagram/common/a/g/d;->a()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    .line 46
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setDefaultMaxPerRoute(I)V

    .line 48
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v2

    .line 49
    new-instance v3, Lcom/instagram/api/f/a;

    invoke-direct {v3, v2}, Lcom/instagram/api/f/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1, v0}, Lcom/instagram/api/f/a;->a(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c()Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->setCookieStore(Lch/boye/httpclientandroidlib/client/CookieStore;)V

    .line 52
    new-instance v1, Lcom/instagram/common/a/e/a;

    invoke-direct {v1}, Lcom/instagram/common/a/e/a;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 53
    new-instance v1, Lcom/instagram/api/a/a;

    invoke-direct {v1, v2}, Lcom/instagram/api/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 54
    new-instance v1, Lcom/instagram/common/a/e/c;

    invoke-direct {v1}, Lcom/instagram/common/a/e/c;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 55
    new-instance v1, Lcom/instagram/common/a/e/d;

    invoke-direct {v1}, Lcom/instagram/common/a/e/d;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    .line 56
    new-instance v1, Lcom/instagram/api/a/b;

    invoke-direct {v1}, Lcom/instagram/api/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    .line 59
    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/instagram/common/a/e/b;

    invoke-direct {v1}, Lcom/instagram/common/a/e/b;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 61
    new-instance v1, Lcom/instagram/common/a/e/e;

    invoke-direct {v1}, Lcom/instagram/common/a/e/e;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    .line 64
    :cond_0
    return-object v0
.end method
