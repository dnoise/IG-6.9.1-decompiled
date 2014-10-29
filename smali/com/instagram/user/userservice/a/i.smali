.class public final Lcom/instagram/user/userservice/a/i;
.super Ljava/lang/Object;
.source "UserAutoCompleteUtil.java"


# direct methods
.method public static a(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 41
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    invoke-static {p1, p3, v0}, Lcom/instagram/user/userservice/a/i;->a(Ljava/util/Set;Lcom/android/internal/util/Predicate;Lcom/instagram/user/c/a;)V

    .line 48
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v3}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    invoke-static {v3, v1}, Lcom/instagram/common/y/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-static {p1, p3, v0}, Lcom/instagram/user/userservice/a/i;->a(Ljava/util/Set;Lcom/android/internal/util/Predicate;Lcom/instagram/user/c/a;)V

    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method

.method private static a(Ljava/util/Set;Lcom/android/internal/util/Predicate;Lcom/instagram/user/c/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;",
            "Lcom/instagram/user/c/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    return-void
.end method
