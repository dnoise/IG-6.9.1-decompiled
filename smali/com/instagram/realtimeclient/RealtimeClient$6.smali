.class Lcom/instagram/realtimeclient/RealtimeClient$6;
.super Lcom/a/a/a;
.source "RealtimeClient.java"


# instance fields
.field private mSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

.field final synthetic this$0:Lcom/instagram/realtimeclient/RealtimeClient;


# direct methods
.method constructor <init>(Lcom/instagram/realtimeclient/RealtimeClient;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient$6;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;

    invoke-direct {p0}, Lcom/a/a/a;-><init>()V

    return-void
.end method

.method private declared-synchronized ensureSSLSocketFactoryInitialized()V
    .locals 3

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$6;->mSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$6;->mSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 124
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$6;->mSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    new-instance v1, Lcom/facebook/l/a/d;

    new-instance v2, Lcom/instagram/realtimeclient/RealtimeClient$6$1;

    invoke-direct {v2, p0}, Lcom/instagram/realtimeclient/RealtimeClient$6$1;-><init>(Lcom/instagram/realtimeclient/RealtimeClient$6;)V

    invoke-direct {v1, v2}, Lcom/facebook/l/a/d;-><init>(Lcom/facebook/l/a/a;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;I)V
    .locals 1
    .parameter "socket"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 145
    invoke-static {}, Lcom/instagram/common/y/h/a;->a()Lcom/instagram/common/y/h/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instagram/common/y/h/a;->a(Ljava/net/Socket;Ljava/lang/String;)V

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/a/a/a;->connectSocket(Ljava/net/Socket;Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public createSocket(Z)Ljava/net/Socket;
    .locals 1
    .parameter "isSecure"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient$6;->ensureSSLSocketFactoryInitialized()V

    .line 116
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$6;->mSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/a/a/a;->createSocket(Z)Ljava/net/Socket;

    move-result-object v0

    goto :goto_0
.end method
