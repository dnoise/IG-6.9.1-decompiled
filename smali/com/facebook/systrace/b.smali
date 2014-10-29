.class public final Lcom/facebook/systrace/b;
.super Ljava/lang/Object;
.source "SystraceMetadata.java"


# static fields
.field private static volatile a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/facebook/systrace/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/systrace/d;-><init>(B)V

    invoke-static {v0}, Lcom/facebook/systrace/e;->a(Lcom/facebook/systrace/i;)V

    .line 36
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lcom/facebook/systrace/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 121
    const-string v2, "thread_name"

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    sget-object v2, Lcom/facebook/systrace/b;->a:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_0

    .line 124
    sget-object v2, Lcom/facebook/systrace/b;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 14
    invoke-static {}, Lcom/facebook/systrace/b;->h()V

    return-void
.end method

.method static synthetic d()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 14
    invoke-static {}, Lcom/facebook/systrace/b;->j()V

    return-void
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/facebook/systrace/b;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic g()V
    .locals 0

    .prologue
    .line 14
    invoke-static {}, Lcom/facebook/systrace/b;->l()V

    return-void
.end method

.method private static h()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/systrace/c;

    invoke-direct {v1}, Lcom/facebook/systrace/c;-><init>()V

    const-string v2, "fbsystrace-thread-name-tracer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/facebook/systrace/b;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-static {}, Lcom/facebook/systrace/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "process_name"

    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    const-string v0, "process_labels"

    invoke-static {}, Lcom/facebook/systrace/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static k()Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatUse"
        }
    .end annotation

    .prologue
    .line 94
    const-string v0, "dalvik.vm.heapgrowthlimit"

    invoke-static {v0}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "dalvik.vm.heapmaxfree"

    invoke-static {v1}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v2, "dalvik.vm.heapminfree"

    invoke-static {v2}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v3, "dalvik.vm.heapstartsize"

    invoke-static {v3}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    const-string v4, "dalvik.vm.heaptargetutilization"

    invoke-static {v4}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 102
    const-string v6, "device=%s,heapgrowthlimit=%s,heapstartsize=%s,heapminfree=%s,heapmaxfree=%s,heaptargetutilization=%s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v0, v7, v5

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v1, v7, v0

    const/4 v0, 0x4

    aput-object v2, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static l()V
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Lcom/facebook/systrace/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "TraceExistingThreadsMetadata"

    invoke-static {v0}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;)V

    .line 135
    :try_start_0
    sget-object v0, Lcom/facebook/systrace/b;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v3, "thread_name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v1, v0}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 141
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/systrace/a;->a()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/facebook/systrace/a;->a()V

    goto :goto_0
.end method
