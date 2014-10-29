.class public final Lcom/instagram/m/f;
.super Ljava/lang/Object;
.source "QuickExperimentFileCache.java"

# interfaces
.implements Lcom/instagram/m/e;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/m/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/m/f;->a:Ljava/util/Map;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/m/f;->c:J

    .line 30
    iput-object p1, p0, Lcom/instagram/m/f;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private d()Ljava/io/File;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/m/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/instagram/m/d;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/m/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/m/d;

    return-object v0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/m/f;->d()Ljava/io/File;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const/4 v1, 0x0

    .line 43
    :try_start_0
    sget-object v2, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/instagram/m/g;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/m/h;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    iget-object v2, p0, Lcom/instagram/m/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/instagram/m/h;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48
    invoke-virtual {v0}, Lcom/instagram/m/h;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/instagram/m/f;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :cond_0
    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :try_start_1
    const-string v2, "QuickExperimentFileCache"

    const-string v3, "Unable to find file - not loading cache"

    invoke-static {v2, v3, v0}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    :try_start_2
    const-string v2, "QuickExperimentFileCache"

    const-string v3, "Error while reading file - not loading cache"

    invoke-static {v2, v3, v0}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/instagram/m/f;->c:J

    .line 73
    return-void
.end method

.method public final a(Lcom/instagram/m/d;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/m/f;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/m/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/instagram/m/f;->c:J

    return-wide v0
.end method

.method public final declared-synchronized c()V
    .locals 5

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/m/f;->d()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 84
    :try_start_1
    sget-object v1, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    sget-object v2, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/instagram/m/h;

    iget-object v2, p0, Lcom/instagram/m/f;->a:Ljava/util/Map;

    iget-wide v3, p0, Lcom/instagram/m/f;->c:J

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/m/h;-><init>(Ljava/util/Map;J)V

    invoke-static {v0, v1}, Lcom/instagram/m/g;->a(Lcom/fasterxml/jackson/a/h;Lcom/instagram/m/h;)V

    .line 88
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/h;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_2
    const-string v1, "QuickExperimentFileCache"

    const-string v2, "Error while writing to cache file"

    invoke-static {v1, v2, v0}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/m/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
