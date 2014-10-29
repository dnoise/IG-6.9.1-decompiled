.class public final Lcom/instagram/feed/comments/b/a;
.super Ljava/lang/Object;
.source "CommentRemover.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;ILcom/instagram/api/j/a;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/feed/d/b;",
            "I",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/instagram/feed/comments/c/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/instagram/feed/comments/c/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;ILcom/instagram/api/j/a;)V

    invoke-static {p2, v0}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;Lcom/instagram/api/j/c;)V

    .line 31
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/b;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->l()V

    .line 51
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->m()V

    .line 52
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/b;Lcom/instagram/api/j/c;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    if-ne v0, v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->l()V

    .line 36
    invoke-virtual {p1}, Lcom/instagram/api/j/c;->g()V

    .line 43
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/d/c;->b:Lcom/instagram/feed/d/c;

    if-ne v0, v1, :cond_1

    .line 38
    invoke-static {p0}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;)V

    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lcom/instagram/feed/d/c;->e:Lcom/instagram/feed/d/c;

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V

    goto :goto_0
.end method
