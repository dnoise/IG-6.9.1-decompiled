.class public final Lcom/instagram/feed/comments/util/a;
.super Ljava/lang/Object;
.source "CommentUtil.java"


# direct methods
.method private static a(Lcom/fasterxml/jackson/databind/JsonNode;)J
    .locals 4
    .parameter

    .prologue
    .line 40
    const-string v0, "created_at"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asLong()J

    move-result-wide v0

    .line 47
    :goto_0
    return-wide v0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asLong()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Lcom/instagram/feed/d/b;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p1}, Lcom/instagram/o/e/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {p1}, Lcom/instagram/feed/comments/util/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instagram/feed/d/b;->a(J)V

    .line 33
    sget-object v1, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    invoke-virtual {p0, v1}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V

    .line 36
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->t()Lcom/instagram/feed/d/e;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/b;)Z
    .locals 3
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->ak()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
