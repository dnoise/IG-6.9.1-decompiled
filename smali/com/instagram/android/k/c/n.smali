.class final Lcom/instagram/android/k/c/n;
.super Lcom/instagram/common/a/a/j;
.source "UserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/android/k/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/k/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/android/k/b/e;)V
    .locals 4
    .parameter

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p1}, Lcom/instagram/android/k/b/e;->b()Ljava/util/List;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v1}, Lcom/instagram/android/k/c/a;->j(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/c/u;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/android/k/b/e;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/k/c/u;->a(J)V

    .line 327
    iget-object v1, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v1}, Lcom/instagram/android/k/c/a;->g(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/k/a/a;->a_(Ljava/util/List;)V

    .line 328
    iget-object v1, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v1}, Lcom/instagram/android/k/c/a;->k(Lcom/instagram/android/k/c/a;)V

    .line 330
    iget-object v1, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v1}, Lcom/instagram/android/k/c/a;->l(Lcom/instagram/android/k/c/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->m(Lcom/instagram/android/k/c/a;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v1}, Lcom/instagram/android/k/c/a;->n(Lcom/instagram/android/k/c/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-virtual {v1, v0}, Lcom/instagram/android/k/c/a;->a(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 340
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 341
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->j(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/c/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/c/u;->a(Z)V

    .line 342
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 343
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->g(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->o(Lcom/instagram/android/k/c/a;)V

    .line 346
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/k/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 350
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 351
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->j(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/c/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/c/u;->a(Z)V

    .line 352
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 353
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->g(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->o(Lcom/instagram/android/k/c/a;)V

    .line 356
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    check-cast p1, Lcom/instagram/android/k/b/e;

    invoke-direct {p0, p1}, Lcom/instagram/android/k/c/n;->a(Lcom/instagram/android/k/b/e;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/k/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 360
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    .line 361
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->j(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/c/u;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/android/k/c/u;->b(Z)V

    .line 362
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->j(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/c/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/k/c/u;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->g(Lcom/instagram/android/k/c/a;)Lcom/instagram/android/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->notifyDataSetChanged()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->h(Lcom/instagram/android/k/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-virtual {v1}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->try_again:I

    new-instance v2, Lcom/instagram/android/k/c/p;

    invoke-direct {v2, p0}, Lcom/instagram/android/k/c/p;-><init>(Lcom/instagram/android/k/c/n;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->skip:I

    new-instance v2, Lcom/instagram/android/k/c/o;

    invoke-direct {v2, p0}, Lcom/instagram/android/k/c/o;-><init>(Lcom/instagram/android/k/c/n;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/k/c/n;->a:Lcom/instagram/android/k/c/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
