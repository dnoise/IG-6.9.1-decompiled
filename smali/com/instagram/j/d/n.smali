.class public final Lcom/instagram/j/d/n;
.super Ljava/lang/Object;
.source "NewsfeedStory__JsonHelper.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/j/d/c;
    .locals 3
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/instagram/j/d/c;

    invoke-direct {v0}, Lcom/instagram/j/d/c;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    .line 25
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 28
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 31
    invoke-static {v0, v1, p0}, Lcom/instagram/j/d/n;->a(Lcom/instagram/j/d/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/j/d/c;->l()Lcom/instagram/j/d/c;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/instagram/j/d/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 40
    const-string v1, "type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v1

    iput v1, p0, Lcom/instagram/j/d/c;->a:I

    .line 47
    :goto_0
    return v0

    .line 43
    :cond_0
    const-string v1, "args"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-static {p2}, Lcom/instagram/j/d/m;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/j/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/j/d/c;->b:Lcom/instagram/j/d/d;

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
