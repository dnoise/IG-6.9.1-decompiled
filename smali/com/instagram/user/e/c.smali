.class public final Lcom/instagram/user/e/c;
.super Ljava/lang/Object;
.source "RequestedFollowsResponse__JsonHelper.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/e/b;
    .locals 3
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/instagram/user/e/b;

    invoke-direct {v0}, Lcom/instagram/user/e/b;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    .line 27
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 30
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 33
    invoke-static {v0, v1, p0}, Lcom/instagram/user/e/c;->a(Lcom/instagram/user/e/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/user/e/b;->c()Lcom/instagram/user/e/b;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/instagram/user/e/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v0, "users"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_1

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_1

    .line 47
    invoke-static {p2}, Lcom/instagram/user/c/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    iput-object v0, p0, Lcom/instagram/user/e/b;->a:Ljava/util/List;

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_1
    return v0

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/instagram/api/k/a/f;->a(Lcom/instagram/api/k/a/d;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    move-result v0

    goto :goto_1
.end method
