.class final Lcom/instagram/api/j/i;
.super Lcom/instagram/common/q/a;
.source "ApiRequestLoaderCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/q/a",
        "<",
        "Lcom/instagram/api/j/j",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic n:Lcom/instagram/api/j/h;


# direct methods
.method constructor <init>(Lcom/instagram/api/j/h;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-direct {p0, p2}, Lcom/instagram/common/q/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private u()Lcom/instagram/api/j/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/j/j",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 42
    invoke-static {}, Lcom/instagram/api/d/a;->a()V

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v0}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/j/c;->f()V
    :try_end_0
    .catch Lcom/instagram/api/j/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v1}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/instagram/api/j/i;->f()Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/api/j/m;->a(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/j/m;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/instagram/api/j/m;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/instagram/api/j/m;->i()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    :try_start_2
    iget-object v1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v1}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/api/j/c;->b(Lcom/instagram/api/j/j;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/j/m;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/fasterxml/jackson/a/p; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 76
    :goto_0
    invoke-virtual {v0, v4}, Lcom/instagram/api/j/m;->a(Z)V

    .line 77
    :goto_1
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/instagram/api/j/i;->f()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->unknown_error_occured:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/m;->d(Ljava/lang/String;)Lcom/instagram/api/j/m;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v4}, Lcom/instagram/api/j/m;->a(Z)V

    goto :goto_1

    .line 62
    :catch_1
    move-exception v1

    .line 63
    :try_start_3
    const-string v2, "ApiRequestLoaderCallbacks"

    const-string v3, "Error processing json"

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    iget-object v1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v1}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/api/j/c;->a(Lcom/instagram/api/j/j;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 69
    :catch_2
    move-exception v0

    .line 70
    const-string v1, "ApiRequestLoaderCallbacks"

    const-string v2, "Unhandled exception in API request"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    iget-object v1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v1}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/api/j/c;->g_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v2, "network_request"

    invoke-static {v2, v1, v0}, Lcom/instagram/common/i/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {p0}, Lcom/instagram/api/j/i;->f()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/m;->d(Ljava/lang/String;)Lcom/instagram/api/j/m;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    :try_start_4
    iget-object v1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v1}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/api/j/c;->a(Lcom/instagram/api/j/j;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0
.end method


# virtual methods
.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/api/j/i;->u()Lcom/instagram/api/j/j;

    move-result-object v0

    return-object v0
.end method
