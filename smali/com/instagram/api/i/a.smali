.class public final Lcom/instagram/api/i/a;
.super Ljava/lang/Object;
.source "RequestParamUtil.java"


# direct methods
.method public static a(Lcom/instagram/common/a/c/d;Lcom/instagram/api/c/a;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-interface {p1}, Lcom/instagram/api/c/a;->c()I

    move-result v0

    sget v1, Lcom/instagram/common/a/c/a;->a:I

    if-ne v0, v1, :cond_3

    .line 21
    invoke-static {}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->c()Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/persistentcookiestore/PersistentCookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;

    .line 22
    const-string v2, "csrftoken"

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    const-string v2, "_csrftoken"

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lcom/instagram/common/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 28
    invoke-interface {p1}, Lcom/instagram/api/c/a;->e_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    const-string v0, "_uuid"

    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/z/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/instagram/common/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_2
    invoke-interface {p1}, Lcom/instagram/api/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    const-string v0, "_uid"

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/instagram/common/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_3
    return-void
.end method
