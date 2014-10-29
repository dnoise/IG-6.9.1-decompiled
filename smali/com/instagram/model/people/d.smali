.class public final Lcom/instagram/model/people/d;
.super Ljava/lang/Object;
.source "PeopleTag__JsonHelper.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/model/people/PeopleTag;
    .locals 3
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/instagram/model/people/PeopleTag;

    invoke-direct {v0}, Lcom/instagram/model/people/PeopleTag;-><init>()V

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
    invoke-static {v0, v1, p0}, Lcom/instagram/model/people/d;->a(Lcom/instagram/model/people/PeopleTag;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->a()Lcom/instagram/model/people/PeopleTag;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/instagram/model/people/PeopleTag;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 42
    const-string v1, "position"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {p2}, Lcom/instagram/model/people/PeopleTag;->a(Lcom/fasterxml/jackson/a/l;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;

    .line 49
    :goto_0
    return v0

    .line 45
    :cond_0
    const-string v1, "user"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-static {p2}, Lcom/instagram/user/c/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/model/people/PeopleTag;->a:Lcom/instagram/user/c/a;

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
