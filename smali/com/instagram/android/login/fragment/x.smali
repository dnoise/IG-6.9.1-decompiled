.class final Lcom/instagram/android/login/fragment/x;
.super Lcom/instagram/api/j/f;
.source "PasswordResetFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/v;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/v;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/user/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;

    invoke-static {v0, p1}, Lcom/instagram/android/login/fragment/v;->a(Lcom/instagram/android/login/fragment/v;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 79
    iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/v;->E()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/v;->a(Lcom/instagram/android/login/fragment/v;)Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/login/fragment/v;->a(Lcom/instagram/android/login/fragment/v;Landroid/view/View;Lcom/instagram/user/c/a;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-super {p0}, Lcom/instagram/api/j/f;->a()V

    .line 91
    iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/v;->a(Lcom/instagram/android/login/fragment/v;Z)Z

    .line 92
    iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 93
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->no_account_found:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    invoke-super {p0, p1}, Lcom/instagram/api/j/f;->a(Lcom/instagram/api/j/j;)V

    .line 86
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    check-cast p1, Lcom/instagram/user/c/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/x;->a(Lcom/instagram/user/c/a;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-super {p0}, Lcom/instagram/api/j/f;->b()V

    .line 98
    iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/v;->a(Lcom/instagram/android/login/fragment/v;Z)Z

    .line 100
    iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/instagram/android/login/fragment/x;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 103
    :cond_0
    return-void
.end method
