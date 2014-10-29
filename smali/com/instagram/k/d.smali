.class public final Lcom/instagram/k/d;
.super Ljava/lang/Object;
.source "AppStartPerformanceTracer.java"


# static fields
.field private static a:Lcom/instagram/k/d;


# instance fields
.field private b:Lcom/instagram/k/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a()Lcom/instagram/k/d;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/instagram/k/d;->a:Lcom/instagram/k/d;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/instagram/k/d;

    invoke-direct {v0}, Lcom/instagram/k/d;-><init>()V

    sput-object v0, Lcom/instagram/k/d;->a:Lcom/instagram/k/d;

    .line 154
    :cond_0
    sget-object v0, Lcom/instagram/k/d;->a:Lcom/instagram/k/d;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/k/d;)Lcom/instagram/k/f;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/k/d;->b:Lcom/instagram/k/f;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/k/f;JJLjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static/range {p0 .. p5}, Lcom/instagram/k/d;->b(Lcom/instagram/k/f;JJLjava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/k/d;)Lcom/instagram/k/f;
    .locals 1
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/k/d;->b:Lcom/instagram/k/f;

    return-object v0
.end method

.method private static b(Lcom/instagram/k/f;JJLjava/util/List;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/k/f;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v8, 0x0

    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v6, 0x0

    .line 116
    const-wide/16 v4, -0x1

    .line 117
    const-wide/16 v2, -0x1

    .line 119
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v9, v8

    move v8, v7

    move v7, v6

    move-wide v13, v4

    move-wide v5, v13

    move-wide v15, v2

    move-wide v3, v15

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/e/c/g;

    .line 120
    const-string v11, "mainActivityResume"

    invoke-virtual {v2}, Lcom/facebook/e/c/g;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 121
    invoke-virtual {v2}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v5

    sub-long v5, v5, p3

    const-wide/32 v11, 0xf4240

    div-long/2addr v5, v11

    goto :goto_0

    .line 123
    :cond_0
    const-string v11, "feedFetchStart"

    invoke-virtual {v2}, Lcom/facebook/e/c/g;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 124
    const/4 v2, 0x1

    move v7, v2

    goto :goto_0

    .line 125
    :cond_1
    const-string v11, "feedFetchEnd"

    invoke-virtual {v2}, Lcom/facebook/e/c/g;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 126
    const/4 v2, 0x1

    move v8, v2

    goto :goto_0

    .line 127
    :cond_2
    const-string v11, "loadFeedFromDiskCache"

    invoke-virtual {v2}, Lcom/facebook/e/c/g;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 128
    const/4 v4, 0x1

    .line 129
    invoke-virtual {v2}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v2

    sub-long v2, v2, p3

    const-wide/32 v11, 0xf4240

    div-long/2addr v2, v11

    :goto_1
    move v9, v4

    move-wide v13, v2

    move-wide v3, v13

    .line 132
    goto :goto_0

    .line 134
    :cond_3
    new-instance v2, Lcom/instagram/common/analytics/b;

    invoke-static/range {p0 .. p0}, Lcom/instagram/k/f;->b(Lcom/instagram/k/f;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v2, v10, v11}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v10, "init_to_usable_ms"

    move-wide/from16 v0, p1

    invoke-virtual {v2, v10, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v10, "init_to_activity_resume_ms"

    invoke-virtual {v2, v10, v5, v6}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v5, "did_fetch_feed"

    invoke-virtual {v2, v5, v7}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v5, "did_load_feed_from_disk_cache"

    invoke-virtual {v2, v5, v9}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v5, "did_load_feed_from_network"

    invoke-virtual {v2, v5, v8}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v2

    .line 141
    if-eqz v9, :cond_4

    .line 142
    const-string v5, "init_to_load_feed_from_disk_ms"

    invoke-virtual {v2, v5, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    .line 147
    :cond_4
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 148
    return-void

    :cond_5
    move-wide v13, v3

    move-wide v2, v13

    move v4, v9

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/instagram/k/f;)V
    .locals 5
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/k/d;->b:Lcom/instagram/k/f;

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/instagram/k/d;->b:Lcom/instagram/k/f;

    .line 75
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 76
    iget-object v2, p0, Lcom/instagram/k/d;->b:Lcom/instagram/k/f;

    invoke-static {v2}, Lcom/instagram/k/f;->a(Lcom/instagram/k/f;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/e/c/a;->a(Ljava/lang/String;)Lcom/facebook/e/c/a;

    move-result-object v2

    .line 78
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    new-instance v4, Lcom/instagram/k/e;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/instagram/k/e;-><init>(Lcom/instagram/k/d;Lcom/facebook/e/c/a;J)V

    invoke-virtual {v3, v4}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0
.end method
