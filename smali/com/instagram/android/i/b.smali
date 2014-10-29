.class public final Lcom/instagram/android/i/b;
.super Ljava/lang/Object;
.source "SimilarAccountsUtil.java"


# direct methods
.method public static a(Lcom/instagram/user/c/a;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/user/c/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->F()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/instagram/user/c/a;->F()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 33
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v2}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    sget-object v5, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;

    if-ne v0, v5, :cond_4

    .line 36
    sget-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    invoke-virtual {v2, v0}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V

    move-object v0, v2

    .line 43
    :goto_2
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v2

    sget-object v5, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    if-ne v2, v5, :cond_3

    .line 44
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    :goto_3
    move v1, v0

    .line 46
    goto :goto_1

    .line 39
    :cond_1
    sget-object v2, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    invoke-virtual {v0, v2}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V

    .line 40
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 51
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public static a(Lcom/instagram/common/analytics/g;Lcom/instagram/android/i/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    invoke-virtual {p1}, Lcom/instagram/android/i/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v2, "uid_based_on"

    invoke-virtual {v1, v2, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2, p3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "view"

    invoke-virtual {v1, v2, p4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 72
    return-void
.end method
