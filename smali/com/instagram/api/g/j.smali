.class public Lcom/instagram/api/g/j;
.super Ljava/lang/Object;
.source "NetworkTraceCollector.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# static fields
.field public static a:Lcom/instagram/api/g/j;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "NetworkTraceCollector.class"
    .end annotation
.end field

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/api/g/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/instagram/common/y/b/a;

.field private final d:Landroid/net/ConnectivityManager;

.field private final e:Lcom/instagram/api/g/n;

.field private final f:Ljava/util/WeakHashMap;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lcom/instagram/api/g/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/instagram/api/g/j;

    sput-object v0, Lcom/instagram/api/g/j;->b:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Lcom/instagram/common/y/b/a;Landroid/net/ConnectivityManager;Lcom/instagram/api/g/n;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/y/b/a;

    .line 96
    iput-object p2, p0, Lcom/instagram/api/g/j;->d:Landroid/net/ConnectivityManager;

    .line 97
    iput-object p3, p0, Lcom/instagram/api/g/j;->e:Lcom/instagram/api/g/n;

    .line 98
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;

    .line 99
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/instagram/api/g/j;
    .locals 5
    .parameter

    .prologue
    .line 260
    const-class v1, Lcom/instagram/api/g/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/api/g/j;->a:Lcom/instagram/api/g/j;

    if-nez v0, :cond_0

    .line 261
    new-instance v2, Lcom/instagram/api/g/j;

    invoke-static {}, Lcom/instagram/common/y/b/a;->a()Lcom/instagram/common/y/b/a;

    move-result-object v3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/instagram/api/g/n;->a()Lcom/instagram/api/g/n;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/instagram/api/g/j;-><init>(Lcom/instagram/common/y/b/a;Landroid/net/ConnectivityManager;Lcom/instagram/api/g/n;)V

    sput-object v2, Lcom/instagram/api/g/j;->a:Lcom/instagram/api/g/j;

    .line 267
    :cond_0
    sget-object v0, Lcom/instagram/api/g/j;->a:Lcom/instagram/api/g/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/instagram/api/g/j;)Lcom/instagram/common/y/b/a;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/y/b/a;

    return-object v0
.end method

