.class public Lcom/instagram/common/g/b/h;
.super Ljava/lang/Object;
.source "IgImageCache.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/common/g/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/instagram/common/g/b/h;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/os/Handler;

.field private final g:Lcom/instagram/common/g/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/g/b/e",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/common/g/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/common/g/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/instagram/common/g/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/instagram/common/g/a/i;

.field private final m:Lcom/instagram/common/g/b/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/instagram/common/g/b/h;

    sput-object v0, Lcom/instagram/common/g/b/h;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/instagram/common/g/b/e;

    invoke-direct {v0}, Lcom/instagram/common/g/b/e;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/b/h;->g:Lcom/instagram/common/g/b/e;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/b/h;->h:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/b/h;->i:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/b/h;->j:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/b/h;->k:Ljava/util/Deque;

    .line 78
    sget-object v0, Lcom/instagram/common/g/a/g;->a:Lcom/instagram/common/g/a/i;

    iput-object v0, p0, Lcom/instagram/common/g/b/h;->l:Lcom/instagram/common/g/a/i;

    .line 80
    new-instance v0, Lcom/instagram/common/g/b/l;

    invoke-direct {v0, p0, v2}, Lcom/instagram/common/g/b/l;-><init>(Lcom/instagram/common/g/b/h;B)V

    iput-object v0, p0, Lcom/instagram/common/g/b/h;->m:Lcom/instagram/common/g/b/l;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/g/b/h;->c:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/instagram/common/g/b/h;->d:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/instagram/common/g/b/n;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/instagram/common/g/b/n;-><init>(Lcom/instagram/common/g/b/h;Landroid/os/Looper;B)V

    iput-object v0, p0, Lcom/instagram/common/g/b/h;->e:Landroid/os/Handler;

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BitmapDecodingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v1, Lcom/instagram/common/g/b/i;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0, v2}, Lcom/instagram/common/g/b/i;-><init>(Lcom/instagram/common/g/b/h;Landroid/os/Looper;B)V

    iput-object v1, p0, Lcom/instagram/common/g/b/h;->f:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method public static a()Lcom/instagram/common/g/b/h;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/instagram/common/g/b/h;->b:Lcom/instagram/common/g/b/h;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/instagram/common/g/b/h;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Lcom/instagram/common/g/b/h;

    invoke-direct {v0, p0, p1}, Lcom/instagram/common/g/b/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    sput-object v0, Lcom/instagram/common/g/b/h;->b:Lcom/instagram/common/g/b/h;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/common/g/b/h;)Lcom/instagram/common/g/b/l;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->m:Lcom/instagram/common/g/b/l;

    return-object v0
.end method

