.class Lcom/instagram/common/g/b/r;
.super Ljava/lang/Object;
.source "ImageFetcher.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/common/g/b/r;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private final c:Lcom/instagram/common/g/b/t;

.field private final d:Lcom/instagram/common/g/b/s;

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/instagram/common/g/b/r;

    sput-object v0, Lcom/instagram/common/g/b/r;->a:Ljava/lang/Class;

    .line 32
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 35
    sput-object v0, Lcom/instagram/common/g/b/r;->b:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 36
    sget-object v0, Lcom/instagram/common/g/b/r;->b:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/instagram/common/g/b/t;Lcom/instagram/common/g/b/s;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/instagram/common/g/b/r;->c:Lcom/instagram/common/g/b/t;

    .line 85
    iput-object p2, p0, Lcom/instagram/common/g/b/r;->d:Lcom/instagram/common/g/b/s;

    .line 86
    iput-boolean p3, p0, Lcom/instagram/common/g/b/r;->e:Z

    .line 87
    iput-boolean p4, p0, Lcom/instagram/common/g/b/r;->f:Z

    .line 88
    iput-object p5, p0, Lcom/instagram/common/g/b/r;->g:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/instagram/common/g/b/r;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/g/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/g/b/r;->h:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lcom/instagram/common/g/b/r;->i:Ljava/lang/String;

    .line 91
    iput-object p7, p0, Lcom/instagram/common/g/b/r;->j:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lch/boye/httpclientandroidlib/HttpEntity;Lcom/instagram/common/g/b/f;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 252
    if-nez v1, :cond_1

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_2
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    .line 262
    invoke-virtual {p2}, Lcom/instagram/common/g/b/f;->a()[B

    move-result-object v3

    .line 264
    const/4 v0, 0x0

    .line 265
    :cond_3
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 266
    invoke-virtual {p2, v4}, Lcom/instagram/common/g/b/f;->a(I)V

    .line 267
    iget-boolean v4, p0, Lcom/instagram/common/g/b/r;->f:Z

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    .line 268
    invoke-virtual {p2}, Lcom/instagram/common/g/b/f;->c()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 269
    div-int/lit8 v5, v4, 0xa

    if-le v5, v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/instagram/common/g/b/r;->d:Lcom/instagram/common/g/b/s;

    invoke-interface {v0, v4}, Lcom/instagram/common/g/b/s;->a(I)V

    .line 271
    div-int/lit8 v0, v4, 0xa

    goto :goto_0

    .line 275
    :cond_4
    invoke-virtual {p2}, Lcom/instagram/common/g/b/f;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private static a(Lcom/c/a/g;Lcom/instagram/common/g/b/f;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/c/a/g;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lcom/instagram/common/g/b/f;->a()[B

    move-result-object v1

    .line 231
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 232
    invoke-virtual {p1, v2}, Lcom/instagram/common/g/b/f;->a(I)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/common/g/b/f;->d()V

    .line 237
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/instagram/common/g/b/f;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 166
    :try_start_0
    new-instance v1, Lch/boye/httpclientandroidlib/entity/FileEntity;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "image/jpeg"

    invoke-direct {v1, v0, v3}, Lch/boye/httpclientandroidlib/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    invoke-direct {p0, v1, p2}, Lcom/instagram/common/g/b/r;->a(Lch/boye/httpclientandroidlib/HttpEntity;Lcom/instagram/common/g/b/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :try_start_2
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    :goto_0
    return-void

    .line 169
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 170
    :goto_1
    :try_start_3
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 173
    :goto_2
    throw v0

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 169
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/common/g/b/f;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    const-string v0, "file:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0, p1, p3}, Lcom/instagram/common/g/b/r;->a(Ljava/lang/String;Lcom/instagram/common/g/b/f;)V

    .line 160
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/instagram/common/g/b/r;->b(Ljava/lang/String;Lcom/instagram/common/g/b/f;)V

    .line 161
    return-void

    .line 158
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/instagram/common/g/b/r;->c(Ljava/lang/String;Lcom/instagram/common/g/b/f;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/instagram/common/g/b/f;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 178
    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/instagram/common/g/b/r;->c:Lcom/instagram/common/g/b/t;

    invoke-interface {v1}, Lcom/instagram/common/g/b/t;->b()Lcom/c/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/c/a/a;->c(Ljava/lang/String;)Lcom/c/a/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    :try_start_1
    invoke-virtual {v1}, Lcom/c/a/d;->a()Ljava/io/OutputStream;

    move-result-object v0

    .line 183
    invoke-virtual {p2}, Lcom/instagram/common/g/b/f;->b()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/instagram/common/g/b/f;->c()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 184
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 185
    invoke-virtual {v1}, Lcom/c/a/d;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    sget-object v2, Lcom/instagram/common/g/b/r;->a:Ljava/lang/Class;

    .line 190
    if-eqz v0, :cond_1

    .line 191
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 193
    :cond_1
    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v1}, Lcom/c/a/d;->c()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    sget-object v0, Lcom/instagram/common/g/b/r;->a:Ljava/lang/Class;

    goto :goto_0

    .line 187
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Lcom/instagram/common/g/b/f;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 205
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/instagram/common/g/b/r;->c:Lcom/instagram/common/g/b/t;

    iget-object v3, p0, Lcom/instagram/common/g/b/r;->i:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/instagram/common/g/b/t;->a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/instagram/common/g/b/r;->c:Lcom/instagram/common/g/b/t;

    invoke-interface {v2}, Lcom/instagram/common/g/b/t;->a()Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, v0}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    .line 209
    invoke-direct {p0, v1, p2}, Lcom/instagram/common/g/b/r;->a(Lch/boye/httpclientandroidlib/HttpEntity;Lcom/instagram/common/g/b/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :try_start_1
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :goto_0
    return-void

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    :try_start_2
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 215
    :goto_1
    throw v0

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method final a()Lcom/instagram/common/g/b/d;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-boolean v0, p0, Lcom/instagram/common/g/b/r;->e:Z

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/g/b/r;->c:Lcom/instagram/common/g/b/t;

    invoke-interface {v0}, Lcom/instagram/common/g/b/t;->b()Lcom/c/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/common/g/b/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/c/a/a;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/common/g/b/r;->c:Lcom/instagram/common/g/b/t;

    invoke-interface {v0}, Lcom/instagram/common/g/b/t;->c()Lcom/instagram/common/g/b/e;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/common/g/b/r;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/instagram/common/g/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/b/d;

    .line 104
    if-eqz v0, :cond_2

    .line 150
    :cond_1
    :goto_1
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    sget-object v2, Lcom/instagram/common/g/b/r;->a:Ljava/lang/Class;

    const-string v3, "Error while removing cache entry from persistent storage."

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/instagram/common/g/b/r;->c:Lcom/instagram/common/g/b/t;

    invoke-interface {v0}, Lcom/instagram/common/g/b/t;->d()Lcom/instagram/common/g/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/g/b/g;->a()Lcom/instagram/common/g/b/f;

    move-result-object v3

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/g/b/r;->c:Lcom/instagram/common/g/b/t;

    invoke-interface {v0}, Lcom/instagram/common/g/b/t;->b()Lcom/c/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/common/g/b/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/c/a/a;->b(Ljava/lang/String;)Lcom/c/a/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    :try_start_2
    invoke-static {v2, v3}, Lcom/instagram/common/g/b/r;->a(Lcom/c/a/g;Lcom/instagram/common/g/b/f;)V

    .line 125
    :goto_2
    const-class v4, Lcom/instagram/common/g/b/r;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    :try_start_3
    invoke-virtual {v3}, Lcom/instagram/common/g/b/f;->b()[B

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/instagram/common/g/b/f;->c()I

    move-result v6

    sget-object v7, Lcom/instagram/common/g/b/r;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 128
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    if-eqz v5, :cond_b

    .line 132
    :try_start_4
    new-instance v0, Lcom/instagram/common/g/b/d;

    invoke-virtual {v3}, Lcom/instagram/common/g/b/f;->c()I

    move-result v4

    invoke-direct {v0, v5, v4}, Lcom/instagram/common/g/b/d;-><init>(Landroid/graphics/Bitmap;I)V

    .line 135
    :goto_3
    if-eqz v0, :cond_9

    .line 137
    iget-object v4, p0, Lcom/instagram/common/g/b/r;->c:Lcom/instagram/common/g/b/t;

    invoke-interface {v4}, Lcom/instagram/common/g/b/t;->c()Lcom/instagram/common/g/b/e;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/common/g/b/r;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/instagram/common/g/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 143
    if-eqz v2, :cond_3

    .line 144
    invoke-virtual {v2}, Lcom/c/a/g;->close()V

    .line 146
    :cond_3
    if-eqz v3, :cond_1

    .line 147
    invoke-virtual {v3}, Lcom/instagram/common/g/b/f;->e()V

    goto :goto_1

    .line 116
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/instagram/common/g/b/r;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/instagram/common/g/b/r;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v3}, Lcom/instagram/common/g/b/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/common/g/b/f;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 141
    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_4
    :try_start_6
    sget-object v2, Lcom/instagram/common/g/b/r;->a:Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 143
    if-eqz v0, :cond_5

    .line 144
    invoke-virtual {v0}, Lcom/c/a/g;->close()V

    .line 146
    :cond_5
    if-eqz v3, :cond_6

    .line 147
    invoke-virtual {v3}, Lcom/instagram/common/g/b/f;->e()V

    :cond_6
    :goto_5
    move-object v0, v1

    .line 150
    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v4

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 143
    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v2, :cond_7

    .line 144
    invoke-virtual {v2}, Lcom/c/a/g;->close()V

    .line 146
    :cond_7
    if-eqz v3, :cond_8

    .line 147
    invoke-virtual {v3}, Lcom/instagram/common/g/b/f;->e()V

    :cond_8
    throw v0

    .line 143
    :cond_9
    if-eqz v2, :cond_a

    .line 144
    invoke-virtual {v2}, Lcom/c/a/g;->close()V

    .line 146
    :cond_a
    if-eqz v3, :cond_6

    .line 147
    invoke-virtual {v3}, Lcom/instagram/common/g/b/f;->e()V

    goto :goto_5

    .line 143
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    .line 141
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :cond_b
    move-object v0, v1

    goto :goto_3
.end method
