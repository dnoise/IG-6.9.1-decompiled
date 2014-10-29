.class final Lcom/instagram/android/login/fragment/g;
.super Lcom/instagram/android/login/a/d;
.source "ForgotPasswordFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/f;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/f;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/instagram/android/login/fragment/g;->a:Lcom/instagram/android/login/fragment/f;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/android/login/a/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/instagram/android/login/fragment/g;->a:Lcom/instagram/android/login/fragment/f;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/f;->a:Lcom/instagram/android/login/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    sget v1, Lcom/facebook/av;->fragment_forgot_password_facebook:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/login/a/d;->a()V

    .line 135
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
    .line 141
    iget-object v0, p0, Lcom/instagram/android/login/fragment/g;->a:Lcom/instagram/android/login/fragment/f;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/f;->a:Lcom/instagram/android/login/fragment/a;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/a;->E()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->fragment_forgot_password_facebook:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 145
    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/login/a/d;->a(Lcom/instagram/api/j/j;)V

    .line 146
    return-void
.end method
