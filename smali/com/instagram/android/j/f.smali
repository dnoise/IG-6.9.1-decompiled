.class public final Lcom/instagram/android/j/f;
.super Ljava/lang/Object;
.source "UserSearchUtil.java"


# direct methods
.method public static a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/l/b/a;->d()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v3

    .line 25
    if-eqz v2, :cond_0

    .line 26
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    invoke-static {v2}, Lcom/instagram/user/b/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 30
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v4

    .line 31
    if-nez v4, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 36
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    const-string v1, "UserSearchUtil"

    const-string v2, "Error reading from recent users. Clearing results"

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/l/b/a;->e()V

    .line 43
    :cond_0
    :goto_3
    return-object v0

    .line 34
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    .line 40
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_3
.end method

.method public static a(Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 47
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    invoke-static {v0}, Lcom/instagram/user/b/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->h()V

    .line 69
    :goto_1
    return-void

    .line 56
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 61
    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v1

    invoke-static {v0}, Lcom/instagram/user/b/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/l/b/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
