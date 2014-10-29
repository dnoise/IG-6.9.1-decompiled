.class public final Lcom/instagram/android/login/c/i;
.super Ljava/lang/Object;
.source "LoginResponse__JsonHelper.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/login/c/h;
    .locals 3
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/instagram/android/login/c/h;

    invoke-direct {v0}, Lcom/instagram/android/login/c/h;-><init>()V

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
    invoke-static {v0, v1, p0}, Lcom/instagram/android/login/c/i;->a(Lcom/instagram/android/login/c/h;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0
.end method

.method private static a(Lcom/instagram/android/login/c/h;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 42
    const-string v0, "help_url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/instagram/android/login/c/h;->b:Ljava/lang/String;

    move v0, v1

    .line 49
    :goto_1
    return v0

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_1
    const-string v0, "logged_in_user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-static {p2}, Lcom/instagram/user/c/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/login/c/h;->a:Lcom/instagram/user/c/a;

    move v0, v1

    .line 47
    goto :goto_1

    .line 49
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/instagram/api/k/a/f;->a(Lcom/instagram/api/k/a/d;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    move-result v0

    goto :goto_1
.end method
