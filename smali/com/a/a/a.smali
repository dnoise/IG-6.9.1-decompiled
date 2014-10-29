.class public Lcom/a/a/a;
.super Ljava/lang/Object;
.source "BaseSocketFactory.java"

# interfaces
.implements Lcom/a/a/e;


# instance fields
.field private mSocketFactory:Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 15
    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;I)V
    .locals 1
    .parameter "socket"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 29
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 30
    return-void
.end method

.method public createSocket(Z)Ljava/net/Socket;
    .locals 1
    .parameter "isSecure"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/a/a/a;->mSocketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
