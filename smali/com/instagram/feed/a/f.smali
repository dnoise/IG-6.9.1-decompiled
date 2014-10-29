.class public final Lcom/instagram/feed/a/f;
.super Ljava/lang/Object;
.source "MainFeedResponse_Megaphone__JsonHelper.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/a/e;
    .locals 3
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/instagram/feed/a/e;

    invoke-direct {v0}, Lcom/instagram/feed/a/e;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    .line 27
    const/4 v0, 0x0

    .line 37
    :cond_0
    return-object v0

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 33
    invoke-static {v0, v1, p0}, Lcom/instagram/feed/a/f;->a(Lcom/instagram/feed/a/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0
.end method

.method private static a(Lcom/instagram/feed/a/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 42
    const-string v1, "feed_aysf"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {p2}, Lcom/instagram/feed/f/g;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/f/c;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/feed/a/e;->b:Lcom/instagram/feed/f/c;

    .line 52
    :goto_0
    return v0

    .line 45
    :cond_0
    const-string v1, "pepper"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-static {p2}, Lcom/instagram/feed/f/g;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/f/c;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/feed/a/e;->c:Lcom/instagram/feed/f/c;

    goto :goto_0

    .line 48
    :cond_1
    const-string v1, "follow_destination"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    invoke-static {p2}, Lcom/instagram/feed/f/g;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/f/c;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/feed/a/e;->a:Lcom/instagram/feed/f/c;

    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
