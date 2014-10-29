.class public Lcom/facebook/bn;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field static final synthetic a:Z

.field private static h:Lcom/facebook/g/b;


# instance fields
.field private final b:Ljava/net/HttpURLConnection;

.field private final c:Lcom/facebook/h/b;

.field private final d:Lcom/facebook/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/h/g",
            "<",
            "Lcom/facebook/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Lcom/facebook/ac;

.field private final g:Lcom/facebook/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/facebook/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/bn;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/facebook/bn;->g:Lcom/facebook/bc;

    .line 85
    iput-object p2, p0, Lcom/facebook/bn;->b:Ljava/net/HttpURLConnection;

    .line 86
    iput-object v0, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    .line 87
    iput-object v0, p0, Lcom/facebook/bn;->d:Lcom/facebook/h/g;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/bn;->e:Z

    .line 89
    iput-object p3, p0, Lcom/facebook/bn;->f:Lcom/facebook/ac;

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/b;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/facebook/bn;->g:Lcom/facebook/bc;

    .line 66
    iput-object p2, p0, Lcom/facebook/bn;->b:Ljava/net/HttpURLConnection;

    .line 67
    iput-object p3, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    .line 68
    iput-object v0, p0, Lcom/facebook/bn;->d:Lcom/facebook/h/g;

    .line 69
    iput-boolean p4, p0, Lcom/facebook/bn;->e:Z

    .line 70
    iput-object v0, p0, Lcom/facebook/bn;->f:Lcom/facebook/ac;

    .line 71
    return-void
.end method

.method private constructor <init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/g;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bc;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/h/g",
            "<",
            "Lcom/facebook/h/b;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/facebook/bn;->g:Lcom/facebook/bc;

    .line 76
    iput-object p2, p0, Lcom/facebook/bn;->b:Ljava/net/HttpURLConnection;

    .line 77
    iput-object v0, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    .line 78
    iput-object p3, p0, Lcom/facebook/bn;->d:Lcom/facebook/h/g;

    .line 79
    iput-boolean p4, p0, Lcom/facebook/bn;->e:Z

    .line 80
    iput-object v0, p0, Lcom/facebook/bn;->f:Lcom/facebook/ac;

    .line 81
    return-void
.end method

