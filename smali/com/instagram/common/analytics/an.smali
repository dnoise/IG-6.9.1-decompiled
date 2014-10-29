.class final Lcom/instagram/common/analytics/an;
.super Lcom/instagram/common/a/a/a;
.source "SendAnalyticsRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/instagram/common/a/a/a;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/instagram/common/analytics/an;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/instagram/common/analytics/an;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/instagram/common/analytics/an;->d:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 62
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 64
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    invoke-virtual {v2, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 67
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 68
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 69
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/instagram/common/a/c/b;

    invoke-direct {v0}, Lcom/instagram/common/a/c/b;-><init>()V

    .line 46
    const-string v1, "method"

    const-string v2, "logging.clientevent"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/instagram/common/analytics/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    const-string v1, "message"

    iget-object v2, p0, Lcom/instagram/common/analytics/an;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/instagram/common/analytics/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "compressed"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v1

    const-string v1, "message"

    iget-object v2, p0, Lcom/instagram/common/analytics/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final g_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/instagram/common/analytics/an;->d:Ljava/lang/String;

    return-object v0
.end method