.method private static a(Lch/boye/httpclientandroidlib/HttpMessage;Lcom/instagram/api/g/i;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    const-string v0, "X-Instagram-Trace-Token"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "X-Instagram-Trace-Token"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/i;->a(Ljava/lang/String;)V

    .line 221
    :cond_0
    const-string v0, "X-Instagram-Trace-Enabled"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "X-Instagram-Trace-Enabled"

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/i;->a(Z)V

    .line 226
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/api/g/i;->k()Lcom/instagram/api/g/a;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_2

    .line 228
    invoke-static {p0, v0}, Lcom/instagram/api/g/b;->a(Lch/boye/httpclientandroidlib/HttpMessage;Lcom/instagram/api/g/a;)V

    .line 230
    :cond_2
    return-void
.end method

.method private static a(Lch/boye/httpclientandroidlib/HttpRequest;Lcom/instagram/api/g/i;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v1

    .line 234
    const-string v0, "InstagramTraceToken"

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "InstagramTraceToken"

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/i;->a(Ljava/lang/String;)V

    .line 237
    :cond_0
    const-string v0, "InstagramTraceEnabled"

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "InstagramTraceEnabled"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lch/boye/httpclientandroidlib/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instagram/api/g/i;->a(Z)V

    .line 241
    :cond_1
    invoke-static {v1, p1}, Lcom/instagram/api/g/b;->a(Lch/boye/httpclientandroidlib/params/HttpParams;Lcom/instagram/api/g/i;)V

    .line 242
    return-void
.end method

.method public static a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    .line 248
    const-string v1, "InstagramTraceEnabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 249
    const-string v1, "InstagramTraceToken"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 250
    return-void
.end method

.method static synthetic b(Lcom/instagram/api/g/j;)Lcom/instagram/api/g/n;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/api/g/j;->e:Lcom/instagram/api/g/n;

    return-object v0
.end method

.method private static b(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 253
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    const/4 v0, 0x0

    .line 256
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/HttpClientConnection;)Lcom/instagram/api/g/i;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/g/i;

    .line 158
    if-eqz v0, :cond_2

    .line 159
    iget-object v1, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/g/i;->c(Ljava/lang/String;)V

    .line 163
    check-cast p3, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/g/i;->b(Ljava/lang/String;)V

    .line 166
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/g/i;->a(I)V

    .line 169
    invoke-static {p2, v0}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpMessage;Lcom/instagram/api/g/i;)V

    .line 171
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    .line 172
    const/4 v1, 0x0

    .line 173
    if-eqz v2, :cond_0

    .line 174
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/instagram/api/g/i;->g(J)V

    .line 176
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    const/4 v1, 0x1

    .line 178
    new-instance v3, Lcom/instagram/api/g/k;

    invoke-direct {v3, p0, v2, v0}, Lcom/instagram/api/g/k;-><init>(Lcom/instagram/api/g/j;Lch/boye/httpclientandroidlib/HttpEntity;Lcom/instagram/api/g/i;)V

    invoke-interface {p2, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 182
    :cond_0
    if-nez v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/g/i;->e(J)V

    .line 184
    iget-object v1, p0, Lcom/instagram/api/g/j;->e:Lcom/instagram/api/g/n;

    invoke-virtual {v1, v0}, Lcom/instagram/api/g/n;->a(Lcom/instagram/api/g/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 187
    :cond_2
    :try_start_1
    sget-object v1, Lcom/instagram/api/g/j;->b:Ljava/lang/Class;

    invoke-static {p1}, Lcom/instagram/api/g/j;->b(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/Exception;)Lcom/instagram/api/g/i;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 198
    monitor-enter p0

    if-nez p1, :cond_0

    .line 199
    :try_start_0
    sget-object v0, Lcom/instagram/api/g/j;->b:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    const/4 v0, 0x0

    .line 209
    :goto_0
    monitor-exit p0

    return-object v0

    .line 203
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/g/i;

    .line 204
    if-eqz v0, :cond_1

    .line 205
    iget-object v1, p0, Lcom/instagram/api/g/j;->e:Lcom/instagram/api/g/n;

    invoke-virtual {v1, v0, p2}, Lcom/instagram/api/g/n;->a(Lcom/instagram/api/g/i;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 207
    :cond_1
    :try_start_2
    sget-object v1, Lcom/instagram/api/g/j;->b:Ljava/lang/Class;

    invoke-static {p1}, Lcom/instagram/api/g/j;->b(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 4
    .parameter

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/api/g/i;

    .line 127
    if-nez v1, :cond_0

    .line 128
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 130
    instance-of v2, p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    if-eqz v2, :cond_2

    .line 131
    move-object v0, p1

    check-cast v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-object v1, v0

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/instagram/api/g/j;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 134
    new-instance v1, Lcom/instagram/api/g/i;

    invoke-static {v3}, Lcom/instagram/common/y/g/a;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/instagram/api/g/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instagram/api/g/i;->a(J)V

    .line 139
    iget-object v2, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instagram/api/g/i;->b(J)V

    .line 140
    invoke-static {p1, v1}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Lcom/instagram/api/g/i;)V

    .line 142
    instance-of v2, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_1

    .line 143
    check-cast p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_1

    .line 145
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instagram/api/g/i;->f(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_1
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method public final declared-synchronized a(Lch/boye/httpclientandroidlib/HttpRequest;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/g/j;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/g/i;

    .line 111
    if-eqz v0, :cond_2

    .line 112
    const/4 v1, 0x1

    if-ne v1, p2, :cond_1

    .line 113
    iget-object v1, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/g/i;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 114
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    .line 115
    :try_start_1
    iget-object v1, p0, Lcom/instagram/api/g/j;->c:Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/g/i;->d(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 118
    :cond_2
    :try_start_2
    sget-object v0, Lcom/instagram/api/g/j;->b:Ljava/lang/Class;

    invoke-static {p1}, Lcom/instagram/api/g/j;->b(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
