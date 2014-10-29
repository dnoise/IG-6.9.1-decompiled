.class final Lcom/instagram/android/feed/a/a/o;
.super Ljava/lang/Object;
.source "FeedVideoPlayer.java"

# interfaces
.implements Lcom/instagram/android/l/a/f;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/android/l/a/c;)V
    .locals 5
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->d(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/feed/a/b/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/m;->b(Lcom/instagram/android/feed/a/a/m;)I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/m;->e(Lcom/instagram/android/feed/a/a/m;)Z

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v3}, Lcom/instagram/android/feed/a/a/m;->c(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/feed/g/a;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v4}, Lcom/instagram/android/feed/a/a/m;->f(Lcom/instagram/android/feed/a/a/m;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/feed/c/p;->a(Lcom/instagram/feed/d/l;IZLcom/instagram/feed/g/a;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->e(Lcom/instagram/android/feed/a/a/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f80

    .line 384
    :goto_0
    invoke-virtual {p1, v0, v0}, Lcom/instagram/android/l/a/c;->a(FF)V

    .line 385
    invoke-virtual {p1}, Lcom/instagram/android/l/a/c;->d()V

    .line 387
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->d(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/feed/a/b/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/m;->g(Lcom/instagram/android/feed/a/a/m;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 389
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->d(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/feed/a/b/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->e(Lcom/instagram/android/feed/a/a/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/instagram/android/widget/o;->a:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/MediaActionsView;->a(I)V

    .line 395
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->h(Lcom/instagram/android/feed/a/a/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/feed/a/a/m;->a(Lcom/instagram/android/feed/a/a/m;Z)Z

    .line 398
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/o;->a:Lcom/instagram/android/feed/a/a/m;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/m;->i(Lcom/instagram/android/feed/a/a/m;)Lcom/instagram/android/feed/a/a/s;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/android/feed/a/a/s;->sendEmptyMessageDelayed(IJ)Z

    .line 402
    :cond_0
    return-void

    .line 383
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :cond_2
    sget v0, Lcom/instagram/android/widget/o;->f:I

    goto :goto_1
.end method
