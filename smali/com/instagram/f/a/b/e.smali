.class public final Lcom/instagram/f/a/b/e;
.super Ljava/lang/Object;
.source "InboxResponse__JsonHelper.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/b/c;
    .locals 3
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/instagram/f/a/b/c;

    invoke-direct {v0}, Lcom/instagram/f/a/b/c;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    .line 31
    const/4 v0, 0x0

    .line 41
    :cond_0
    return-object v0

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 37
    invoke-static {v0, v1, p0}, Lcom/instagram/f/a/b/e;->a(Lcom/instagram/f/a/b/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 38
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0
.end method

.method private static a(Lcom/instagram/f/a/b/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 46
    const-string v2, "new_shares_info"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {p2}, Lcom/instagram/f/b/b;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/f/a/b/c;->b:Lcom/instagram/f/b/a;

    move v0, v1

    .line 72
    :goto_0
    return v0

    .line 49
    :cond_0
    const-string v2, "patches"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-static {p2}, Lcom/instagram/f/a/b/d;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/f/a/b/c;->d:Lcom/instagram/f/a/b/d;

    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v2, "max_id"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/instagram/f/a/b/c;->a(Ljava/lang/String;)V

    move v0, v1

    .line 54
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 55
    :cond_3
    const-string v2, "subscription"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    invoke-static {p2}, Lcom/instagram/realtimeclient/RealtimeSubscription__JsonHelper;->parseFromJson(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/realtimeclient/RealtimeSubscription;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/f/a/b/c;->c:Lcom/instagram/realtimeclient/RealtimeSubscription;

    move v0, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    const-string v2, "shares"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 60
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_6

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_6

    .line 63
    invoke-static {p2, v1}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;Z)Lcom/instagram/feed/d/l;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_5

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 69
    :cond_6
    iput-object v0, p0, Lcom/instagram/f/a/b/c;->a:Ljava/util/List;

    move v0, v1

    .line 70
    goto :goto_0

    .line 72
    :cond_7
    invoke-static {p0, p1, p2}, Lcom/instagram/api/k/a/f;->a(Lcom/instagram/api/k/a/d;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    move-result v0

    goto :goto_0
.end method
