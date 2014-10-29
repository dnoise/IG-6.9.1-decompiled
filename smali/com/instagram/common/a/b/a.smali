.class public Lcom/instagram/common/a/b/a;
.super Ljava/lang/Object;
.source "ApiHttpClient.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/instagram/common/a/b/a;

.field private static c:Lcom/instagram/common/a/b/c;


# instance fields
.field private final d:Lch/boye/httpclientandroidlib/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/instagram/common/a/b/a;

    sput-object v0, Lcom/instagram/common/a/b/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/instagram/common/a/b/a;->c:Lcom/instagram/common/a/b/c;

    invoke-interface {v0}, Lcom/instagram/common/a/b/c;->a()Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/a/b/a;->d:Lch/boye/httpclientandroidlib/client/HttpClient;

    .line 63
    return-void
.end method

.method private a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 3
    .parameter

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/a/b/a;->d:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_0

    .line 90
    const-string v1, "network_request"

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->abort()V

    .line 94
    sget-object v1, Lcom/instagram/common/a/b/a;->a:Ljava/lang/Class;

    const-string v2, "Send request failed"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lcom/instagram/common/a/b/a;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/instagram/common/a/b/a;->b:Lcom/instagram/common/a/b/a;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/instagram/common/a/b/a;->c()V

    .line 47
    :cond_0
    sget-object v0, Lcom/instagram/common/a/b/a;->b:Lcom/instagram/common/a/b/a;

    return-object v0
.end method

.method private static a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    .line 173
    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public static a(Lcom/instagram/common/a/b/c;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    sput-object p0, Lcom/instagram/common/a/b/a;->c:Lcom/instagram/common/a/b/c;

    .line 41
    return-void
.end method

.method private static b(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 106
    new-instance v2, Lch/boye/httpclientandroidlib/client/methods/HttpPost;

    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->g_()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->a()Lcom/instagram/common/a/c/b;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Lcom/instagram/common/a/c/b;->d()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    .line 112
    instance-of v0, v1, Lcom/instagram/common/a/f/e;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, v1

    .line 113
    check-cast v0, Lcom/instagram/common/a/f/e;

    invoke-interface {v0, p1}, Lcom/instagram/common/a/f/e;->a(Lcom/instagram/common/a/f/j;)V

    .line 118
    :cond_0
    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpPost;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 121
    :cond_1
    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->l()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Ljava/util/List;)V

    .line 123
    return-object v2

    .line 114
    :cond_2
    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can only listen to multi-part uploads"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lcom/instagram/common/a/d/a;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 127
    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->g_()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->a()Lcom/instagram/common/a/c/b;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/instagram/common/a/c/b;->a()I

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/instagram/common/a/c/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_0
    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/common/a/b/a;->b:Lcom/instagram/common/a/b/a;

    .line 52
    return-void
.end method

.method private static c(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 3
    .parameter

    .prologue
    .line 143
    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->l()Ljava/util/List;

    move-result-object v0

    .line 145
    new-instance v1, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-static {p0}, Lcom/instagram/common/a/b/a;->b(Lcom/instagram/common/a/d/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v1, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Ljava/util/List;)V

    .line 147
    return-object v1
.end method

.method private static declared-synchronized c()V
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/instagram/common/a/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/common/a/b/a;->b:Lcom/instagram/common/a/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    monitor-exit v1

    return-void

    .line 57
    :cond_0
    :try_start_1
    sget-object v0, Lcom/instagram/common/a/b/a;->a:Ljava/lang/Class;

    .line 58
    new-instance v0, Lcom/instagram/common/a/b/a;

    invoke-direct {v0}, Lcom/instagram/common/a/b/a;-><init>()V

    sput-object v0, Lcom/instagram/common/a/b/a;->b:Lcom/instagram/common/a/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 3
    .parameter

    .prologue
    .line 151
    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->l()Ljava/util/List;

    move-result-object v0

    .line 153
    new-instance v1, Lch/boye/httpclientandroidlib/client/methods/HttpDelete;

    invoke-static {p0}, Lcom/instagram/common/a/b/a;->b(Lcom/instagram/common/a/d/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {v1, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Ljava/util/List;)V

    .line 155
    return-object v1
.end method

.method private static e(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 2
    .parameter

    .prologue
    .line 159
    new-instance v0, Lcom/instagram/common/a/b/d;

    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->g_()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/a/b/d;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->a()Lcom/instagram/common/a/c/b;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/instagram/common/a/c/b;->d()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/b/d;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 166
    :cond_0
    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->l()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Ljava/util/List;)V

    .line 167
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    sget-object v0, Lcom/instagram/common/a/b/b;->a:[I

    invoke-interface {p1}, Lcom/instagram/common/a/d/a;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 72
    :pswitch_0
    invoke-static {p1}, Lcom/instagram/common/a/b/a;->c(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 74
    :pswitch_1
    invoke-static {p1, p2}, Lcom/instagram/common/a/b/a;->b(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-static {p1}, Lcom/instagram/common/a/b/a;->d(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_3
    invoke-static {p1}, Lcom/instagram/common/a/b/a;->e(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
