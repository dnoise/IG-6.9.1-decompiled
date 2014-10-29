.class final Lcom/instagram/creation/b/c/c;
.super Ljava/lang/Object;
.source "PendingMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/b/c/a;

.field private final b:I

.field private final c:Lcom/instagram/creation/b/a/b;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p2, p0, Lcom/instagram/creation/b/c/c;->b:I

    .line 103
    iput-object p3, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/b/c/c;)Lcom/instagram/creation/b/a/b;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 109
    :try_start_0
    iget v0, p0, Lcom/instagram/creation/b/c/c;->b:I

    if-ne v0, v1, :cond_1

    .line 110
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    iget-object v3, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/creation/b/d/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    :goto_0
    invoke-static {}, Lcom/instagram/creation/b/c/a;->d()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V

    .line 117
    iget-object v3, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    monitor-enter v3

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    invoke-static {v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    invoke-static {v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/c/c;

    .line 124
    iget-object v5, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    iget-object v0, v0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v5, v0, :cond_5

    move v0, v1

    :goto_2
    move v2, v0

    .line 127
    goto :goto_1

    .line 111
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/instagram/creation/b/c/c;->b:I

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    iget-object v3, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    invoke-static {v0, v3}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/a;Lcom/instagram/creation/b/a/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-static {}, Lcom/instagram/creation/b/c/a;->d()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V

    .line 117
    iget-object v4, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    monitor-enter v4

    .line 118
    :try_start_3
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    invoke-static {v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    invoke-static {v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/c/c;

    .line 124
    iget-object v6, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    iget-object v0, v0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v6, v0, :cond_4

    move v0, v1

    :goto_4
    move v2, v0

    .line 127
    goto :goto_3

    .line 128
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/b;->g(Z)V

    .line 129
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 128
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/b;->g(Z)V

    .line 129
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_2
.end method
