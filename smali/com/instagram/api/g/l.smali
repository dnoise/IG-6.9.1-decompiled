.class final Lcom/instagram/api/g/l;
.super Ljava/io/FilterInputStream;
.source "NetworkTraceCollector.java"


# instance fields
.field final synthetic a:Lcom/instagram/api/g/k;


# direct methods
.method constructor <init>(Lcom/instagram/api/g/k;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/api/g/l;->a:Lcom/instagram/api/g/k;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 73
    iget-object v0, p0, Lcom/instagram/api/g/l;->a:Lcom/instagram/api/g/k;

    invoke-static {v0}, Lcom/instagram/api/g/k;->a(Lcom/instagram/api/g/k;)Lcom/instagram/api/g/i;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/g/l;->a:Lcom/instagram/api/g/k;

    iget-object v1, v1, Lcom/instagram/api/g/k;->a:Lcom/instagram/api/g/j;

    invoke-static {v1}, Lcom/instagram/api/g/j;->a(Lcom/instagram/api/g/j;)Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/g/i;->e(J)V

    .line 74
    iget-object v0, p0, Lcom/instagram/api/g/l;->a:Lcom/instagram/api/g/k;

    iget-object v0, v0, Lcom/instagram/api/g/k;->a:Lcom/instagram/api/g/j;

    invoke-static {v0}, Lcom/instagram/api/g/j;->b(Lcom/instagram/api/g/j;)Lcom/instagram/api/g/n;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/g/l;->a:Lcom/instagram/api/g/k;

    invoke-static {v1}, Lcom/instagram/api/g/k;->a(Lcom/instagram/api/g/k;)Lcom/instagram/api/g/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/g/n;->a(Lcom/instagram/api/g/i;)V

    .line 75
    return-void
.end method
