.class final Lcom/instagram/android/login/fragment/bk;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/instagram/android/login/fragment/bj;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/bj;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/instagram/android/login/fragment/bk;->c:Lcom/instagram/android/login/fragment/bj;

    iput-object p2, p0, Lcom/instagram/android/login/fragment/bk;->a:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/instagram/android/login/fragment/bk;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 356
    new-instance v0, Lcom/instagram/base/a/a/a;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bk;->c:Lcom/instagram/android/login/fragment/bj;

    iget-object v1, v1, Lcom/instagram/android/login/fragment/bj;->a:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bk;->a:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/instagram/android/login/fragment/bk;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 359
    return-void
.end method
