.class final Lcom/c/a/e;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/c/a/d;


# direct methods
.method private constructor <init>(Lcom/c/a/d;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 857
    iput-object p1, p0, Lcom/c/a/e;->a:Lcom/c/a/d;

    .line 858
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 859
    return-void
.end method

.method synthetic constructor <init>(Lcom/c/a/d;Ljava/io/OutputStream;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 856
    invoke-direct {p0, p1, p2}, Lcom/c/a/e;-><init>(Lcom/c/a/d;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/c/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/c/a/e;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->d(Lcom/c/a/d;)Z

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/c/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    return-void

    .line 889
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/c/a/e;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->d(Lcom/c/a/d;)Z

    goto :goto_0
.end method

.method public final write(I)V
    .locals 1
    .parameter "oneByte"

    .prologue
    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/c/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/c/a/e;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->d(Lcom/c/a/d;)Z

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/c/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/c/a/e;->a:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->d(Lcom/c/a/d;)Z

    goto :goto_0
.end method
