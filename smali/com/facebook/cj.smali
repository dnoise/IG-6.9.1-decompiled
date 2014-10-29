.class public final Lcom/facebook/cj;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/ak;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Ljava/util/concurrent/Executor;

.field private static volatile c:Z

.field private static final d:Ljava/lang/Object;

.field private static final e:Landroid/net/Uri;

.field private static final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/ak;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/ak;->e:Lcom/facebook/ak;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/cj;->a:Ljava/util/HashSet;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/cj;->d:Ljava/lang/Object;

    .line 60
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/cj;->e:Landroid/net/Uri;

    .line 70
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/cj;->f:Ljava/util/concurrent/BlockingQueue;

    .line 72
    new-instance v0, Lcom/facebook/ck;

    invoke-direct {v0}, Lcom/facebook/ck;-><init>()V

    sput-object v0, Lcom/facebook/cj;->g:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 365
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 366
    sget-object v1, Lcom/facebook/cj;->e:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-object v3

    .line 370
    :cond_1
    const-string v1, "aid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 9

    .prologue
    .line 162
    sget-object v8, Lcom/facebook/cj;->d:Ljava/lang/Object;

    monitor-enter v8

    .line 163
    :try_start_0
    sget-object v0, Lcom/facebook/cj;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 164
    invoke-static {}, Lcom/facebook/cj;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 165
    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/facebook/cj;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/facebook/cj;->g:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 169
    :cond_0
    sput-object v0, Lcom/facebook/cj;->b:Ljava/util/concurrent/Executor;

    .line 171
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    sget-object v0, Lcom/facebook/cj;->b:Ljava/util/concurrent/Executor;

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-static {p0, p1}, Lcom/facebook/cj;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/bn;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/bn;->a()Lcom/facebook/ac;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a(Lcom/facebook/ak;)Z
    .locals 2
    .parameter

    .prologue
    .line 148
    sget-object v1, Lcom/facebook/cj;->a:Ljava/util/HashSet;

    monitor-enter v1

    .line 149
    :try_start_0
    invoke-static {}, Lcom/instagram/common/s/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/cj;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/bn;
    .locals 14
    .parameter
    .parameter

    .prologue
    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    .line 297
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 298
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Both context and applicationId must be non-null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 355
    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/lang/Exception;)V

    .line 356
    new-instance v0, Lcom/facebook/bn;

    new-instance v3, Lcom/facebook/ac;

    invoke-direct {v3, v1, v2}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v0, v1, v1, v3}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    :goto_0
    return-object v0

    .line 300
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/cj;->a(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 301
    const-string v2, "com.facebook.sdk.attributionTracking"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    const-wide/16 v5, 0x0

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 305
    const/4 v7, 0x0

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 307
    invoke-static {}, Lcom/facebook/h/c;->a()Lcom/facebook/h/b;

    move-result-object v8

    .line 308
    const-string v9, "%s/activities"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 312
    invoke-static {v9, v8}, Lcom/facebook/bc;->a(Ljava/lang/String;Lcom/facebook/h/b;)Lcom/facebook/bc;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 314
    cmp-long v5, v5, v12

    if-eqz v5, :cond_3

    .line 317
    if-eqz v7, :cond_7

    .line 318
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/h/c;->a(Lorg/json/JSONObject;)Lcom/facebook/h/b;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 324
    :goto_2
    if-nez v2, :cond_2

    .line 325
    :try_start_3
    const-string v0, "true"

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/bl;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/facebook/bc;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-direct {v3, v4}, Lcom/facebook/bl;-><init>([Lcom/facebook/bc;)V

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lcom/facebook/bn;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bn;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 327
    :cond_2
    new-instance v0, Lcom/facebook/bn;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/b;Z)V

    goto/16 :goto_0

    .line 329
    :cond_3
    if-nez v0, :cond_4

    .line 330
    new-instance v0, Lcom/facebook/z;

    const-string v2, "No attribution id returned from the Facebook application"

    invoke-direct {v0, v2}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_4
    invoke-static {p1}, Lcom/facebook/g/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 334
    new-instance v0, Lcom/facebook/z;

    const-string v2, "Install attribution has been disabled on the server."

    invoke-direct {v0, v2}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_5
    invoke-virtual {v8}, Lcom/facebook/bc;->b()Lcom/facebook/bn;

    move-result-object v0

    .line 340
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 342
    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-virtual {v0}, Lcom/facebook/bn;->b()Lcom/facebook/h/b;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/facebook/bn;->b()Lcom/facebook/h/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/h/b;->d()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 347
    invoke-virtual {v0}, Lcom/facebook/bn;->b()Lcom/facebook/h/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/h/b;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 272
    sget-boolean v0, Lcom/facebook/cj;->c:Z

    return v0
.end method

.method private static c()Ljava/util/concurrent/Executor;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 189
    :try_start_0
    const-class v0, Landroid/os/AsyncTask;

    const-string v2, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    if-nez v0, :cond_0

    move-object v0, v1

    .line 215
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 200
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 207
    if-nez v0, :cond_1

    move-object v0, v1

    .line 208
    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 211
    :cond_1
    instance-of v2, v0, Ljava/util/concurrent/Executor;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 212
    goto :goto_0

    .line 215
    :cond_2
    check-cast v0, Ljava/util/concurrent/Executor;

    goto :goto_0
.end method
