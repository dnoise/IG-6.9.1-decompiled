.class public Lcom/instagram/creation/b/d/c;
.super Ljava/lang/Object;
.source "PendingMediaStoreSerializer.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/instagram/creation/b/d/c;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/instagram/common/y/c/d;

.field private final f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Boolean;

.field private j:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/instagram/creation/b/d/c;

    sput-object v0, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->d:Landroid/os/Handler;

    .line 43
    invoke-static {}, Lcom/instagram/common/y/c/e;->a()Lcom/instagram/common/y/c/e;

    move-result-object v0

    const-string v1, "PendingMediaStoreSerializer"

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/y/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/y/c/e;->c()Lcom/instagram/common/y/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->e:Lcom/instagram/common/y/c/d;

    .line 47
    new-instance v0, Lcom/instagram/creation/b/d/d;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/d/d;-><init>(Lcom/instagram/creation/b/d/c;)V

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->f:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->g:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->h:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->i:Ljava/lang/Boolean;

    .line 74
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->e:Lcom/instagram/common/y/c/d;

    new-instance v1, Lcom/instagram/creation/b/d/e;

    invoke-direct {v1, p0}, Lcom/instagram/creation/b/d/e;-><init>(Lcom/instagram/creation/b/d/c;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/d;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public static a()Lcom/instagram/creation/b/d/c;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/instagram/creation/b/d/c;->b:Lcom/instagram/creation/b/d/c;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/instagram/creation/b/d/c;->d()V

    .line 65
    :cond_0
    sget-object v0, Lcom/instagram/creation/b/d/c;->b:Lcom/instagram/creation/b/d/c;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/creation/b/d/c;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/instagram/creation/b/d/c;->i:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/creation/b/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/instagram/creation/b/d/c;->f()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/b/d/c;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/creation/b/d/c;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->h:Ljava/util/List;

    return-object v0
.end method

.method private static declared-synchronized d()V
    .locals 2

    .prologue
    .line 69
    const-class v1, Lcom/instagram/creation/b/d/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/creation/b/d/c;->b:Lcom/instagram/creation/b/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    monitor-exit v1

    return-void

    .line 70
    :cond_0
    :try_start_1
    new-instance v0, Lcom/instagram/creation/b/d/c;

    invoke-direct {v0}, Lcom/instagram/creation/b/d/c;-><init>()V

    sput-object v0, Lcom/instagram/creation/b/d/c;->b:Lcom/instagram/creation/b/d/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 149
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "pending_media.json.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "pending_media.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 154
    if-nez v2, :cond_0

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    const-string v1, "Unable to rename %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "pending_media.json.tmp"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "pending_media.json"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_0
    return-void
.end method

.method private declared-synchronized f()V
    .locals 7

    .prologue
    .line 164
    monitor-enter p0

    const/4 v0, 0x0

    .line 165
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    iget-object v1, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    const-string v3, "pending_media.json"

    invoke-virtual {v1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 169
    :try_start_2
    new-instance v0, Lcom/instagram/creation/b/d/f;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/d/f;-><init>(Lcom/instagram/creation/b/d/c;)V

    .line 172
    invoke-direct {p0}, Lcom/instagram/creation/b/d/c;->g()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 174
    if-eqz v0, :cond_2

    .line 175
    sget-object v3, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading serialized pending media list, size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    .line 180
    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->A()Lcom/instagram/creation/b/a/d;

    move-result-object v4

    sget-object v5, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-virtual {v4, v5}, Lcom/instagram/creation/b/a/d;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_3
    sget-object v1, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 200
    :try_start_4
    invoke-static {v0}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    .line 203
    :goto_2
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/d/a;->a(Ljava/util/List;)V

    .line 205
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->d:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/creation/b/d/g;

    invoke-direct {v1, p0}, Lcom/instagram/creation/b/d/g;-><init>(Lcom/instagram/creation/b/d/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 200
    :cond_2
    :try_start_5
    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 192
    :goto_3
    :try_start_6
    const-string v3, "PendingMediaStoreSerializer"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    const-string v3, "pending_media.json"

    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 200
    :try_start_7
    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 194
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 197
    :goto_4
    :try_start_8
    iget-object v2, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    const-string v3, "pending_media.json"

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 198
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 200
    :catchall_1
    move-exception v0

    :goto_5
    :try_start_9
    invoke-static {v1}, Lcom/instagram/common/l/c/a;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    .line 194
    :catch_3
    move-exception v0

    goto :goto_4

    .line 191
    :catch_4
    move-exception v0

    goto :goto_3

    .line 190
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private g()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->j:Lcom/fasterxml/jackson/databind/ObjectMapper;

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Lcom/instagram/creation/b/b/j;->a()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/d/c;->j:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->j:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    iget-object v1, p0, Lcom/instagram/creation/b/d/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 229
    :goto_0
    monitor-exit v1

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->e:Lcom/instagram/common/y/c/d;

    iget-object v1, p0, Lcom/instagram/creation/b/d/c;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/d;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 5

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    .line 98
    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v3

    sget-object v4, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-eq v3, v4, :cond_0

    .line 99
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    const-string v1, "pending_media.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_1
    monitor-exit p0

    return-void

    .line 110
    :cond_2
    const/4 v1, 0x0

    .line 112
    :try_start_2
    iget-object v0, p0, Lcom/instagram/creation/b/d/c;->c:Landroid/content/Context;

    const-string v3, "pending_media.json.tmp"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 117
    :goto_2
    if-nez v1, :cond_3

    .line 118
    :try_start_3
    sget-object v0, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    const-string v1, "Failed to acquire output stream for pending_media.json.tmp"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    sget-object v3, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    const-string v4, "File not found while getting output stream for pending_media.json.tmp"

    invoke-static {v3, v4, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 123
    :cond_3
    :try_start_4
    sget-object v0, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Serializing "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " entries: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {}, Lcom/instagram/common/s/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    .line 127
    sget-object v4, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 131
    :catch_1
    move-exception v0

    .line 132
    :try_start_5
    sget-object v2, Lcom/instagram/creation/b/d/c;->a:Ljava/lang/Class;

    const-string v3, "Exception while writing out pending_media.json.tmp"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 140
    :goto_4
    :try_start_7
    invoke-direct {p0}, Lcom/instagram/creation/b/d/c;->e()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 130
    :cond_4
    :try_start_8
    invoke-direct {p0}, Lcom/instagram/creation/b/d/c;->g()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 135
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .line 138
    :catch_2
    move-exception v0

    goto :goto_4

    .line 134
    :catchall_1
    move-exception v0

    .line 135
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 137
    :goto_5
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 138
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_5
.end method
