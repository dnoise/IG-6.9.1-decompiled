.class final Lcom/instagram/android/login/fragment/q;
.super Ljava/lang/Object;
.source "LookupFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/c/k;

.field final synthetic b:Lcom/instagram/android/login/fragment/p;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/p;Lcom/instagram/android/login/c/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/instagram/android/login/fragment/q;->b:Lcom/instagram/android/login/fragment/p;

    iput-object p2, p0, Lcom/instagram/android/login/fragment/q;->a:Lcom/instagram/android/login/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/instagram/android/login/fragment/q;->a:Lcom/instagram/android/login/c/k;

    invoke-virtual {v1}, Lcom/instagram/android/login/c/k;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "userid"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/q;->a:Lcom/instagram/android/login/c/k;

    invoke-virtual {v2}, Lcom/instagram/android/login/c/k;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    const-string v1, "can_sms_reset"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/q;->a:Lcom/instagram/android/login/c/k;

    invoke-virtual {v2}, Lcom/instagram/android/login/c/k;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    const-string v1, "can_email_reset"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/q;->a:Lcom/instagram/android/login/c/k;

    invoke-virtual {v2}, Lcom/instagram/android/login/c/k;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    new-instance v1, Lcom/instagram/base/a/a/a;

    iget-object v2, p0, Lcom/instagram/android/login/fragment/q;->b:Lcom/instagram/android/login/fragment/p;

    iget-object v2, v2, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-virtual {v2}, Lcom/instagram/android/login/fragment/o;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/login/fragment/bz;

    invoke-direct {v2}, Lcom/instagram/android/login/fragment/bz;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 67
    return-void

    .line 57
    :cond_0
    const-string v1, "email_lookup"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/q;->b:Lcom/instagram/android/login/fragment/p;

    iget-object v2, v2, Lcom/instagram/android/login/fragment/p;->a:Lcom/instagram/android/login/fragment/o;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/o;->a(Lcom/instagram/android/login/fragment/o;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
