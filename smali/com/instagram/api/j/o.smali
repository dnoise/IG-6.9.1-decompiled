.class final Lcom/instagram/api/j/o;
.super Lcom/instagram/common/q/a;
.source "StreamingApiRequestLoaderCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/q/a",
        "<",
        "Lcom/instagram/api/j/j",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic n:Lcom/instagram/api/j/n;


# direct methods
.method constructor <init>(Lcom/instagram/api/j/n;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/api/j/o;->n:Lcom/instagram/api/j/n;

    invoke-direct {p0, p2}, Lcom/instagram/common/q/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/instagram/api/j/j;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/instagram/common/q/a;->a(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method private u()Lcom/instagram/api/j/p;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/j/p",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 50
    invoke-static {}, Lcom/instagram/api/d/a;->a()V

    .line 52
    new-instance v0, Lcom/instagram/api/j/p;

    invoke-virtual {p0}, Lcom/instagram/api/j/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/api/j/p;-><init>(Landroid/content/Context;)V

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/instagram/api/j/o;->n:Lcom/instagram/api/j/n;

    invoke-static {v1}, Lcom/instagram/api/j/n;->a(Lcom/instagram/api/j/n;)Lcom/instagram/api/j/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/api/j/g;->f()V
    :try_end_0
    .catch Lcom/instagram/api/j/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 62
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 64
    const/4 v1, 0x0

    .line 67
    :try_start_2
    iget-object v4, p0, Lcom/instagram/api/j/o;->n:Lcom/instagram/api/j/n;

    invoke-static {v4}, Lcom/instagram/api/j/n;->a(Lcom/instagram/api/j/n;)Lcom/instagram/api/j/g;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    .line 69
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 70
    sget-object v2, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v5

    .line 72
    :cond_0
    :goto_1
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v6, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v6, :cond_a

    .line 73
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string v6, "status"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 76
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Lcom/instagram/api/j/p;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :try_start_3
    const-string v2, "StreamingApiRequestLoaderCallbacks"

    const-string v4, "Caught exception performing/parsing streaming request"

    invoke-static {v2, v4, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    invoke-virtual {p0}, Lcom/instagram/api/j/o;->f()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/facebook/az;->network_error:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/p;->d(Ljava/lang/String;)Lcom/instagram/api/j/p;

    move-result-object v0

    .line 121
    :goto_2
    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/j/p;->a(Lch/boye/httpclientandroidlib/StatusLine;)V

    .line 126
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/api/j/p;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/instagram/api/j/p;->i()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 127
    iget-object v1, p0, Lcom/instagram/api/j/o;->n:Lcom/instagram/api/j/n;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 140
    :goto_3
    invoke-virtual {v0, v3}, Lcom/instagram/api/j/p;->a(Z)V

    .line 141
    return-object v0

    .line 58
    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0}, Lcom/instagram/api/j/o;->f()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->unknown_error_occured:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/api/j/p;->d(Ljava/lang/String;)Lcom/instagram/api/j/p;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 132
    :catch_2
    move-exception v0

    .line 134
    const-string v1, "StreamingApiRequestLoaderCallbacks"

    const-string v2, "Caught unhandled exception in streaming request"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    const-string v0, "StreamingApiRequestLoaderCallbacks"

    const-string v1, "Unexpected networking exception"

    invoke-static {v0, v1}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/instagram/api/j/o;->f()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/p;->d(Ljava/lang/String;)Lcom/instagram/api/j/p;

    move-result-object v0

    goto :goto_3

    .line 78
    :cond_2
    :try_start_5
    const-string v6, "message"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    iget-object v2, p0, Lcom/instagram/api/j/o;->n:Lcom/instagram/api/j/n;

    invoke-static {v5}, Lcom/instagram/api/j/n;->a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/api/j/p;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 80
    :cond_3
    const-string v6, "_messages"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 81
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 82
    invoke-static {v5}, Lcom/instagram/api/b/b;->a(Lcom/fasterxml/jackson/a/l;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/api/j/p;->a(Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 83
    :cond_4
    const-string v6, "checkpoint_url"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 84
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 85
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Lcom/instagram/api/j/p;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 87
    :cond_5
    const-string v6, "lock"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 88
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 89
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    .line 90
    :goto_4
    invoke-virtual {v0, v2}, Lcom/instagram/api/j/p;->b(Z)V

    goto/16 :goto_1

    .line 89
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 91
    :cond_7
    iget-object v6, p0, Lcom/instagram/api/j/o;->n:Lcom/instagram/api/j/n;

    invoke-static {v6}, Lcom/instagram/api/j/n;->a(Lcom/instagram/api/j/n;)Lcom/instagram/api/j/g;

    move-result-object v6

    invoke-virtual {v6, v2, v5, v0}, Lcom/instagram/api/j/g;->a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/p;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 93
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v6

    .line 99
    sget-object v7, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-eq v6, v7, :cond_8

    sget-object v7, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-ne v6, v7, :cond_9

    .line 100
    :cond_8
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto/16 :goto_1

    .line 102
    :cond_9
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/instagram/api/j/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 108
    :cond_a
    invoke-virtual {v5}, Lcom/fasterxml/jackson/a/l;->close()V

    .line 109
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 113
    iget-object v2, p0, Lcom/instagram/api/j/o;->n:Lcom/instagram/api/j/n;

    invoke-static {v2}, Lcom/instagram/api/j/n;->a(Lcom/instagram/api/j/n;)Lcom/instagram/api/j/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/api/j/g;->m()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 129
    :cond_b
    :try_start_6
    iget-object v1, p0, Lcom/instagram/api/j/o;->n:Lcom/instagram/api/j/n;

    invoke-static {v1}, Lcom/instagram/api/j/n;->a(Lcom/instagram/api/j/n;)Lcom/instagram/api/j/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/api/j/g;->n()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    check-cast p1, Lcom/instagram/api/j/j;

    invoke-direct {p0, p1}, Lcom/instagram/api/j/o;->a(Lcom/instagram/api/j/j;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/instagram/api/j/o;->u()Lcom/instagram/api/j/p;

    move-result-object v0

    return-object v0
.end method

.method protected final l()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Lcom/instagram/common/q/a;->l()V

    .line 147
    return-void
.end method
