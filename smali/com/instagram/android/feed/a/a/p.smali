.class final Lcom/instagram/android/feed/a/a/p;
.super Ljava/lang/Object;
.source "FeedVideoPlayer.java"

# interfaces
.implements Lcom/instagram/android/l/a/d;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 408
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->i(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/feed/a/a/s;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/android/feed/a/a/s;->sendEmptyMessageDelayed(IJ)Z

    .line 412
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/d/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/m;->b(Lcom/instagram/android/feed/a/a/m;)I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/m;->j(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/l/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/l/a/c;->m()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v3}, Lcom/instagram/android/feed/a/a/m;->j(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/l/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/l/a/c;->n()I

    move-result v3

    iget-object v4, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v4}, Lcom/instagram/android/feed/a/a/m;->c(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/g/a;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/feed/d/l;IIILcom/instagram/feed/g/a;)V

    .line 420
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/m;->j(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/l/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/l/a/c;->m()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/m;->j(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/l/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/l/a/c;->n()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v3}, Lcom/instagram/android/feed/a/a/m;->j(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/l/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/l/a/c;->m()I

    move-result v3

    iget-object v4, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v4}, Lcom/instagram/android/feed/a/a/m;->b(Lcom/instagram/android/feed/a/a/m;)I

    move-result v4

    iget-object v5, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v5}, Lcom/instagram/android/feed/a/a/m;->e(Lcom/instagram/android/feed/a/a/m;)Z

    move-result v5

    iget-object v6, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v6}, Lcom/instagram/android/feed/a/a/m;->c(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/g/a;

    move-result-object v6

    iget-object v7, p0, Lcom/instagram/android/feed/a/a/p;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v7}, Lcom/instagram/android/feed/a/a/m;->f(Lcom/instagram/android/feed/a/a/m;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "finished"

    invoke-static/range {v0 .. v8}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/feed/d/l;IIIIZLcom/instagram/feed/g/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    return-void
.end method
