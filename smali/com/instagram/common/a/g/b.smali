.class final Lcom/instagram/common/a/g/b;
.super Ljava/lang/Object;
.source "ApacheAppSchemeRegistry.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# instance fields
.field private a:Lorg/apache/http/conn/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/instagram/common/a/g/b;-><init>()V

    return-void
.end method

.method private declared-synchronized a()Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    .locals 3

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/a/g/b;->a:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/a/g/b;->a:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 85
    new-instance v1, Lcom/facebook/l/a/d;

    new-instance v2, Lcom/instagram/common/a/g/c;

    invoke-direct {v2, p0}, Lcom/instagram/common/a/g/c;-><init>(Lcom/instagram/common/a/g/b;)V

    invoke-direct {v1, v2}, Lcom/facebook/l/a/d;-><init>(Lcom/facebook/l/a/a;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 98
    invoke-static {}, Lcom/instagram/common/a/g/a;->b()Ljava/lang/Class;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/a/g/b;->a:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 7
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "params"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/instagram/common/a/g/b;->a()Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/instagram/common/a/g/b;->a()Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/instagram/common/a/g/b;->a()Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 1
    .parameter "socket"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/instagram/common/a/g/b;->a()Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
