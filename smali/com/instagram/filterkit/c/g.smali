.class final Lcom/instagram/filterkit/c/g;
.super Ljava/lang/Object;
.source "SingleThreadRenderManager.java"

# interfaces
.implements Lcom/instagram/filterkit/c/d;


# instance fields
.field final synthetic a:Lcom/instagram/filterkit/c/e;


# direct methods
.method private constructor <init>(Lcom/instagram/filterkit/c/e;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/filterkit/c/e;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/instagram/filterkit/c/g;-><init>(Lcom/instagram/filterkit/c/e;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->e(Lcom/instagram/filterkit/c/e;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->e(Lcom/instagram/filterkit/c/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 201
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;

    .line 209
    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->j(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v1}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/filterkit/a/b;->b()Lcom/instagram/filterkit/d/c;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v2}, Lcom/instagram/filterkit/c/e;->c(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/e/a;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v3}, Lcom/instagram/filterkit/c/e;->i(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/e/c;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    .line 210
    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;

    .line 212
    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->k(Lcom/instagram/filterkit/c/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 213
    :try_start_2
    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->h(Lcom/instagram/filterkit/c/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/filterkit/a/b;->f()V

    .line 216
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 218
    iget-object v0, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/filterkit/c/g;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v1}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;

    invoke-interface {v0}, Lcom/instagram/filterkit/c/b;->b()V

    .line 219
    return-void

    .line 216
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
