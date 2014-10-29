.class public final Lcom/c/a/d;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/c/a/a;

.field private final b:Lcom/c/a/f;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/c/a/a;Lcom/c/a/f;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/c/a/d;->a:Lcom/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput-object p2, p0, Lcom/c/a/d;->b:Lcom/c/a/f;

    .line 739
    invoke-static {p2}, Lcom/c/a/f;->e(Lcom/c/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/c/a/d;->c:[Z

    .line 740
    return-void

    .line 739
    :cond_0
    invoke-static {p1}, Lcom/c/a/a;->f(Lcom/c/a/a;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/c/a/a;Lcom/c/a/f;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 731
    invoke-direct {p0, p1, p2}, Lcom/c/a/d;-><init>(Lcom/c/a/a;Lcom/c/a/f;)V

    return-void
.end method

.method static synthetic a(Lcom/c/a/d;)Lcom/c/a/f;
    .locals 1
    .parameter

    .prologue
    .line 731
    iget-object v0, p0, Lcom/c/a/d;->b:Lcom/c/a/f;

    return-object v0
.end method

.method static synthetic b(Lcom/c/a/d;)[Z
    .locals 1
    .parameter

    .prologue
    .line 731
    iget-object v0, p0, Lcom/c/a/d;->c:[Z

    return-object v0
.end method

.method static synthetic c(Lcom/c/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/c/a/d;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/c/a/a;->a(Lcom/c/a/a;Lcom/c/a/d;Z)V

    .line 835
    return-void
.end method

.method static synthetic d(Lcom/c/a/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/d;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 779
    iget-object v2, p0, Lcom/c/a/d;->a:Lcom/c/a/a;

    monitor-enter v2

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/c/a/d;->b:Lcom/c/a/f;

    invoke-static {v0}, Lcom/c/a/f;->b(Lcom/c/a/f;)Lcom/c/a/d;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 783
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/c/a/d;->b:Lcom/c/a/f;

    invoke-static {v0}, Lcom/c/a/f;->e(Lcom/c/a/f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/c/a/d;->c:[Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/c/a/d;->b:Lcom/c/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/c/a/f;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 789
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    .line 800
    :goto_0
    :try_start_3
    new-instance v0, Lcom/c/a/e;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/c/a/e;-><init>(Lcom/c/a/d;Ljava/io/OutputStream;B)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 792
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/a;

    invoke-static {v0}, Lcom/c/a/a;->g(Lcom/c/a/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 794
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v0

    .line 798
    goto :goto_0

    .line 797
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/c/a/a;->b()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 820
    iget-boolean v0, p0, Lcom/c/a/d;->d:Z

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/c/a/a;->a(Lcom/c/a/a;Lcom/c/a/d;Z)V

    .line 822
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/a;

    iget-object v1, p0, Lcom/c/a/d;->b:Lcom/c/a/f;

    invoke-static {v1}, Lcom/c/a/f;->d(Lcom/c/a/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/a/a;->d(Ljava/lang/String;)Z

    .line 826
    :goto_0
    iput-boolean v2, p0, Lcom/c/a/d;->e:Z

    .line 827
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/a;

    invoke-static {v0, p0, v2}, Lcom/c/a/a;->a(Lcom/c/a/a;Lcom/c/a/d;Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/c/a/d;->b:Lcom/c/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/c/a/f;->a(Lcom/c/a/f;Lcom/c/a/d;)Lcom/c/a/d;

    .line 843
    iget-object v0, p0, Lcom/c/a/d;->a:Lcom/c/a/a;

    invoke-static {v0}, Lcom/c/a/a;->h(Lcom/c/a/a;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/d;->b:Lcom/c/a/f;

    invoke-static {v1}, Lcom/c/a/f;->d(Lcom/c/a/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    invoke-direct {p0}, Lcom/c/a/d;->d()V

    .line 845
    return-void
.end method
