.class public abstract Lcom/instagram/common/a/a/q;
.super Ljava/lang/Object;
.source "StreamResponseParser.java"

# interfaces
.implements Lcom/instagram/common/a/a/n;
.implements Lcom/instagram/common/a/a/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType::",
        "Lcom/instagram/common/a/a/m;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/instagram/common/a/a/n",
        "<TResponseType;>;",
        "Lcom/instagram/common/a/a/p",
        "<TResponseType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lch/boye/httpclientandroidlib/HttpResponse;Lcom/instagram/common/a/a/p;)Lcom/instagram/common/a/a/m;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType::",
            "Lcom/instagram/common/a/a/m;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            "Lcom/instagram/common/a/a/p",
            "<TResponseType;>;)TResponseType;"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 34
    :try_start_0
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 39
    sget-object v2, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 43
    :cond_0
    invoke-interface {p1, v1}, Lcom/instagram/common/a/a/p;->a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/a/a/m;

    .line 44
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/instagram/common/a/a/m;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private b(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/common/a/a/m;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ")TResponseType;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p1, p0}, Lcom/instagram/common/a/a/q;->a(Lch/boye/httpclientandroidlib/HttpResponse;Lcom/instagram/common/a/a/p;)Lcom/instagram/common/a/a/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/instagram/common/a/a/q;->b(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/common/a/a/m;

    move-result-object v0

    return-object v0
.end method
