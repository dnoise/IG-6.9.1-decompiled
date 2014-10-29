.class public final Lcom/instagram/feed/d/u;
.super Ljava/lang/Object;
.source "MediaLikesMutator.java"


# direct methods
.method public static a(Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/instagram/feed/d/o;->b:I

    :goto_0
    invoke-static {p0, v0}, Lcom/instagram/feed/d/u;->a(Lcom/instagram/feed/d/l;I)V

    .line 42
    return-void

    .line 41
    :cond_0
    sget v0, Lcom/instagram/feed/d/o;->a:I

    goto :goto_0
.end method

.method public static a(Lcom/instagram/feed/d/l;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 15
    iget v1, p0, Lcom/instagram/feed/d/l;->i:I

    if-eq v1, p1, :cond_2

    .line 16
    iput p1, p0, Lcom/instagram/feed/d/l;->i:I

    .line 18
    iget-object v1, p0, Lcom/instagram/feed/d/l;->h:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    iget-object v1, p0, Lcom/instagram/feed/d/l;->h:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    :goto_0
    sget v0, Lcom/instagram/feed/d/o;->a:I

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/instagram/feed/d/l;->g:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iput v0, p0, Lcom/instagram/feed/d/l;->g:I

    .line 31
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ak()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-static {p0}, Lcom/instagram/feed/d/v;->a(Lcom/instagram/feed/d/l;)V

    .line 36
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 38
    :cond_2
    return-void

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/instagram/feed/d/l;->h:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_4
    iget v0, p0, Lcom/instagram/feed/d/l;->g:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
