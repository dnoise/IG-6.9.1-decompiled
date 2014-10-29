.class final Lcom/instagram/android/login/fragment/av;
.super Lcom/instagram/android/login/fragment/bv;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 1
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/instagram/android/login/fragment/av;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bv;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 869
    new-instance v0, Lcom/instagram/registrationpush/a;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/av;->a:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->d()V

    .line 870
    iget-object v0, p0, Lcom/instagram/android/login/fragment/av;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->x(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/fragment/bx;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;

    if-eq v0, v1, :cond_0

    .line 872
    iget-object v0, p0, Lcom/instagram/android/login/fragment/av;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->q(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/y/e;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 873
    iget-object v1, p0, Lcom/instagram/android/login/fragment/av;->a:Lcom/instagram/android/login/fragment/an;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;

    :goto_0
    invoke-static {v1, v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V

    .line 875
    :cond_0
    return-void

    .line 873
    :cond_1
    sget-object v0, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    goto :goto_0
.end method
