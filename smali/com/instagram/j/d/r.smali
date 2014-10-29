.class public final Lcom/instagram/j/d/r;
.super Ljava/lang/Object;
.source "NewsfeedYouResponse__JsonHelper.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/j/d/o;
    .locals 3
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/instagram/j/d/o;

    invoke-direct {v0}, Lcom/instagram/j/d/o;-><init>()V

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
    invoke-static {v0, v1, p0}, Lcom/instagram/j/d/r;->a(Lcom/instagram/j/d/o;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/j/d/o;->e()Lcom/instagram/j/d/o;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/instagram/j/d/o;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    const-string v2, "counts"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {p2}, Lcom/instagram/j/d/q;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/j/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/j/d/o;->b:Lcom/instagram/j/d/p;

    move v0, v1

    .line 99
    :goto_0
    return v0

    .line 43
    :cond_0
    const-string v2, "friend_request_stories"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_2

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_2

    .line 48
    invoke-static {p2}, Lcom/instagram/j/d/n;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/j/d/c;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_2
    iput-object v0, p0, Lcom/instagram/j/d/o;->d:Ljava/util/List;

    move v0, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string v2, "megaphone_stories"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 58
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_5

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_5

    .line 61
    invoke-static {p2}, Lcom/instagram/j/d/n;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/j/d/c;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 67
    :cond_5
    iput-object v0, p0, Lcom/instagram/j/d/o;->c:Ljava/util/List;

    move v0, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_6
    const-string v2, "old_stories"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 71
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_8

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    :cond_7
    :goto_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_8

    .line 74
    invoke-static {p2}, Lcom/instagram/j/d/n;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/j/d/c;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_7

    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 80
    :cond_8
    iput-object v0, p0, Lcom/instagram/j/d/o;->s:Ljava/util/List;

    move v0, v1

    .line 81
    goto/16 :goto_0

    .line 82
    :cond_9
    const-string v2, "new_stories"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 84
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_b

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :cond_a
    :goto_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_b

    .line 87
    invoke-static {p2}, Lcom/instagram/j/d/n;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/j/d/c;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_a

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 93
    :cond_b
    iput-object v0, p0, Lcom/instagram/j/d/o;->e:Ljava/util/List;

    move v0, v1

    .line 94
    goto/16 :goto_0

    .line 95
    :cond_c
    const-string v2, "continuation_token"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 96
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_d

    :goto_5
    iput-object v0, p0, Lcom/instagram/j/d/o;->a:Ljava/lang/String;

    move v0, v1

    .line 97
    goto/16 :goto_0

    .line 96
    :cond_d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 99
    :cond_e
    invoke-static {p0, p1, p2}, Lcom/instagram/api/k/a/f;->a(Lcom/instagram/api/k/a/d;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    move-result v0

    goto/16 :goto_0
.end method
