.class final Lcom/instagram/android/directshare/d/x;
.super Lcom/instagram/common/a/a/j;
.source "DirectSharePermalinkFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/f/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/f/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->b()Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;

    .line 404
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;)V

    .line 405
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    .line 408
    :cond_0
    invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/c;->c(Lcom/instagram/android/directshare/d/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/c2dm/c;->a(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->j(Lcom/instagram/android/directshare/d/c;)V

    .line 410
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->k(Lcom/instagram/android/directshare/d/c;)V

    .line 411
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 441
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->c(Lcom/instagram/android/directshare/d/c;Z)Z

    .line 442
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;)Lcom/instagram/feed/d/l;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v2}, Lcom/instagram/android/directshare/d/c;->E()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 444
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 447
    :cond_0
    return-void

    .line 442
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/f/a/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 431
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->c(Lcom/instagram/android/directshare/d/c;Z)Z

    .line 432
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->E()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 434
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 437
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    check-cast p1, Lcom/instagram/f/a/b/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/x;->a(Lcom/instagram/f/a/b/a;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/f/a/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/f/a/b/a;

    invoke-virtual {v0}, Lcom/instagram/f/a/b/a;->s()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->l(Lcom/instagram/android/directshare/d/c;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/g/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/instagram/android/directshare/d/x;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->could_not_refresh_feed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
