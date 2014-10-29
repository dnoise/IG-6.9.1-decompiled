.class public final Lcom/instagram/notifications/a/c;
.super Ljava/lang/Object;
.source "IgNotification__JsonHelper.java"


# direct methods
.method private static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/notifications/a/b;
    .locals 3
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/instagram/notifications/a/b;

    invoke-direct {v0}, Lcom/instagram/notifications/a/b;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    .line 25
    const/4 v0, 0x0

    .line 35
    :cond_0
    return-object v0

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 31
    invoke-static {v0, v1, p0}, Lcom/instagram/notifications/a/c;->a(Lcom/instagram/notifications/a/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/instagram/notifications/a/b;
    .locals 1
    .parameter

    .prologue
    .line 79
    sget-object v0, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 81
    invoke-static {v0}, Lcom/instagram/notifications/a/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/notifications/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/instagram/notifications/a/b;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 129
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 130
    sget-object v1, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v1

    .line 131
    invoke-static {v1, p0}, Lcom/instagram/notifications/a/c;->a(Lcom/fasterxml/jackson/a/h;Lcom/instagram/notifications/a/b;)V

    .line 132
    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V

    .line 133
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/fasterxml/jackson/a/h;Lcom/instagram/notifications/a/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 89
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "pi"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "collapse_key"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 96
    const-string v0, "tt"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_2
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 99
    const-string v0, "m"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_3
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 102
    const-string v0, "t"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_4
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 105
    const-string v0, "igo"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_5
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 108
    const-string v0, "ig"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_6
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 111
    const-string v0, "a"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_7
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 114
    const-string v0, "u"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_8
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 117
    const-string v0, "sound"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_9
    iget-object v0, p1, Lcom/instagram/notifications/a/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 120
    const-string v0, "i"

    iget-object v1, p1, Lcom/instagram/notifications/a/b;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 125
    return-void
.end method

.method private static a(Lcom/instagram/notifications/a/b;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    const-string v2, "pi"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->i:Ljava/lang/String;

    move v0, v1

    .line 74
    :goto_0
    return v0

    .line 43
    :cond_1
    const-string v2, "collapse_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_2

    :goto_1
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->e:Ljava/lang/String;

    move v0, v1

    .line 45
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 46
    :cond_3
    const-string v2, "tt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 47
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_4

    :goto_2
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->c:Ljava/lang/String;

    move v0, v1

    .line 48
    goto :goto_0

    .line 47
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 49
    :cond_5
    const-string v2, "m"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 50
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_6

    :goto_3
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->b:Ljava/lang/String;

    move v0, v1

    .line 51
    goto :goto_0

    .line 50
    :cond_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 52
    :cond_7
    const-string v2, "t"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 53
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_8

    :goto_4
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->a:Ljava/lang/String;

    move v0, v1

    .line 54
    goto :goto_0

    .line 53
    :cond_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 55
    :cond_9
    const-string v2, "igo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 56
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_a

    :goto_5
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->k:Ljava/lang/String;

    move v0, v1

    .line 57
    goto :goto_0

    .line 56
    :cond_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 58
    :cond_b
    const-string v2, "ig"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 59
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_c

    :goto_6
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->d:Ljava/lang/String;

    move v0, v1

    .line 60
    goto/16 :goto_0

    .line 59
    :cond_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 61
    :cond_d
    const-string v2, "a"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 62
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_e

    :goto_7
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->g:Ljava/lang/String;

    move v0, v1

    .line 63
    goto/16 :goto_0

    .line 62
    :cond_e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 64
    :cond_f
    const-string v2, "u"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 65
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_10

    :goto_8
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->j:Ljava/lang/String;

    move v0, v1

    .line 66
    goto/16 :goto_0

    .line 65
    :cond_10
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 67
    :cond_11
    const-string v2, "sound"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 68
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_12

    :goto_9
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->h:Ljava/lang/String;

    move v0, v1

    .line 69
    goto/16 :goto_0

    .line 68
    :cond_12
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 70
    :cond_13
    const-string v2, "i"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 71
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_14

    :goto_a
    iput-object v0, p0, Lcom/instagram/notifications/a/b;->f:Ljava/lang/String;

    move v0, v1

    .line 72
    goto/16 :goto_0

    .line 71
    :cond_14
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 74
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
