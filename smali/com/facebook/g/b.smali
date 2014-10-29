.class public final Lcom/facebook/g/b;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/facebook/g/j;

.field private final e:Ljava/io/File;

.field private f:Z

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/facebook/g/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/g/b;->a:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/g/b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/g/j;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/facebook/g/b;->c:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/facebook/g/b;->d:Lcom/facebook/g/j;

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/g/b;->e:Ljava/io/File;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/g/b;->g:Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/facebook/g/b;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 82
    iget-object v0, p0, Lcom/facebook/g/b;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/g/e;->a(Ljava/io/File;)V

    .line 83
    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/facebook/g/b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/g/b;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/facebook/g/b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/g/b;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/g/b;->a(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 221
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/g/b;->e:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/g/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/facebook/g/b;->b()V

    .line 233
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 123
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/g/b;->e:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/g/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 136
    :try_start_1
    invoke-static {v1}, Lcom/facebook/g/m;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 137
    if-nez v3, :cond_0

    .line 138
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 161
    :goto_0
    return-object v0

    .line 141
    :cond_0
    :try_start_2
    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 143
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .line 146
    :cond_2
    :try_start_3
    const-string v4, "tag"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 148
    if-eqz v3, :cond_3

    .line 150
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .line 153
    :cond_3
    :try_start_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 154
    sget-object v0, Lcom/facebook/ak;->d:Lcom/facebook/ak;

    sget-object v5, Lcom/facebook/g/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Setting lastModified to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    .line 161
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 162
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v0

    .line 129
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/facebook/g/b;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/g/b;->f:Z

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/g/b;->f:Z

    .line 251
    invoke-static {}, Lcom/facebook/cj;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/facebook/g/d;

    invoke-direct {v2, p0}, Lcom/facebook/g/d;-><init>(Lcom/facebook/g/b;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 258
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

.method private c(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/facebook/g/b;->d(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 21

    .prologue
    .line 263
    :try_start_0
    sget-object v1, Lcom/facebook/ak;->d:Lcom/facebook/ak;

    sget-object v2, Lcom/facebook/g/b;->a:Ljava/lang/String;

    const-string v3, "trim started"

    invoke-static {v1, v2, v3}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v8, Ljava/util/PriorityQueue;

    invoke-direct {v8}, Ljava/util/PriorityQueue;-><init>()V

    .line 265
    const-wide/16 v4, 0x0

    .line 266
    const-wide/16 v2, 0x0

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/g/b;->e:Ljava/io/File;

    invoke-static {}, Lcom/facebook/g/e;->a()Ljava/io/FilenameFilter;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    const/4 v1, 0x0

    move/from16 v16, v1

    move-wide/from16 v17, v2

    move-wide/from16 v1, v17

    move-wide/from16 v19, v4

    move-wide/from16 v3, v19

    move/from16 v5, v16

    :goto_0
    if-ge v5, v10, :cond_2

    aget-object v6, v9, v5

    .line 268
    new-instance v7, Lcom/facebook/g/k;

    invoke-direct {v7, v6}, Lcom/facebook/g/k;-><init>(Ljava/io/File;)V

    .line 269
    invoke-virtual {v8, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v11, Lcom/facebook/ak;->d:Lcom/facebook/ak;

    sget-object v12, Lcom/facebook/g/b;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "  trim considering time="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/facebook/g/k;->b()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " name="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/facebook/g/k;->a()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v6, v3

    .line 274
    const-wide/16 v3, 0x1

    add-long v2, v1, v3

    .line 267
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-wide/from16 v16, v2

    move-wide/from16 v1, v16

    move-wide v3, v6

    goto :goto_0

    .line 277
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/g/b;->d:Lcom/facebook/g/j;

    invoke-virtual {v1}, Lcom/facebook/g/j;->a()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/g/b;->d:Lcom/facebook/g/j;

    invoke-virtual {v1}, Lcom/facebook/g/j;->b()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 278
    :cond_0
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/g/k;

    invoke-virtual {v1}, Lcom/facebook/g/k;->a()Ljava/io/File;

    move-result-object v6

    .line 279
    sget-object v1, Lcom/facebook/ak;->d:Lcom/facebook/ak;

    sget-object v7, Lcom/facebook/g/b;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  trim removing "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v7, v9}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    sub-long/2addr v4, v9

    .line 281
    const-wide/16 v9, 0x1

    sub-long v1, v2, v9

    .line 282
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v2, v1

    .line 283
    goto :goto_1

    .line 285
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/g/b;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 286
    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/facebook/g/b;->f:Z

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/g/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 288
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 289
    :catchall_1
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/g/b;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 286
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/facebook/g/b;->f:Z

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/g/b;->g:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 288
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v4, v18

    move-wide/from16 v2, v16

    goto/16 :goto_1
.end method

.method private d(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x5

    .line 172
    iget-object v0, p0, Lcom/facebook/g/b;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/g/e;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create file at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    new-instance v2, Lcom/facebook/g/c;

    invoke-direct {v2, p0, p1, v0}, Lcom/facebook/g/c;-><init>(Lcom/facebook/g/b;Ljava/lang/String;Ljava/io/File;)V

    .line 193
    new-instance v0, Lcom/facebook/g/h;

    invoke-direct {v0, v1, v2}, Lcom/facebook/g/h;-><init>(Ljava/io/OutputStream;Lcom/facebook/g/l;)V

    .line 194
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 199
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 200
    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    const-string v2, "tag"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_1
    invoke-static {v1, v0}, Lcom/facebook/g/m;->a(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    return-object v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    sget-object v1, Lcom/facebook/ak;->d:Lcom/facebook/ak;

    sget-object v2, Lcom/facebook/g/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error creating buffer output stream: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v2, v3}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :catch_1
    move-exception v0

    .line 211
    :try_start_2
    sget-object v2, Lcom/facebook/ak;->d:Lcom/facebook/ak;

    const/4 v3, 0x5

    sget-object v4, Lcom/facebook/g/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error creating JSON header for cache file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/facebook/g/b;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/facebook/g/b;->c(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/facebook/g/i;

    invoke-direct {v1, p2, v0}, Lcom/facebook/g/i;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{FileLruCache: tag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/g/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/g/b;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
