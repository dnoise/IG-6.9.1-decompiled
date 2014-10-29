.class final Lcom/instagram/api/k/a/e;
.super Ljava/lang/Object;
.source "IgResponseParser.java"

# interfaces
.implements Lcom/instagram/common/a/a/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/instagram/api/k/a/d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/instagram/common/a/a/n",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/api/k/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/k/a/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/instagram/api/k/a/a;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/instagram/api/k/a/e;->a:Lcom/instagram/api/k/a/a;

    .line 23
    return-void
.end method

.method private b(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/k/a/d;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 30
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 33
    iget-object v0, p0, Lcom/instagram/api/k/a/e;->a:Lcom/instagram/api/k/a/a;

    invoke-virtual {v0}, Lcom/instagram/api/k/a/a;->f()Ljava/io/File;

    move-result-object v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    new-instance v0, Lcom/instagram/api/k/a/g;

    invoke-direct {v0, v2, v3}, Lcom/instagram/api/k/a/g;-><init>(Ljava/io/InputStream;Ljava/io/File;)V

    .line 38
    :goto_0
    sget-object v2, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 41
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Response body is empty"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    throw v0

    .line 46
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/instagram/api/k/a/e;->a:Lcom/instagram/api/k/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/api/k/a/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    .line 47
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/instagram/api/k/a/d;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/instagram/api/k/a/e;->b(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method
