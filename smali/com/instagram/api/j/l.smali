.class public abstract Lcom/instagram/api/j/l;
.super Ljava/lang/Object;
.source "BaseApiLoaderCallbacks.java"

# interfaces
.implements Landroid/support/v4/app/ao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/ao",
        "<",
        "Lcom/instagram/api/j/j",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/instagram/api/j/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/j/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/instagram/api/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/j/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/api/j/c;Lcom/instagram/api/j/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instagram/api/j/c",
            "<TT;>;",
            "Lcom/instagram/api/j/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/instagram/api/j/l;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/instagram/api/j/l;->b:Lcom/instagram/api/j/c;

    .line 26
    iput-object p3, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/api/j/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/j/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;

    return-object v0
.end method

.method public a(Landroid/support/v4/a/c;Lcom/instagram/api/j/j;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/api/j/j",
            "<TT;>;>;",
            "Lcom/instagram/api/j/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/instagram/api/j/j;->a(Z)V

    .line 35
    iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;

    invoke-virtual {v0}, Lcom/instagram/api/j/a;->b()V

    .line 37
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->k()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/b/b;

    .line 39
    invoke-static {v0}, Lcom/instagram/api/i/c;->a(Lcom/instagram/api/b/b;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 45
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->f()V

    .line 46
    iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;

    invoke-virtual {v0, p2}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V

    .line 85
    :cond_1
    :goto_1
    return-void

    .line 49
    :cond_2
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "login_required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/instagram/api/j/l;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/f/b;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkpoint_required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {p0}, Lcom/instagram/api/j/l;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/api/j/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/instagram/api/j/j;->n()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/instagram/o/d/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/instagram/api/j/l;->b:Lcom/instagram/api/j/c;

    invoke-virtual {v0, p2}, Lcom/instagram/api/j/c;->c(Lcom/instagram/api/j/j;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {p0}, Lcom/instagram/api/j/l;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/o/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_5
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 74
    iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;

    invoke-virtual {p2}, Lcom/instagram/api/j/j;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/j/a;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    :cond_6
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->f()V

    .line 77
    iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;

    invoke-virtual {v0, p2}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V

    goto :goto_1

    .line 81
    :cond_7
    invoke-virtual {p2}, Lcom/instagram/api/j/j;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/instagram/api/j/l;->c:Lcom/instagram/api/j/a;

    invoke-virtual {p2}, Lcom/instagram/api/j/j;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/j/a;->a(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    check-cast p2, Lcom/instagram/api/j/j;

    invoke-virtual {p0, p1, p2}, Lcom/instagram/api/j/l;->a(Landroid/support/v4/a/c;Lcom/instagram/api/j/j;)V

    return-void
.end method

.method protected final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/instagram/api/j/l;->a:Landroid/content/Context;

    return-object v0
.end method
