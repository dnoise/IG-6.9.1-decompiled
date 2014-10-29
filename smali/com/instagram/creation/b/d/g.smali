.class final Lcom/instagram/creation/b/d/g;
.super Ljava/lang/Object;
.source "PendingMediaStoreSerializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/b/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/creation/b/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/instagram/creation/b/d/g;->a:Lcom/instagram/creation/b/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/instagram/creation/b/d/g;->a:Lcom/instagram/creation/b/d/c;

    invoke-static {v0}, Lcom/instagram/creation/b/d/c;->b(Lcom/instagram/creation/b/d/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/b/d/g;->a:Lcom/instagram/creation/b/d/c;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/creation/b/d/c;->a(Lcom/instagram/creation/b/d/c;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 213
    iget-object v0, p0, Lcom/instagram/creation/b/d/g;->a:Lcom/instagram/creation/b/d/c;

    invoke-static {v0}, Lcom/instagram/creation/b/d/c;->c(Lcom/instagram/creation/b/d/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 214
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 216
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/b/d/g;->a:Lcom/instagram/creation/b/d/c;

    invoke-static {v0}, Lcom/instagram/creation/b/d/c;->c(Lcom/instagram/creation/b/d/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
