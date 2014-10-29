.class public final Lcom/facebook/bc;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile m:Ljava/lang/String;


# instance fields
.field private b:Lcom/facebook/bo;

.field private c:Lcom/facebook/aj;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/h/b;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Landroid/os/Bundle;

.field private k:Lcom/facebook/bg;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 123
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/bc;-><init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/aj;Lcom/facebook/bg;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/aj;Lcom/facebook/bg;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/bc;->i:Z

    .line 184
    iput-object p1, p0, Lcom/facebook/bc;->b:Lcom/facebook/bo;

    .line 185
    iput-object p2, p0, Lcom/facebook/bc;->d:Ljava/lang/String;

    .line 186
    iput-object p5, p0, Lcom/facebook/bc;->k:Lcom/facebook/bg;

    .line 188
    invoke-direct {p0, p4}, Lcom/facebook/bc;->a(Lcom/facebook/aj;)V

    .line 190
    if-eqz p3, :cond_1

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    const-string v1, "migration_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    const-string v1, "migration_bundle"

    const-string v2, "fbsdk:20121026"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void

    .line 193
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static a(Lcom/facebook/bo;Lcom/facebook/bh;)Lcom/facebook/bc;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 260
    new-instance v5, Lcom/facebook/bd;

    invoke-direct {v5, p1}, Lcom/facebook/bd;-><init>(Lcom/facebook/bh;)V

    .line 268
    new-instance v0, Lcom/facebook/bc;

    const-string v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/bc;-><init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/aj;Lcom/facebook/bg;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/bc;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 358
    new-instance v0, Lcom/facebook/bc;

    move-object v2, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/bc;-><init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/aj;Lcom/facebook/bg;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/h/b;)Lcom/facebook/bc;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 225
    new-instance v0, Lcom/facebook/bc;

    sget-object v4, Lcom/facebook/aj;->b:Lcom/facebook/aj;

    move-object v2, p0

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/bc;-><init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/aj;Lcom/facebook/bg;)V

    .line 226
    invoke-direct {v0, p1}, Lcom/facebook/bc;->a(Lcom/facebook/h/b;)V

    .line 227
    return-object v0
.end method

