.class public abstract Lcom/instagram/api/k/a/a;
.super Lcom/instagram/common/a/a/a;
.source "AbstractIgRequest.java"

# interfaces
.implements Lcom/instagram/api/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/instagram/api/k/a/d;",
        ">",
        "Lcom/instagram/common/a/a/a",
        "<TResponseType;>;",
        "Lcom/instagram/api/c/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/instagram/common/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/a/l;",
            ")TResponseType;"
        }
    .end annotation
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/a;->a(Lcom/instagram/common/l/a/e;)V

    .line 96
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/k/a/d;

    .line 98
    invoke-virtual {v0}, Lcom/instagram/api/k/a/d;->g()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/instagram/api/k/a/d;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/api/b/b;

    .line 100
    invoke-static {v1}, Lcom/instagram/api/i/c;->a(Lcom/instagram/api/b/b;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/api/k/a/d;

    invoke-virtual {v1}, Lcom/instagram/api/k/a/d;->f_()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    const-string v1, "login_required"

    invoke-virtual {v0}, Lcom/instagram/api/k/a/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f/b;->a(Landroid/content/Context;)V

    .line 117
    :cond_1
    :goto_1
    return-void

    .line 108
    :cond_2
    const-string v1, "checkpoint_required"

    invoke-virtual {v0}, Lcom/instagram/api/k/a/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/api/k/a/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/api/k/a/d;->i()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/instagram/o/d/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public final d()Lcom/instagram/common/a/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/a/a/n",
            "<TResponseType;>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/instagram/api/k/a/e;

    invoke-direct {v0, p0}, Lcom/instagram/api/k/a/e;-><init>(Lcom/instagram/api/k/a/a;)V

    return-object v0
.end method

.method protected abstract d_()Ljava/lang/String;
.end method

.method public e_()Z
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/g/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/io/File;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final g()Lcom/instagram/common/l/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/instagram/api/d/a;->a()V

    .line 80
    :try_start_0
    invoke-super {p0}, Lcom/instagram/common/a/a/a;->g()Lcom/instagram/common/l/a/e;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    const-string v0, "failed_to_load_library_network_layer"

    const-string v1, "failed_to_load_library_network_layer"

    invoke-static {v0, v1}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/instagram/common/l/a/e;->c()Lcom/instagram/common/l/a/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final g_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/instagram/api/k/a/a;->d_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/api/k/a/a;->e_()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/api/h/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
