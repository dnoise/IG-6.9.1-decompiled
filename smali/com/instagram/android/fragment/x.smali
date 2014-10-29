.class final Lcom/instagram/android/fragment/x;
.super Lcom/instagram/android/login/a/d;
.source "ChangePasswordFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/w;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/w;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/instagram/android/fragment/x;->a:Lcom/instagram/android/fragment/w;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/android/login/a/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/instagram/android/fragment/x;->a:Lcom/instagram/android/fragment/w;

    iget-object v0, v0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/o;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/instagram/android/fragment/x;->a:Lcom/instagram/android/fragment/w;

    iget-object v0, v0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/fragment/o;->f(Lcom/instagram/android/fragment/o;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 337
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/login/a/d;->a()V

    .line 338
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/android/login/c/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/instagram/android/fragment/x;->a:Lcom/instagram/android/fragment/w;

    iget-object v0, v0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/o;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/instagram/android/fragment/x;->a:Lcom/instagram/android/fragment/w;

    iget-object v0, v0, Lcom/instagram/android/fragment/w;->a:Lcom/instagram/android/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/fragment/o;->f(Lcom/instagram/android/fragment/o;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 347
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/login/a/d;->a(Lcom/instagram/api/j/j;)V

    .line 348
    return-void
.end method
