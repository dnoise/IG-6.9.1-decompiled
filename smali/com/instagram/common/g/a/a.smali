.class public final Lcom/instagram/common/g/a/a;
.super Ljava/lang/Object;
.source "CacheAnalytics.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/instagram/common/p/b/a;

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/a/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/a/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/a/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/g/a/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    new-instance v0, Lcom/instagram/common/g/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/common/g/a/b;-><init>(Lcom/instagram/common/g/a/a;)V

    iput-object v0, p0, Lcom/instagram/common/g/a/a;->f:Lcom/instagram/common/p/b/a;

    .line 46
    const-wide/32 v0, -0x927c0

    iput-wide v0, p0, Lcom/instagram/common/g/a/a;->g:J

    .line 49
    iput-object p1, p0, Lcom/instagram/common/g/a/a;->e:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/g/a/a;)J
    .locals 2
    .parameter

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/instagram/common/g/a/a;->g:J

    return-wide v0
.end method

.method static synthetic b(Lcom/instagram/common/g/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/common/g/a/a;->d()V

    return-void
.end method

.method private d()V
    .locals 11

    .prologue
    const-wide/32 v9, 0x100000

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/instagram/common/g/a/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/instagram/common/g/a/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 59
    iget-object v2, p0, Lcom/instagram/common/g/a/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    .line 60
    iget-object v4, p0, Lcom/instagram/common/g/a/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    .line 61
    invoke-static {}, Lcom/instagram/common/y/b/a;->a()Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/instagram/common/g/a/a;->g:J

    .line 63
    if-lez v1, :cond_0

    .line 64
    new-instance v6, Lcom/instagram/common/analytics/b;

    const-string v7, "cache_analytics"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v7, "name"

    iget-object v8, p0, Lcom/instagram/common/g/a/a;->e:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v6

    const-string v7, "hits"

    invoke-virtual {v6, v7, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v6, "total"

    invoke-virtual {v0, v6, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "rInMB"

    div-long/2addr v2, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "wInMB"

    div-long v2, v4, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/instagram/common/p/b/b;->a()Lcom/instagram/common/p/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/g/a/a;->f:Lcom/instagram/common/p/b/a;

    invoke-virtual {v0, v1}, Lcom/instagram/common/p/b/b;->a(Lcom/instagram/common/p/b/a;)V

    .line 54
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/common/g/a/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 76
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/common/g/a/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 80
    return-void
.end method
