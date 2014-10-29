.class public Lcom/instagram/android/login/a/h;
.super Lcom/instagram/common/a/a/j;
.source "LoginCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/android/login/c/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    .line 24
    iput-object p2, p0, Lcom/instagram/android/login/a/h;->b:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 62
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 63
    return-void
.end method

.method public a(Lcom/instagram/android/login/c/h;)V
    .locals 4
    .parameter

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/instagram/android/login/c/h;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    .line 30
    iget-object v0, p0, Lcom/instagram/android/login/a/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/a/h;->b:Ljava/lang/String;

    .line 31
    :goto_0
    invoke-static {v0}, Lcom/instagram/n/a;->b(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/instagram/p/b;->aE:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v2, "instagram_id"

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 33
    iget-object v0, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;Lcom/instagram/user/c/a;)V

    .line 34
    iget-object v0, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;)V

    .line 35
    return-void

    .line 30
    :cond_0
    invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/instagram/android/login/c/h;

    invoke-virtual {p0, p1}, Lcom/instagram/android/login/a/h;->a(Lcom/instagram/android/login/c/h;)V

    return-void
.end method

.method public b(Lcom/instagram/common/l/a/e;)V
    .locals 4
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
    .line 39
    iget-object v0, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/a/f;->b(Z)V

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/login/c/h;

    invoke-virtual {v0}, Lcom/instagram/android/login/c/h;->j()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/login/c/h;

    invoke-virtual {v0}, Lcom/instagram/android/login/c/h;->k()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_1
    iget-object v2, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/instagram/android/nux/af;->a(Lcom/instagram/common/l/a/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/instagram/o/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/login/a/h;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/facebook/az;->network_error:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
