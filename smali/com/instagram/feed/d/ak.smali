.class public final Lcom/instagram/feed/d/ak;
.super Ljava/lang/Object;
.source "SeenDirectShareRequestManager.java"


# static fields
.field private static a:Lcom/instagram/feed/d/ak;


# instance fields
.field private final b:Lcom/instagram/common/a/a/k;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/feed/d/aj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/instagram/common/a/a/o;

    invoke-direct {v0}, Lcom/instagram/common/a/a/o;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/ak;->b:Lcom/instagram/common/a/a/k;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/ak;->c:Ljava/util/Map;

    .line 46
    return-void
.end method

.method public static a()Lcom/instagram/feed/d/ak;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/instagram/feed/d/ak;->a:Lcom/instagram/feed/d/ak;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/instagram/feed/d/ak;->b()V

    .line 36
    :cond_0
    sget-object v0, Lcom/instagram/feed/d/ak;->a:Lcom/instagram/feed/d/ak;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/instagram/feed/d/aj;)V
    .locals 5
    .parameter

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/instagram/feed/d/ak;->c(Lcom/instagram/feed/d/aj;)V

    .line 86
    invoke-virtual {p1}, Lcom/instagram/feed/d/aj;->h()Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/instagram/feed/d/aj;->j()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->ap()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/instagram/feed/d/aj;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/d/l;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/instagram/feed/d/ak;Lcom/instagram/feed/d/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/instagram/feed/d/ak;->a(Lcom/instagram/feed/d/aj;)V

    return-void
.end method

.method private static declared-synchronized b()V
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/instagram/feed/d/ak;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/feed/d/ak;->a:Lcom/instagram/feed/d/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    monitor-exit v1

    return-void

    .line 41
    :cond_0
    :try_start_1
    new-instance v0, Lcom/instagram/feed/d/ak;

    invoke-direct {v0}, Lcom/instagram/feed/d/ak;-><init>()V

    sput-object v0, Lcom/instagram/feed/d/ak;->a:Lcom/instagram/feed/d/ak;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Lcom/instagram/feed/d/aj;)V
    .locals 3
    .parameter

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/instagram/feed/d/ak;->c(Lcom/instagram/feed/d/aj;)V

    .line 96
    invoke-virtual {p1}, Lcom/instagram/feed/d/aj;->h()Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/instagram/feed/d/ak;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->ap()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/d/l;->b(J)V

    .line 99
    invoke-static {}, Lcom/instagram/feed/d/ak;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/instagram/feed/d/ak;Lcom/instagram/feed/d/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/instagram/feed/d/ak;->b(Lcom/instagram/feed/d/aj;)V

    return-void
.end method

.method private static b(Lcom/instagram/feed/d/l;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ao()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instagram/feed/d/l;->b(J)V

    .line 112
    invoke-static {}, Lcom/instagram/feed/d/ak;->c()V

    .line 113
    return-void
.end method

.method private static c()V
    .locals 1

    .prologue
    .line 116
    const-string v0, "InboxFragment.UPDATE_INBOX"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    .line 117
    return-void
.end method

.method private declared-synchronized c(Lcom/instagram/feed/d/aj;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/feed/d/ak;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/aj;->h()Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/aj;

    .line 105
    if-ne v0, p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/instagram/feed/d/ak;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/aj;->h()Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/instagram/feed/d/l;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->an()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ao()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 57
    new-instance v0, Lcom/instagram/feed/d/aj;

    invoke-direct {v0, p1}, Lcom/instagram/feed/d/aj;-><init>(Lcom/instagram/feed/d/l;)V

    .line 58
    new-instance v1, Lcom/instagram/feed/d/al;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/instagram/feed/d/al;-><init>(Lcom/instagram/feed/d/ak;Lcom/instagram/feed/d/aj;B)V

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/aj;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 59
    iget-object v1, p0, Lcom/instagram/feed/d/ak;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p1}, Lcom/instagram/feed/d/ak;->b(Lcom/instagram/feed/d/l;)V

    .line 61
    iget-object v1, p0, Lcom/instagram/feed/d/ak;->b:Lcom/instagram/common/a/a/k;

    invoke-interface {v1, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/instagram/feed/d/l;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/feed/d/ak;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1, p2, p3}, Lcom/instagram/feed/d/l;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
