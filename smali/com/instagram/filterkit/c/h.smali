.class final Lcom/instagram/filterkit/c/h;
.super Ljava/lang/Thread;
.source "SingleThreadRenderManager.java"


# instance fields
.field final synthetic a:Lcom/instagram/filterkit/c/e;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/instagram/filterkit/c/e;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    .line 129
    const-string v0, "RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/filterkit/c/h;->b:Z

    .line 130
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 175
    :cond_0
    monitor-enter p0

    .line 176
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/filterkit/c/h;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->g(Lcom/instagram/filterkit/c/e;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/instagram/filterkit/c/h;->b:Z

    .line 182
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->h(Lcom/instagram/filterkit/c/e;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->g(Lcom/instagram/filterkit/c/e;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->g(Lcom/instagram/filterkit/c/e;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/c/d;

    invoke-interface {v0}, Lcom/instagram/filterkit/c/d;->a()V

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/instagram/filterkit/c/h;)Z
    .locals 1
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/filterkit/c/h;->b:Z

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Lcom/instagram/filterkit/c/e;->e()Ljava/lang/Class;

    .line 138
    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/filterkit/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    invoke-static {}, Lcom/instagram/filterkit/c/e;->e()Ljava/lang/Class;

    .line 140
    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v1}, Lcom/instagram/filterkit/c/e;->b(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/a/b;->a(Lcom/instagram/filterkit/a/c;)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->c(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/e/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    iget-object v1, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v1}, Lcom/instagram/filterkit/c/e;->d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/filterkit/c/b;->a()Lcom/instagram/filterkit/e/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;Lcom/instagram/filterkit/e/a;)Lcom/instagram/filterkit/e/a;

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/instagram/filterkit/c/h;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/filterkit/c/b;->c()V

    .line 153
    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/filterkit/a/b;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->e(Lcom/instagram/filterkit/c/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    invoke-static {}, Lcom/instagram/filterkit/c/e;->e()Ljava/lang/Class;

    .line 170
    :goto_2
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/filterkit/a/b;->d()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in render thread"

    invoke-static {v1, v2, v0}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    invoke-static {}, Lcom/instagram/filterkit/c/e;->e()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Error in the render thread"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    iget-object v1, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v1}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/filterkit/a/b;->e()V

    .line 167
    iget-object v1, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v1}, Lcom/instagram/filterkit/c/e;->f(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/h;

    .line 168
    iget-object v1, p0, Lcom/instagram/filterkit/c/h;->a:Lcom/instagram/filterkit/c/e;

    invoke-static {v1}, Lcom/instagram/filterkit/c/e;->d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/filterkit/c/b;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 154
    :catch_1
    move-exception v0

    .line 155
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error while destroying callback"

    invoke-static {v1, v2, v0}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    invoke-static {}, Lcom/instagram/filterkit/c/e;->e()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Error while destroying callback"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
