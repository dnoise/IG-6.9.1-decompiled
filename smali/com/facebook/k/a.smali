.class public final Lcom/facebook/k/a;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LogUse"
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/k/a;->a:Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/k/a;->b:Z

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/StringBuilder;)Lcom/facebook/k/c;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 273
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-ltz v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already unpacked!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    sget-object v1, Lcom/facebook/k/c;->a:Lcom/facebook/k/c;

    .line 380
    :goto_0
    return-object v1

    .line 285
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unpacking "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    const/4 v1, 0x1

    .line 289
    const-wide/16 v2, -0x1

    .line 291
    :try_start_0
    new-instance v8, Ljava/util/jar/JarFile;

    invoke-direct {v8, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 293
    :try_start_1
    invoke-virtual {v8, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v4

    .line 294
    if-nez v4, :cond_3

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "main file is unavailable, unpacking alternative "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    const-string v4, "Main so file unavailable:"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v8, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v4

    .line 302
    if-nez v4, :cond_3

    .line 303
    const-string v1, "Could not load alternative so file:"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    move-object/from16 v0, p4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "SoLoader"

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v1, Lcom/facebook/k/c;->b:Lcom/facebook/k/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 356
    :try_start_2
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 357
    :catch_0
    move-exception v4

    .line 359
    :try_start_3
    const-string v5, "SoLoader"

    const-string v6, "Failed to close streams!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 375
    :catch_1
    move-exception v1

    .line 365
    :goto_1
    const-string v4, "SoLoader"

    const-string v5, "Failed to unpack library!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const/4 v1, 0x0

    move-wide v3, v2

    .line 376
    :goto_2
    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    .line 377
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->delete()Z

    .line 378
    sget-object v1, Lcom/facebook/k/c;->c:Lcom/facebook/k/c;

    goto/16 :goto_0

    :cond_3
    move-object v5, v4

    .line 311
    :try_start_4
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-wide v3

    .line 312
    :try_start_5
    invoke-static {v3, v4}, Lcom/facebook/k/a;->a(J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 314
    const-string v1, "SoLoader"

    const-string v2, "not enough free space on the device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v1, "not enough free space"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    sget-object v1, Lcom/facebook/k/c;->b:Lcom/facebook/k/c;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 356
    :try_start_6
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 357
    :catch_2
    move-exception v2

    .line 359
    :try_start_7
    const-string v5, "SoLoader"

    const-string v6, "Failed to close streams!"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 375
    :catch_3
    move-exception v1

    move-wide v2, v3

    goto :goto_1

    .line 319
    :cond_4
    :try_start_8
    invoke-virtual {v8, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v5

    .line 321
    const/4 v2, 0x0

    .line 323
    :try_start_9
    const-string v9, "soloader"

    const-string v10, ".tmp"

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 325
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 326
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 328
    const/16 v9, 0x4000

    :try_start_a
    new-array v9, v9, [B

    .line 330
    :cond_5
    const/4 v11, 0x0

    const/16 v12, 0x4000

    invoke-virtual {v5, v9, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 333
    if-lez v11, :cond_6

    .line 334
    const/4 v12, 0x0

    invoke-virtual {v10, v9, v12, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 336
    :cond_6
    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 337
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 339
    :try_start_b
    const-string v9, "Failed to close streams!"

    invoke-static {v10, v9}, Lcom/facebook/k/a;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 346
    const/4 v9, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/io/File;->setExecutable(Z)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 348
    :try_start_c
    const-string v9, "Failed to close streams!"

    invoke-static {v5, v9}, Lcom/facebook/k/a;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 349
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 350
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 353
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setLastModified(J)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 356
    :try_start_d
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_2

    .line 357
    :catch_4
    move-exception v2

    .line 359
    :try_start_e
    const-string v5, "SoLoader"

    const-string v6, "Failed to close streams!"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_2

    .line 369
    :catch_5
    move-exception v1

    move-wide v2, v3

    .line 371
    :goto_3
    const-string v4, "SoLoader"

    const-string v5, "Failed to unpack library (non-io exception)!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const/4 v1, 0x0

    move-wide v3, v2

    goto/16 :goto_2

    .line 339
    :catchall_0
    move-exception v1

    :try_start_f
    const-string v6, "Failed to close streams!"

    invoke-static {v10, v6}, Lcom/facebook/k/a;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 348
    :catchall_1
    move-exception v1

    :try_start_10
    const-string v6, "Failed to close streams!"

    invoke-static {v5, v6}, Lcom/facebook/k/a;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 349
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 350
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_8
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 355
    :catchall_2
    move-exception v1

    move-wide v2, v3

    .line 356
    :goto_4
    :try_start_11
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 361
    :goto_5
    :try_start_12
    throw v1

    .line 369
    :catch_6
    move-exception v1

    goto :goto_3

    .line 357
    :catch_7
    move-exception v4

    .line 359
    const-string v5, "SoLoader"

    const-string v6, "Failed to close streams!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto :goto_5

    .line 380
    :cond_9
    if-eqz v1, :cond_a

    sget-object v1, Lcom/facebook/k/c;->a:Lcom/facebook/k/c;

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lcom/facebook/k/c;->b:Lcom/facebook/k/c;

    goto/16 :goto_0

    .line 355
    :catchall_3
    move-exception v1

    goto :goto_4
.end method

.method private static a()Ljava/io/File;
    .locals 2

    .prologue
    .line 410
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/facebook/k/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 218
    sget v0, Lcom/facebook/k/b;->a:I

    invoke-static {p0, v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;I)Ljava/io/File;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    const-class v5, Lcom/facebook/k/a;

    monitor-enter v5

    :try_start_0
    sget-boolean v0, Lcom/facebook/k/a;->b:Z

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    monitor-exit v5

    return-object v0

    .line 101
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/k/a;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SoLoader.init() must be called before SoLoader use"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 107
    :cond_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-static {}, Lcom/facebook/k/a;->a()Ljava/io/File;

    move-result-object v8

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/facebook/k/a;->b()Ljava/io/File;

    move-result-object v9

    .line 113
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    new-instance v9, Ljava/io/File;

    sget-object v4, Lcom/facebook/k/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-ge v4, v10, :cond_a

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v4, v10, v12

    if-gez v4, :cond_a

    move v4, v3

    .line 131
    :goto_1
    if-nez v4, :cond_9

    .line 132
    sget v4, Lcom/facebook/k/b;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v4, :cond_2

    .line 134
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 144
    :goto_2
    if-eqz v3, :cond_3

    .line 147
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in default place"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "using System.loadLibrary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    .line 138
    goto :goto_2

    .line 140
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    goto :goto_2

    .line 153
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "failed to find "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in default place - extracting from apk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    sget-object v0, Lcom/facebook/k/c;->a:Lcom/facebook/k/c;

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    :goto_3
    const/4 v4, 0x3

    if-ge v2, v4, :cond_6

    .line 161
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 162
    invoke-static {v9, v6, v7, v1, v3}, Lcom/facebook/k/a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/StringBuilder;)Lcom/facebook/k/c;

    move-result-object v0

    .line 169
    sget-object v4, Lcom/facebook/k/c;->b:Lcom/facebook/k/c;

    invoke-virtual {v0, v4}, Lcom/facebook/k/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "failed to unpack from apk: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " Error:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/facebook/k/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 173
    :cond_5
    sget-object v4, Lcom/facebook/k/c;->a:Lcom/facebook/k/c;

    invoke-virtual {v0, v4}, Lcom/facebook/k/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 177
    :cond_6
    sget-object v2, Lcom/facebook/k/c;->a:Lcom/facebook/k/c;

    invoke-virtual {v0, v2}, Lcom/facebook/k/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "failed to unpack from apk (multiple attempts): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/k/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    :cond_7
    sget v0, Lcom/facebook/k/b;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p1, v0, :cond_8

    .line 186
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->load(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 192
    :goto_4
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Loaded from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_5
    move-object v0, v1

    .line 200
    goto/16 :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to load from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 196
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " found at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :cond_9
    move v3, v2

    goto/16 :goto_2

    :cond_a
    move v4, v2

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    sget-object v0, Lcom/facebook/k/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 80
    sput-object p0, Lcom/facebook/k/a;->a:Landroid/content/Context;

    .line 82
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 385
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 388
    const-string v1, "SoLoader"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 244
    const-string v0, "SoLoader"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v0, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 251
    :cond_0
    throw v0
.end method

.method private static a(J)Z
    .locals 5
    .parameter

    .prologue
    .line 401
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/facebook/k/a;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    .line 403
    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Ljava/io/File;
    .locals 3

    .prologue
    .line 417
    sget-object v0, Lcom/facebook/k/a;->a:Landroid/content/Context;

    const-string v1, "libs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 418
    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failure to create app subdir"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    return-object v0
.end method
