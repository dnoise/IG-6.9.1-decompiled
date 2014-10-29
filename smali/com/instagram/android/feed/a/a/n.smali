.class final Lcom/instagram/android/feed/a/a/n;
.super Ljava/lang/Object;
.source "FeedVideoPlayer.java"

# interfaces
.implements Lcom/instagram/android/l/a/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/n;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 352
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/n;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/d/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/n;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/n;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/m;->b(Lcom/instagram/android/feed/a/a/m;)I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/n;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/m;->c(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/g/a;

    move-result-object v2

    invoke-static {v0, p1, p2, v1, v2}, Lcom/instagram/feed/c/p;->b(Lcom/instagram/feed/d/l;IIILcom/instagram/feed/g/a;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/n;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/n;->a:Lcom/instagram/android/feed/a/a/m;

    const-string v2, "error"

    invoke-static {v1, v2}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/m;Ljava/lang/String;)V

    .line 363
    if-ne p1, v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    invoke-static {}, Lcom/instagram/android/feed/a/a/m;->j()Ljava/lang/Class;

    .line 365
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->f(Ljava/lang/String;)V

    .line 367
    :cond_1
    return v3
.end method