.method private a(Lcom/instagram/common/g/a/g;Lcom/instagram/common/g/b/c;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 226
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->g:Lcom/instagram/common/g/b/e;

    invoke-virtual {p1}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/common/g/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/b/d;

    .line 228
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p2}, Lcom/instagram/common/g/b/c;->d()Lcom/instagram/common/g/b/k;

    move-result-object v2

    .line 230
    if-nez v2, :cond_0

    move v0, v1

    .line 240
    :goto_0
    return v0

    .line 236
    :cond_0
    iget-object v3, p1, Lcom/instagram/common/g/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/instagram/common/g/b/d;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/instagram/common/g/b/k;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move v0, v1

    .line 237
    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/common/g/b/h;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/common/g/b/h;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->i:Ljava/util/Map;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 244
    iget-object v1, p0, Lcom/instagram/common/g/b/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/instagram/common/g/b/h;->k:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->k:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/b/m;

    .line 247
    iget-object v2, p0, Lcom/instagram/common/g/b/h;->j:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v2, Lcom/instagram/common/g/b/a;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic d(Lcom/instagram/common/g/b/h;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->j:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/common/g/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/instagram/common/g/b/h;->c()V

    return-void
.end method

.method static synthetic f(Lcom/instagram/common/g/b/h;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/common/g/b/h;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/common/g/b/h;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/instagram/common/g/b/h;)Lcom/instagram/common/g/b/e;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->g:Lcom/instagram/common/g/b/e;

    return-object v0
.end method

.method static synthetic j(Lcom/instagram/common/g/b/h;)Lcom/instagram/common/g/a/i;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->l:Lcom/instagram/common/g/a/i;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/g/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->m:Lcom/instagram/common/g/b/l;

    invoke-static {v0, p1}, Lcom/instagram/common/g/b/l;->a(Lcom/instagram/common/g/b/l;Lcom/instagram/common/g/a/c;)V

    .line 272
    return-void
.end method

.method public final a(Lcom/instagram/common/g/a/f;)V
    .locals 1
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->m:Lcom/instagram/common/g/b/l;

    invoke-static {v0, p1}, Lcom/instagram/common/g/b/l;->a(Lcom/instagram/common/g/b/l;Lcom/instagram/common/g/a/f;)V

    .line 258
    return-void
.end method

.method public final a(Lcom/instagram/common/g/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/instagram/common/g/b/h;->l:Lcom/instagram/common/g/a/i;

    .line 265
    return-void
.end method

.method final a(Lcom/instagram/common/g/b/c;)V
    .locals 8
    .parameter

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/instagram/common/g/b/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/instagram/common/g/b/h;->l:Lcom/instagram/common/g/a/i;

    invoke-interface {v1, v0}, Lcom/instagram/common/g/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/g/a/g;

    move-result-object v6

    .line 171
    invoke-virtual {p1}, Lcom/instagram/common/g/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->g:Lcom/instagram/common/g/b/e;

    invoke-virtual {v6}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/g/b/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    invoke-direct {p0, v6, p1}, Lcom/instagram/common/g/b/h;->a(Lcom/instagram/common/g/a/g;Lcom/instagram/common/g/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v7, p0, Lcom/instagram/common/g/b/h;->h:Ljava/lang/Object;

    monitor-enter v7

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->i:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/b/m;

    .line 186
    if-eqz v0, :cond_3

    .line 188
    invoke-static {v0, p1, v6}, Lcom/instagram/common/g/b/m;->a(Lcom/instagram/common/g/b/m;Lcom/instagram/common/g/b/c;Lcom/instagram/common/g/a/g;)V

    .line 190
    iget-object v1, p0, Lcom/instagram/common/g/b/h;->j:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    invoke-virtual {p1}, Lcom/instagram/common/g/b/c;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    sget-object v1, Lcom/instagram/common/g/b/h;->a:Ljava/lang/Class;

    iget-object v1, v6, Lcom/instagram/common/g/a/g;->c:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/instagram/common/g/b/h;->k:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/instagram/common/g/b/h;->k:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 218
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/instagram/common/g/b/h;->c()V

    .line 219
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 198
    :cond_3
    :try_start_1
    invoke-direct {p0, v6, p1}, Lcom/instagram/common/g/b/h;->a(Lcom/instagram/common/g/a/g;Lcom/instagram/common/g/b/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    monitor-exit v7

    goto :goto_0

    .line 203
    :cond_4
    new-instance v0, Lcom/instagram/common/g/b/m;

    iget-object v2, v6, Lcom/instagram/common/g/a/g;->b:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/instagram/common/g/a/g;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/common/g/b/m;-><init>(Lcom/instagram/common/g/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    .line 207
    invoke-static {v0, p1, v6}, Lcom/instagram/common/g/b/m;->a(Lcom/instagram/common/g/b/m;Lcom/instagram/common/g/b/c;Lcom/instagram/common/g/a/g;)V

    .line 209
    iget-object v1, p0, Lcom/instagram/common/g/b/h;->i:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p1}, Lcom/instagram/common/g/b/c;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    iget-object v1, p0, Lcom/instagram/common/g/b/h;->k:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 215
    :cond_5
    iget-object v1, p0, Lcom/instagram/common/g/b/h;->k:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instagram/common/g/b/h;->f:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->m:Lcom/instagram/common/g/b/l;

    invoke-virtual {v0}, Lcom/instagram/common/g/b/l;->b()Lcom/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 135
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t fetch the image on UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/g/b/h;->l:Lcom/instagram/common/g/a/i;

    invoke-interface {v0, p1}, Lcom/instagram/common/g/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/g/a/g;

    move-result-object v4

    .line 140
    new-instance v0, Lcom/instagram/common/g/b/r;

    iget-object v1, p0, Lcom/instagram/common/g/b/h;->m:Lcom/instagram/common/g/b/l;

    invoke-virtual {v4}, Lcom/instagram/common/g/a/g;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/instagram/common/g/a/g;->d:Ljava/lang/String;

    iget-object v7, v4, Lcom/instagram/common/g/a/g;->b:Ljava/lang/String;

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/instagram/common/g/b/r;-><init>(Lcom/instagram/common/g/b/t;Lcom/instagram/common/g/b/s;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/common/g/b/r;->a()Lcom/instagram/common/g/b/d;

    move-result-object v0

    .line 149
    if-nez v0, :cond_1

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0}, Lcom/instagram/common/g/b/d;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    new-instance v0, Lcom/instagram/common/g/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/instagram/common/g/b/c;-><init>(Ljava/lang/String;Lcom/instagram/common/g/b/k;)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/instagram/common/g/b/h;->a(Lcom/instagram/common/g/b/c;)V

    .line 159
    return-void
.end method
