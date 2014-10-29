.class public final Lcom/instagram/android/nux/af;
.super Ljava/lang/Object;
.source "LoginUtil.java"


# direct methods
.method public static a(Lcom/instagram/api/j/j;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "help_url"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "help_url"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/instagram/common/l/a/e;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/login/c/h;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/login/c/h;

    invoke-virtual {v0}, Lcom/instagram/android/login/c/h;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/instagram/p/b;->a()V

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Z)V

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 43
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/instagram/share/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instagram/user/c/i;->a(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/service/a/a;->d(Lcom/instagram/user/c/a;)V

    .line 49
    invoke-static {}, Lcom/instagram/common/u/b/i;->a()Lcom/instagram/common/u/b/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/u/b/h;->a(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/instagram/service/c/a;->a()V

    .line 51
    return-void
.end method
