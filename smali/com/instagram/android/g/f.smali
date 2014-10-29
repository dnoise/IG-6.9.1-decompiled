.class public final Lcom/instagram/android/g/f;
.super Ljava/lang/Object;
.source "QuickSandResponse__JsonHelper.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/g/e;
    .locals 3
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/instagram/android/g/e;

    invoke-direct {v0}, Lcom/instagram/android/g/e;-><init>()V

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
    invoke-static {v0, v1, p0}, Lcom/instagram/android/g/f;->a(Lcom/instagram/android/g/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0
.end method

.method private static a(Lcom/instagram/android/g/e;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 40
    const-string v0, "size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/g/e;->d:Ljava/lang/Integer;

    move v0, v1

    .line 56
    :goto_0
    return v0

    .line 43
    :cond_0
    const-string v0, "shift"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/g/e;->c:Ljava/lang/Integer;

    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "edges"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/g/e;->e:Ljava/lang/Integer;

    move v0, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v0, "header"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/instagram/android/g/e;->a:Ljava/lang/String;

    move v0, v1

    .line 51
    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 52
    :cond_4
    const-string v0, "iterations"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/g/e;->b:Ljava/lang/Integer;

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/instagram/api/k/a/f;->a(Lcom/instagram/api/k/a/d;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    move-result v0

    goto :goto_0
.end method