.method private static a(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/bn;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 407
    check-cast p2, Lorg/json/JSONObject;

    .line 409
    invoke-static {p2, p4, p1}, Lcom/facebook/ac;->a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/ac;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_1

    .line 412
    invoke-virtual {v1}, Lcom/facebook/ac;->b()I

    move-result v0

    const/16 v2, 0xbe

    if-ne v0, v2, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/facebook/bc;->a()Lcom/facebook/bo;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Lcom/facebook/bo;->f()V

    .line 418
    :cond_0
    new-instance v0, Lcom/facebook/bn;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    .line 436
    :goto_0
    return-object v0

    .line 421
    :cond_1
    const-string v0, "body"

    const-string v1, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p2, v0, v1}, Lcom/facebook/g/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 424
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/h/c;->a(Lorg/json/JSONObject;)Lcom/facebook/h/b;

    move-result-object v1

    .line 425
    new-instance v0, Lcom/facebook/bn;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/b;Z)V

    goto :goto_0

    .line 426
    :cond_2
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    .line 427
    check-cast v0, Lorg/json/JSONArray;

    const-class v1, Lcom/facebook/h/b;

    invoke-static {v0, v1}, Lcom/facebook/h/c;->a(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/h/g;

    move-result-object v1

    .line 429
    new-instance v0, Lcom/facebook/bn;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/g;Z)V

    goto :goto_0

    .line 432
    :cond_3
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 435
    :cond_4
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, v0, :cond_5

    .line 436
    new-instance v0, Lcom/facebook/bn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/h/b;Z)V

    goto :goto_0

    .line 438
    :cond_5
    new-instance v0, Lcom/facebook/z;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got unexpected object type in response, class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/bl;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {p0}, Lcom/facebook/g/t;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 332
    sget-object v1, Lcom/facebook/ak;->c:Lcom/facebook/ak;

    const-string v2, "Response"

    const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/bn;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/bl;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 344
    invoke-static {p1, p2, v0, p3}, Lcom/facebook/bn;->a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    .line 345
    sget-object v1, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    const-string v2, "Response"

    const-string v3, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/facebook/bl;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    return-object v0
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/facebook/bl;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/bl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 265
    .line 269
    instance-of v0, p1, Lcom/facebook/g/a;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 270
    check-cast v0, Lcom/facebook/g/a;

    .line 271
    invoke-static {}, Lcom/facebook/bn;->d()Lcom/facebook/g/b;

    move-result-object v3

    .line 272
    invoke-virtual {v0}, Lcom/facebook/g/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/facebook/bl;->size()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 276
    invoke-virtual {p1, v5}, Lcom/facebook/bl;->a(I)Lcom/facebook/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/bc;->c()Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/g/a;->j()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 286
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/facebook/g/b;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/facebook/z; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 287
    if-eqz v2, :cond_2

    .line 288
    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_1
    invoke-static {v2, v0, p1, v4}, Lcom/facebook/bn;->a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/facebook/z; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 294
    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    .line 324
    :goto_1
    return-object v0

    .line 278
    :cond_1
    sget-object v4, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    const-string v5, "ResponseCache"

    const-string v6, "Not using cache for cacheable request because no key was specified"

    invoke-static {v4, v5, v6}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_2
    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    .line 301
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_4

    .line 302
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 313
    :cond_3
    :goto_3
    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0}, Lcom/facebook/bn;->a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/bl;Z)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/facebook/z; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    .line 324
    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 294
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_4
    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    .line 295
    goto :goto_2

    .line 294
    :catch_1
    move-exception v0

    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    .line 295
    goto :goto_2

    .line 294
    :catch_2
    move-exception v0

    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    .line 295
    goto :goto_2

    .line 294
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    throw v0

    .line 304
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 305
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 306
    invoke-virtual {v0, v2, v1}, Lcom/facebook/g/b;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/facebook/z; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v1

    goto :goto_3

    .line 314
    :catch_3
    move-exception v0

    .line 315
    :try_start_4
    sget-object v2, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-static {p1, p0, v0}, Lcom/facebook/bn;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/z;)Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 324
    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 317
    :catch_4
    move-exception v0

    .line 318
    :try_start_5
    sget-object v2, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    new-instance v2, Lcom/facebook/z;

    invoke-direct {v2, v0}, Lcom/facebook/z;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/facebook/bn;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/z;)Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 324
    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 320
    :catch_5
    move-exception v0

    .line 321
    :try_start_6
    sget-object v2, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    new-instance v2, Lcom/facebook/z;

    invoke-direct {v2, v0}, Lcom/facebook/z;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/facebook/bn;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/z;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    .line 324
    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/io/Closeable;)V

    throw v0

    .line 294
    :catch_6
    move-exception v0

    move-object v0, v2

    goto/16 :goto_4

    :cond_5
    move-object v0, v3

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto/16 :goto_2

    :cond_6
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_2
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bc;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 353
    sget-boolean v0, Lcom/facebook/bn;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 355
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 356
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    const/4 v0, 0x1

    if-ne v3, v0, :cond_3

    .line 360
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    .line 365
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 366
    const-string v1, "body"

    invoke-virtual {v5, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 368
    :goto_0
    const-string v6, "code"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 371
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :goto_1
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 383
    :cond_1
    new-instance v0, Lcom/facebook/z;

    const-string v1, "Unexpected number of results"

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    .line 384
    throw v0

    .line 367
    :cond_2
    const/16 v1, 0xc8

    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    new-instance v5, Lcom/facebook/bn;

    new-instance v6, Lcom/facebook/ac;

    invoke-direct {v6, p0, v1}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p2

    .line 379
    goto :goto_1

    .line 377
    :catch_1
    move-exception v1

    .line 378
    new-instance v5, Lcom/facebook/bn;

    new-instance v6, Lcom/facebook/ac;

    invoke-direct {v6, p0, v1}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v1, p2

    goto :goto_1

    .line 387
    :cond_4
    check-cast v1, Lorg/json/JSONArray;

    .line 389
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 390
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    .line 392
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 393
    invoke-static {v0, p0, v3, p3, p2}, Lcom/facebook/bn;->a(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/bn;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/facebook/z; {:try_start_1 .. :try_end_1} :catch_3

    .line 389
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 394
    :catch_2
    move-exception v3

    .line 395
    new-instance v5, Lcom/facebook/bn;

    new-instance v6, Lcom/facebook/ac;

    invoke-direct {v6, p0, v3}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 396
    :catch_3
    move-exception v3

    .line 397
    new-instance v5, Lcom/facebook/bn;

    new-instance v6, Lcom/facebook/ac;

    invoke-direct {v6, p0, v3}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v0, p0, v6}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 401
    :cond_5
    return-object v4
.end method

.method static a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/z;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bc;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/z;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 446
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 448
    new-instance v4, Lcom/facebook/bn;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    new-instance v5, Lcom/facebook/ac;

    invoke-direct {v5, p1, p2}, Lcom/facebook/ac;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p1, v5}, Lcom/facebook/bn;-><init>(Lcom/facebook/bc;Ljava/net/HttpURLConnection;Lcom/facebook/ac;)V

    .line 449
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 451
    :cond_0
    return-object v3
.end method

.method private static d()Lcom/facebook/g/b;
    .locals 4

    .prologue
    .line 253
    sget-object v0, Lcom/facebook/bn;->h:Lcom/facebook/g/b;

    if-nez v0, :cond_0

    .line 254
    invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    new-instance v1, Lcom/facebook/g/b;

    const-string v2, "ResponseCache"

    new-instance v3, Lcom/facebook/g/j;

    invoke-direct {v3}, Lcom/facebook/g/j;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/g/j;)V

    sput-object v1, Lcom/facebook/bn;->h:Lcom/facebook/g/b;

    .line 260
    :cond_0
    sget-object v0, Lcom/facebook/bn;->h:Lcom/facebook/g/b;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/ac;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/bn;->f:Lcom/facebook/ac;

    return-object v0
.end method

.method public final b()Lcom/facebook/h/b;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    return-object v0
.end method

.method public final c()Lcom/facebook/h/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/h/b;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    invoke-interface {v0}, Lcom/facebook/h/b;->b()Lcom/facebook/h/b;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    :try_start_0
    const-string v1, "%d"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/bn;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/bn;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{Response:  responseCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bn;->c:Lcom/facebook/h/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bn;->f:Lcom/facebook/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/bn;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    const/16 v0, 0xc8

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    const-string v0, "unknown"

    goto :goto_1
.end method