.method public static varargs a([Lcom/facebook/bc;)Lcom/facebook/bk;
    .locals 1
    .parameter

    .prologue
    .line 1053
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/bc;->b(Ljava/util/Collection;)Lcom/facebook/bk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/bc;)Lcom/facebook/bn;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 957
    new-array v0, v3, [Lcom/facebook/bc;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/facebook/bc;->b([Lcom/facebook/bc;)Ljava/util/List;

    move-result-object v0

    .line 959
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 960
    :cond_0
    new-instance v0, Lcom/facebook/z;

    const-string v1, "invalid state: expected a single response"

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bn;

    return-object v0
.end method

.method private static a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter

    .prologue
    .line 1263
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1265
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/facebook/bc;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const-string v1, "Content-Type"

    invoke-static {}, Lcom/facebook/bc;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1269
    return-object v0
.end method

.method public static a(Lcom/facebook/bl;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1023
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/g/u;->a(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1025
    :try_start_0
    invoke-static {p0}, Lcom/facebook/bc;->c(Lcom/facebook/bl;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1034
    invoke-static {v0, p0}, Lcom/facebook/bc;->a(Ljava/net/HttpURLConnection;Lcom/facebook/bl;)Ljava/util/List;

    move-result-object v0

    .line 1035
    :goto_0
    return-object v0

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    invoke-virtual {p0}, Lcom/facebook/bl;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/z;

    invoke-direct {v3, v0}, Lcom/facebook/z;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Lcom/facebook/bn;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/z;)Ljava/util/List;

    move-result-object v0

    .line 1030
    invoke-static {p0, v0}, Lcom/facebook/bc;->a(Lcom/facebook/bl;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(Ljava/net/HttpURLConnection;Lcom/facebook/bl;)Ljava/util/List;
    .locals 6
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
    .line 1135
    invoke-static {p0, p1}, Lcom/facebook/bn;->a(Ljava/net/HttpURLConnection;Lcom/facebook/bl;)Ljava/util/List;

    move-result-object v1

    .line 1137
    invoke-static {p0}, Lcom/facebook/g/t;->a(Ljava/net/URLConnection;)V

    .line 1139
    invoke-virtual {p1}, Lcom/facebook/bl;->size()I

    move-result v0

    .line 1140
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1141
    new-instance v2, Lcom/facebook/z;

    const-string v3, "Received %d responses while expecting %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1145
    :cond_0
    invoke-static {p1, v1}, Lcom/facebook/bc;->a(Lcom/facebook/bl;Ljava/util/List;)V

    .line 1149
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1150
    invoke-virtual {p1}, Lcom/facebook/bl;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    .line 1151
    iget-object v4, v0, Lcom/facebook/bc;->b:Lcom/facebook/bo;

    if-eqz v4, :cond_1

    .line 1152
    iget-object v0, v0, Lcom/facebook/bc;->b:Lcom/facebook/bo;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1155
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bo;

    .line 1156
    invoke-virtual {v0}, Lcom/facebook/bo;->i()V

    goto :goto_1

    .line 1159
    :cond_3
    return-object v1
.end method

.method private static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/bc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    new-instance v0, Lcom/facebook/bl;

    invoke-direct {v0, p0}, Lcom/facebook/bl;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/bc;->a(Lcom/facebook/bl;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/os/Bundle;Lcom/facebook/bj;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1553
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1555
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1556
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1557
    invoke-static {v2}, Lcom/facebook/bc;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1558
    invoke-virtual {p1, v0, v2}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1561
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/aj;)V
    .locals 2
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lcom/facebook/bc;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/aj;->a:Lcom/facebook/aj;

    if-eq p1, v0, :cond_0

    .line 486
    new-instance v0, Lcom/facebook/z;

    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/facebook/bc;->c:Lcom/facebook/aj;

    .line 489
    return-void

    .line 488
    :cond_1
    sget-object p1, Lcom/facebook/aj;->a:Lcom/facebook/aj;

    goto :goto_0
.end method

.method private static a(Lcom/facebook/bj;Ljava/util/Collection;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bj;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/bc;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1576
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1577
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    .line 1578
    invoke-direct {v0, v1, p2}, Lcom/facebook/bc;->a(Lorg/json/JSONArray;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1581
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1582
    const-string v1, "batch"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    return-void
.end method

.method private static a(Lcom/facebook/bl;Ljava/net/HttpURLConnection;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1408
    new-instance v3, Lcom/facebook/g/n;

    sget-object v0, Lcom/facebook/ak;->a:Lcom/facebook/ak;

    const-string v4, "Request"

    invoke-direct {v3, v0, v4}, Lcom/facebook/g/n;-><init>(Lcom/facebook/ak;Ljava/lang/String;)V

    .line 1410
    invoke-virtual {p0}, Lcom/facebook/bl;->size()I

    move-result v4

    .line 1412
    if-ne v4, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/facebook/bl;->a(I)Lcom/facebook/bc;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/bc;->c:Lcom/facebook/aj;

    .line 1413
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/aj;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    .line 1416
    const-string v6, "Request:\n"

    invoke-virtual {v3, v6}, Lcom/facebook/g/n;->b(Ljava/lang/String;)V

    .line 1417
    const-string v6, "Id"

    invoke-virtual {p0}, Lcom/facebook/bl;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1418
    const-string v6, "URL"

    invoke-virtual {v3, v6, v5}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1419
    const-string v6, "Method"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1420
    const-string v6, "User-Agent"

    const-string v7, "User-Agent"

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1421
    const-string v6, "Content-Type"

    const-string v7, "Content-Type"

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1423
    invoke-virtual {p0}, Lcom/facebook/bl;->a()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1424
    invoke-virtual {p0}, Lcom/facebook/bl;->a()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1428
    sget-object v6, Lcom/facebook/aj;->b:Lcom/facebook/aj;

    if-ne v0, v6, :cond_1

    move v0, v1

    .line 1429
    :goto_1
    if-nez v0, :cond_2

    .line 1430
    invoke-virtual {v3}, Lcom/facebook/g/n;->a()V

    .line 1474
    :goto_2
    return-void

    .line 1412
    :cond_0
    sget-object v0, Lcom/facebook/aj;->b:Lcom/facebook/aj;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1428
    goto :goto_1

    .line 1434
    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1436
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1438
    :try_start_0
    new-instance v0, Lcom/facebook/bj;

    invoke-direct {v0, v2, v3}, Lcom/facebook/bj;-><init>(Ljava/io/BufferedOutputStream;Lcom/facebook/g/n;)V

    .line 1440
    if-ne v4, v1, :cond_4

    .line 1441
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/bl;->a(I)Lcom/facebook/bc;

    move-result-object v1

    .line 1443
    const-string v4, "  Parameters:\n"

    invoke-virtual {v3, v4}, Lcom/facebook/g/n;->b(Ljava/lang/String;)V

    .line 1444
    iget-object v4, v1, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    invoke-static {v4, v0}, Lcom/facebook/bc;->a(Landroid/os/Bundle;Lcom/facebook/bj;)V

    .line 1446
    const-string v4, "  Attachments:\n"

    invoke-virtual {v3, v4}, Lcom/facebook/g/n;->b(Ljava/lang/String;)V

    .line 1447
    iget-object v4, v1, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    invoke-static {v4, v0}, Lcom/facebook/bc;->b(Landroid/os/Bundle;Lcom/facebook/bj;)V

    .line 1449
    iget-object v4, v1, Lcom/facebook/bc;->e:Lcom/facebook/h/b;

    if-eqz v4, :cond_3

    .line 1450
    iget-object v1, v1, Lcom/facebook/bc;->e:Lcom/facebook/h/b;

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/facebook/bc;->a(Lcom/facebook/h/b;Ljava/lang/String;Lcom/facebook/bi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    :cond_3
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 1473
    invoke-virtual {v3}, Lcom/facebook/g/n;->a()V

    goto :goto_2

    .line 1453
    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/facebook/bc;->d(Lcom/facebook/bl;)Ljava/lang/String;

    move-result-object v1

    .line 1454
    invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1455
    new-instance v0, Lcom/facebook/z;

    const-string v1, "At least one request in a batch must have an open Session, or a default app ID must be specified."

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1470
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw v0

    .line 1459
    :cond_5
    :try_start_2
    const-string v4, "batch_app_id"

    invoke-virtual {v0, v4, v1}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1464
    invoke-static {v0, p0, v1}, Lcom/facebook/bc;->a(Lcom/facebook/bj;Ljava/util/Collection;Landroid/os/Bundle;)V

    .line 1466
    const-string v4, "  Attachments:\n"

    invoke-virtual {v3, v4}, Lcom/facebook/g/n;->b(Ljava/lang/String;)V

    .line 1467
    invoke-static {v1, v0}, Lcom/facebook/bc;->b(Landroid/os/Bundle;Lcom/facebook/bj;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static a(Lcom/facebook/bl;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bl;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/facebook/bl;->size()I

    move-result v1

    .line 1228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1230
    invoke-virtual {p0, v0}, Lcom/facebook/bl;->a(I)Lcom/facebook/bc;

    move-result-object v3

    .line 1231
    iget-object v4, v3, Lcom/facebook/bc;->k:Lcom/facebook/bg;

    if-eqz v4, :cond_0

    .line 1232
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/facebook/bc;->k:Lcom/facebook/bg;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1236
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1237
    new-instance v0, Lcom/facebook/be;

    invoke-direct {v0, v2, p0}, Lcom/facebook/be;-><init>(Ljava/util/ArrayList;Lcom/facebook/bl;)V

    .line 1250
    invoke-virtual {p0}, Lcom/facebook/bl;->c()Landroid/os/Handler;

    move-result-object v1

    .line 1251
    if-nez v1, :cond_3

    .line 1253
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1259
    :cond_2
    :goto_1
    return-void

    .line 1256
    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private a(Lcom/facebook/h/b;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/facebook/bc;->e:Lcom/facebook/h/b;

    .line 448
    return-void
.end method

.method private static a(Lcom/facebook/h/b;Ljava/lang/String;Lcom/facebook/bi;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1484
    .line 1485
    const-string v0, "me/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/me/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1486
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1487
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1488
    const/4 v4, 0x3

    if-le v0, v4, :cond_2

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ge v0, v1, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    move v4, v0

    .line 1491
    :goto_1
    invoke-interface {p0}, Lcom/facebook/h/b;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1492
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 1493
    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v5, v2

    .line 1494
    :goto_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2, v5}, Lcom/facebook/bc;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/bi;Z)V

    goto :goto_2

    :cond_2
    move v0, v3

    .line 1488
    goto :goto_0

    :cond_3
    move v5, v3

    .line 1493
    goto :goto_3

    .line 1496
    :cond_4
    return-void

    :cond_5
    move v4, v3

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/bi;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1501
    const-class v1, Lcom/facebook/h/b;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1502
    check-cast p1, Lcom/facebook/h/b;

    invoke-interface {p1}, Lcom/facebook/h/b;->d()Lorg/json/JSONObject;

    move-result-object p1

    .line 1503
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    .line 1509
    :goto_0
    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1510
    check-cast v0, Lorg/json/JSONObject;

    .line 1511
    if-eqz p3, :cond_1

    .line 1514
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1515
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1516
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1517
    const-string v4, "%s[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1518
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1, p2, p3}, Lcom/facebook/bc;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/bi;Z)V

    goto :goto_1

    .line 1504
    :cond_0
    const-class v1, Lcom/facebook/h/g;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1505
    check-cast p1, Lcom/facebook/h/g;

    invoke-interface {p1}, Lcom/facebook/h/g;->a()Lorg/json/JSONArray;

    move-result-object p1

    .line 1506
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 1523
    :cond_1
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1524
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/facebook/bc;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/bi;Z)V

    .line 1550
    :cond_2
    :goto_2
    return-void

    .line 1525
    :cond_3
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1526
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/facebook/bc;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/bi;Z)V

    goto :goto_2

    .line 1529
    :cond_4
    const-class v3, Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1530
    check-cast v0, Lorg/json/JSONArray;

    .line 1531
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v2

    .line 1532
    :goto_3
    if-ge v1, v3, :cond_2

    .line 1533
    const-string v4, "%s[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1534
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, p2, p3}, Lcom/facebook/bc;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/bi;Z)V

    .line 1532
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1536
    :cond_5
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1539
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/bi;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1540
    :cond_7
    const-class v2, Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1541
    check-cast v0, Ljava/util/Date;

    .line 1547
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1548
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/bi;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONArray;Landroid/os/Bundle;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1348
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1350
    iget-object v0, p0, Lcom/facebook/bc;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1351
    const-string v0, "name"

    iget-object v2, p0, Lcom/facebook/bc;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1352
    const-string v0, "omit_response_on_success"

    iget-boolean v2, p0, Lcom/facebook/bc;->i:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/facebook/bc;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1355
    const-string v0, "depends_on"

    iget-object v2, p0, Lcom/facebook/bc;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1358
    :cond_1
    invoke-direct {p0}, Lcom/facebook/bc;->e()Ljava/lang/String;

    move-result-object v2

    .line 1359
    const-string v0, "relative_url"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1360
    const-string v0, "method"

    iget-object v3, p0, Lcom/facebook/bc;->c:Lcom/facebook/aj;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1361
    iget-object v0, p0, Lcom/facebook/bc;->b:Lcom/facebook/bo;

    if-eqz v0, :cond_2

    .line 1362
    iget-object v0, p0, Lcom/facebook/bc;->b:Lcom/facebook/bo;

    invoke-virtual {v0}, Lcom/facebook/bo;->d()Ljava/lang/String;

    move-result-object v0

    .line 1363
    invoke-static {v0}, Lcom/facebook/g/n;->a(Ljava/lang/String;)V

    .line 1367
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    iget-object v0, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1369
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1370
    iget-object v5, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1371
    invoke-static {v0}, Lcom/facebook/bc;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1373
    const-string v5, "%s%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "file"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1374
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    invoke-static {p2, v5, v0}, Lcom/facebook/g/t;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1379
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1380
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1381
    const-string v3, "attached_files"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1384
    :cond_5
    iget-object v0, p0, Lcom/facebook/bc;->e:Lcom/facebook/h/b;

    if-eqz v0, :cond_6

    .line 1386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    iget-object v3, p0, Lcom/facebook/bc;->e:Lcom/facebook/h/b;

    new-instance v4, Lcom/facebook/bf;

    invoke-direct {v4, p0, v0}, Lcom/facebook/bf;-><init>(Lcom/facebook/bc;Ljava/util/ArrayList;)V

    invoke-static {v3, v2, v4}, Lcom/facebook/bc;->a(Lcom/facebook/h/b;Ljava/lang/String;Lcom/facebook/bi;)V

    .line 1393
    const-string v2, "&"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1397
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1398
    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-static {p0}, Lcom/facebook/bc;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Lcom/facebook/bl;)Lcom/facebook/bk;
    .locals 1
    .parameter

    .prologue
    .line 1091
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/g/u;->a(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1093
    new-instance v0, Lcom/facebook/bk;

    invoke-direct {v0, p0}, Lcom/facebook/bk;-><init>(Lcom/facebook/bl;)V

    .line 1094
    invoke-virtual {v0}, Lcom/facebook/bk;->a()Lcom/facebook/bk;

    .line 1095
    return-object v0
.end method

.method private static b(Ljava/util/Collection;)Lcom/facebook/bk;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/bc;",
            ">;)",
            "Lcom/facebook/bk;"
        }
    .end annotation

    .prologue
    .line 1073
    new-instance v0, Lcom/facebook/bl;

    invoke-direct {v0, p0}, Lcom/facebook/bl;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/bc;->b(Lcom/facebook/bl;)Lcom/facebook/bk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-static {p0}, Lcom/facebook/bc;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1288
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1290
    iget-object v0, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1291
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1292
    iget-object v1, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1294
    if-nez v1, :cond_1

    .line 1295
    const-string v1, ""

    .line 1298
    :cond_1
    invoke-static {v1}, Lcom/facebook/bc;->d(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1299
    invoke-static {v1}, Lcom/facebook/bc;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1308
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1301
    :cond_2
    iget-object v0, p0, Lcom/facebook/bc;->c:Lcom/facebook/aj;

    sget-object v4, Lcom/facebook/aj;->a:Lcom/facebook/aj;

    if-ne v0, v4, :cond_0

    .line 1302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported parameter type for GET request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1311
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs b([Lcom/facebook/bc;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/bc;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 983
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/bc;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/os/Bundle;Lcom/facebook/bj;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1564
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1566
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1567
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1568
    invoke-static {v2}, Lcom/facebook/bc;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1569
    invoke-virtual {p1, v0, v2}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1572
    :cond_1
    return-void
.end method

.method private static c(Lcom/facebook/bl;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/facebook/bl;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    .line 910
    invoke-direct {v0}, Lcom/facebook/bc;->f()V

    goto :goto_0

    .line 913
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/bl;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 917
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/bl;->a(I)Lcom/facebook/bc;

    move-result-object v1

    .line 919
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/facebook/bc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_1
    :try_start_1
    invoke-static {v0}, Lcom/facebook/bc;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 933
    invoke-static {p0, v0}, Lcom/facebook/bc;->a(Lcom/facebook/bl;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 940
    return-object v0

    .line 923
    :cond_1
    :try_start_2
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://graph.facebook.com"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 925
    :catch_0
    move-exception v0

    .line 926
    new-instance v1, Lcom/facebook/z;

    const-string v2, "could not construct URL for request"

    invoke-direct {v1, v2, v0}, Lcom/facebook/z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 934
    :catch_1
    move-exception v0

    .line 935
    new-instance v1, Lcom/facebook/z;

    const-string v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/facebook/z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 936
    :catch_2
    move-exception v0

    .line 937
    new-instance v1, Lcom/facebook/z;

    const-string v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/facebook/z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1628
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/facebook/bl;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1600
    invoke-virtual {p0}, Lcom/facebook/bl;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1601
    invoke-virtual {p0}, Lcom/facebook/bl;->f()Ljava/lang/String;

    move-result-object v0

    .line 1610
    :goto_0
    return-object v0

    .line 1604
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/bl;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bc;

    .line 1605
    iget-object v0, v0, Lcom/facebook/bc;->b:Lcom/facebook/bo;

    .line 1606
    if-eqz v0, :cond_1

    .line 1607
    invoke-virtual {v0}, Lcom/facebook/bo;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1610
    :cond_2
    sget-object v0, Lcom/facebook/bc;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/facebook/bc;->b:Lcom/facebook/bo;

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/facebook/bc;->b:Lcom/facebook/bo;

    invoke-virtual {v0}, Lcom/facebook/bo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1276
    new-instance v0, Lcom/facebook/z;

    const-string v1, "Session provided to a Request in un-opened state."

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/facebook/bc;->b:Lcom/facebook/bo;

    invoke-virtual {v0}, Lcom/facebook/bo;->d()Ljava/lang/String;

    move-result-object v0

    .line 1279
    invoke-static {v0}, Lcom/facebook/g/n;->a(Ljava/lang/String;)V

    .line 1280
    iget-object v1, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    :cond_1
    iget-object v0, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    return-void
.end method

.method private static d(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1632
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/facebook/bc;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1316
    new-instance v0, Lcom/facebook/z;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/facebook/bc;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/bc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1326
    :goto_0
    invoke-direct {p0}, Lcom/facebook/bc;->d()V

    .line 1327
    invoke-direct {p0, v0}, Lcom/facebook/bc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/facebook/bc;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private static e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1637
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1638
    check-cast p0, Ljava/lang/String;

    .line 1643
    :goto_0
    return-object p0

    .line 1639
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 1640
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1641
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 1642
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1643
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1645
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/facebook/bc;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/bc;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one of a graph path or REST method may be specified per request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1404
    :cond_0
    return-void
.end method

.method private static g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1586
    const-string v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1592
    sget-object v0, Lcom/facebook/bc;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1593
    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FBAndroidSDK"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3.0.2"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/bc;->m:Ljava/lang/String;

    .line 1596
    :cond_0
    sget-object v0, Lcom/facebook/bc;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/bo;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/facebook/bc;->b:Lcom/facebook/bo;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    .line 508
    return-void
.end method

.method public final a(Lcom/facebook/bg;)V
    .locals 0
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/facebook/bc;->k:Lcom/facebook/bg;

    .line 658
    return-void
.end method

.method public final b()Lcom/facebook/bn;
    .locals 1

    .prologue
    .line 839
    invoke-static {p0}, Lcom/facebook/bc;->a(Lcom/facebook/bc;)Lcom/facebook/bn;

    move-result-object v0

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/facebook/bc;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/facebook/bc;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1343
    :goto_0
    return-object v0

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/facebook/bc;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.facebook.com/method/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/bc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    :goto_1
    invoke-direct {p0}, Lcom/facebook/bc;->d()V

    .line 1343
    invoke-direct {p0, v0}, Lcom/facebook/bc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1339
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://graph.facebook.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/bc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Request:  session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/bc;->b:Lcom/facebook/bo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bc;->e:Lcom/facebook/h/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bc;->c:Lcom/facebook/aj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bc;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
