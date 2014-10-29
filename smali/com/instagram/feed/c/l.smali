.class public final Lcom/instagram/feed/c/l;
.super Ljava/lang/Object;
.source "LowLatencySessionUploadedListener.java"

# interfaces
.implements Lcom/instagram/common/analytics/e;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/feed/c/l;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/instagram/feed/c/l;


# instance fields
.field private final c:Lcom/fasterxml/jackson/a/e;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/lang/Runnable;

.field private f:Lch/boye/httpclientandroidlib/client/HttpClient;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/instagram/feed/c/l;

    sput-object v0, Lcom/instagram/feed/c/l;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/instagram/feed/c/m;

    invoke-direct {v0, p0}, Lcom/instagram/feed/c/m;-><init>(Lcom/instagram/feed/c/l;)V

    iput-object v0, p0, Lcom/instagram/feed/c/l;->e:Ljava/lang/Runnable;

    .line 77
    sget-object v0, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    iput-object v0, p0, Lcom/instagram/feed/c/l;->c:Lcom/fasterxml/jackson/a/e;

    .line 78
    iput-object p1, p0, Lcom/instagram/feed/c/l;->d:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/instagram/feed/c/l;Lch/boye/httpclientandroidlib/client/HttpClient;)Lch/boye/httpclientandroidlib/client/HttpClient;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/instagram/feed/c/l;->f:Lch/boye/httpclientandroidlib/client/HttpClient;

    return-object p1
.end method

.method public static a()Lcom/instagram/feed/c/l;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/instagram/feed/c/l;->b:Lcom/instagram/feed/c/l;

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/instagram/feed/c/l;->d()V

    .line 120
    :cond_0
    sget-object v0, Lcom/instagram/feed/c/l;->b:Lcom/instagram/feed/c/l;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/feed/c/l;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/instagram/feed/c/l;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/feed/c/l;)Lch/boye/httpclientandroidlib/client/HttpClient;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/feed/c/l;->f:Lch/boye/httpclientandroidlib/client/HttpClient;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/instagram/feed/c/l;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/feed/c/l;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/feed/c/l;->d:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/feed/c/l;->g:Ljava/util/List;

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/instagram/feed/c/l;->g:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized d()V
    .locals 3

    .prologue
    .line 130
    const-class v1, Lcom/instagram/feed/c/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/feed/c/l;->b:Lcom/instagram/feed/c/l;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/instagram/feed/c/l;

    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/feed/c/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/feed/c/l;->b:Lcom/instagram/feed/c/l;

    .line 132
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    sget-object v2, Lcom/instagram/feed/c/l;->b:Lcom/instagram/feed/c/l;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit v1

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/instagram/feed/c/l;->c:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 88
    invoke-static {v0}, Lcom/instagram/feed/c/o;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/c/n;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/feed/c/n;->a()Lcom/instagram/feed/c/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/instagram/feed/c/n;->a()Lcom/instagram/feed/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/c/a;->a()Lcom/instagram/feed/c/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/instagram/feed/c/n;->a()Lcom/instagram/feed/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/a;->a()Lcom/instagram/feed/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/c/h;->a()Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/instagram/feed/c/l;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/feed/c/l;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 103
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/c/l;->e:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    :cond_1
    return-void

    .line 97
    :catch_0
    move-exception v0

    sget-object v0, Lcom/instagram/feed/c/l;->a:Ljava/lang/Class;

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/instagram/feed/c/l;->g:Ljava/util/List;

    if-nez v0, :cond_2

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/c/l;->g:Ljava/util/List;

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/instagram/feed/c/l;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
