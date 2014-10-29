.class final Lcom/instagram/api/g/k;
.super Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;
.source "NetworkTraceCollector.java"


# instance fields
.field final synthetic a:Lcom/instagram/api/g/j;

.field private final b:Lcom/instagram/api/g/i;

.field private c:Z

.field private d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/instagram/api/g/j;Lch/boye/httpclientandroidlib/HttpEntity;Lcom/instagram/api/g/i;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/instagram/api/g/k;->a:Lcom/instagram/api/g/j;

    .line 58
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 59
    iput-object p3, p0, Lcom/instagram/api/g/k;->b:Lcom/instagram/api/g/i;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/api/g/k;->c:Z

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/instagram/api/g/k;)Lcom/instagram/api/g/i;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/api/g/k;->b:Lcom/instagram/api/g/i;

    return-object v0
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/instagram/api/g/k;->c:Z

    if-nez v0, :cond_1

    .line 66
    invoke-super {p0}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Lcom/instagram/api/g/l;

    invoke-direct {v1, p0, v0}, Lcom/instagram/api/g/l;-><init>(Lcom/instagram/api/g/k;Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/instagram/api/g/k;->d:Ljava/io/InputStream;

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/api/g/k;->c:Z

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/instagram/api/g/k;->d:Ljava/io/InputStream;

    return-object v0
.end method
