.class final Lcom/instagram/android/login/fragment/bd;
.super Lcom/instagram/android/login/fragment/bv;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 1
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/instagram/android/login/fragment/bd;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bv;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 953
    new-instance v0, Lcom/instagram/registrationpush/a;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bd;->a:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->d()V

    .line 954
    iget-object v0, p0, Lcom/instagram/android/login/fragment/bd;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->B(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/fragment/bx;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;

    if-eq v0, v1, :cond_0

    .line 956
    iget-object v0, p0, Lcom/instagram/android/login/fragment/bd;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->e(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 957
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/login/fragment/bd;->a:Lcom/instagram/android/login/fragment/an;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;

    :goto_1
    invoke-static {v1, v0}, Lcom/instagram/android/login/fragment/an;->d(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V

    .line 959
    :cond_0
    return-void

    .line 956
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 957
    :cond_2
    sget-object v0, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    goto :goto_1
.end method
