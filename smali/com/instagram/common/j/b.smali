.class public final Lcom/instagram/common/j/b;
.super Ljava/lang/Object;
.source "IgEventBus.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/instagram/common/j/a;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/common/j/e",
            "<+",
            "Lcom/instagram/common/j/a;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/common/j/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/j/b;->a:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/j/b;->b:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/instagram/common/j/c;

    invoke-direct {v0, p0, p1}, Lcom/instagram/common/j/c;-><init>(Lcom/instagram/common/j/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instagram/common/j/b;->c:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/instagram/common/j/b;->b:Ljava/util/List;

    monitor-enter v1

    .line 142
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/instagram/common/j/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    iget-object v0, p0, Lcom/instagram/common/j/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/j/a;

    .line 144
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 147
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/j/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/j/a;

    .line 151
    invoke-direct {p0, v0}, Lcom/instagram/common/j/b;->c(Lcom/instagram/common/j/a;)Z

    goto :goto_1

    .line 153
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/j/b;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/common/j/b;->a()V

    return-void
.end method

.method private c(Lcom/instagram/common/j/a;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EventType::",
            "Lcom/instagram/common/j/a;",
            ">(TEventType;)Z"
        }
    .end annotation

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/instagram/common/j/b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz v1, :cond_3

    .line 164
    monitor-enter v1

    .line 166
    :try_start_1
    invoke-static {v1}, Lcom/instagram/common/j/f;->a(Ljava/util/Collection;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v5

    .line 170
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v2

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/common/j/e;

    .line 172
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    instance-of v3, v2, Lcom/instagram/common/j/d;

    if-eqz v3, :cond_1

    .line 179
    move-object v0, v2

    check-cast v0, Lcom/instagram/common/j/d;

    move-object v3, v0

    .line 182
    invoke-interface {v3, p1}, Lcom/instagram/common/j/d;->a(Lcom/instagram/common/j/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    :cond_1
    invoke-interface {v2, p1}, Lcom/instagram/common/j/e;->b(Lcom/instagram/common/j/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    const/4 v4, 0x1

    .line 189
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 191
    :cond_2
    :try_start_3
    invoke-static {v5}, Lcom/instagram/common/j/f;->a(Ljava/util/ArrayList;)V

    .line 193
    monitor-exit v1

    move v1, v4

    .line 196
    :goto_1
    return v1

    .line 191
    :catchall_1
    move-exception v2

    invoke-static {v5}, Lcom/instagram/common/j/f;->a(Ljava/util/ArrayList;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 193
    :catchall_2
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_3
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EventType::",
            "Lcom/instagram/common/j/a;",
            "Event",
            "ListenerType::Lcom/instagram/common/j/e",
            "<TEventType;>;>(",
            "Ljava/lang/Class",
            "<+TEventType;>;TEvent",
            "ListenerType;",
            ")",
            "Lcom/instagram/common/j/b;"
        }
    .end annotation

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/j/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 58
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/instagram/common/j/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 80
    :goto_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    monitor-exit p0

    return-object p0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/instagram/common/j/a;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EventType::",
            "Lcom/instagram/common/j/a;",
            ">(TEventType;)Z"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/instagram/common/j/b;->c(Lcom/instagram/common/j/a;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized b(Ljava/lang/Class;Lcom/instagram/common/j/e;)Lcom/instagram/common/j/b;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EventType::",
            "Lcom/instagram/common/j/a;",
            "Event",
            "ListenerType::Lcom/instagram/common/j/e",
            "<TEventType;>;>(",
            "Ljava/lang/Class",
            "<+TEventType;>;TEvent",
            "ListenerType;",
            ")",
            "Lcom/instagram/common/j/b;"
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/j/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 98
    if-eqz v0, :cond_1

    .line 99
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/instagram/common/j/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_1
    monitor-exit p0

    return-object p0

    .line 105
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/instagram/common/j/a;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EventType::",
            "Lcom/instagram/common/j/a;",
            ">(TEventType;)V"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v1, p0, Lcom/instagram/common/j/b;->b:Ljava/util/List;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/j/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/instagram/common/j/b;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/instagram/common/j/b;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
