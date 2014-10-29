.class final Lcom/instagram/android/login/fragment/z;
.super Lcom/instagram/android/login/a/h;
.source "PasswordResetFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/v;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/v;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/instagram/android/login/a/h;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/android/login/c/h;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-super {p0, p1}, Lcom/instagram/android/login/a/h;->a(Lcom/instagram/android/login/c/h;)V

    .line 179
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/a/f;->b(Z)V

    .line 163
    iget-object v0, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/v;->c(Lcom/instagram/android/login/fragment/v;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->password_changed:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/v;->d(Lcom/instagram/android/login/fragment/v;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/aa;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/aa;-><init>(Lcom/instagram/android/login/fragment/z;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    check-cast p1, Lcom/instagram/android/login/c/h;

    invoke-virtual {p0, p1}, Lcom/instagram/android/login/fragment/z;->a(Lcom/instagram/android/login/c/h;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/login/c/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sget v0, Lcom/facebook/az;->request_error:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 152
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/login/a/h;->b(Lcom/instagram/common/l/a/e;)V

    .line 153
    return-void
.end method
