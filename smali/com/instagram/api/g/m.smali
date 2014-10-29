.class public final Lcom/instagram/api/g/m;
.super Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
.source "NetworkTraceEnabledHttpRequestExecutor.java"


# instance fields
.field private final a:Lcom/instagram/api/g/j;


# direct methods
.method public constructor <init>(Lcom/instagram/api/g/j;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;

    .line 24
    return-void
.end method


# virtual methods
.method protected final doReceiveResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 3
    .parameter "request"
    .parameter "conn"
    .parameter "context"

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    if-nez p2, :cond_1

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    if-nez p3, :cond_2

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    const/4 v1, 0x0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    if-eqz v1, :cond_3

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_5

    .line 95
    :cond_3
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 96
    iget-object v0, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;I)V

    .line 99
    invoke-virtual {p0, p1, v1}, Lcom/instagram/api/g/m;->canResponseHaveBody(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 102
    :cond_4
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    goto :goto_0

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;

    invoke-virtual {v0, p1, v1, p2}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/HttpClientConnection;)Lcom/instagram/api/g/i;

    .line 106
    return-object v1
.end method

.method protected final doSendRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 3
    .parameter "request"
    .parameter "conn"
    .parameter "context"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;

    invoke-virtual {v0, p1}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 49
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->doSendRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;I)V

    .line 52
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;I)V

    .line 66
    iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;

    invoke-virtual {v1, p1, v0, p2}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/HttpClientConnection;)Lcom/instagram/api/g/i;

    .line 69
    :cond_0
    return-object v0
.end method

.method public final execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2
    .parameter "request"
    .parameter "conn"
    .parameter "context"

    .prologue
    .line 30
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;

    invoke-virtual {v1, p1, v0}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/Exception;)Lcom/instagram/api/g/i;

    .line 33
    throw v0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;

    invoke-virtual {v1, p1, v0}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/Exception;)Lcom/instagram/api/g/i;

    .line 36
    throw v0

    .line 37
    :catch_2
    move-exception v0

    .line 38
    iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;

    invoke-virtual {v1, p1, v0}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/Exception;)Lcom/instagram/api/g/i;

    .line 39
    throw v0
.end method
