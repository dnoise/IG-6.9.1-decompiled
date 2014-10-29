.class final Lcom/instagram/android/login/fragment/bb;
.super Lcom/instagram/android/login/a/a;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/instagram/android/login/fragment/bb;->a:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/instagram/android/login/a/a;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lcom/instagram/android/login/a/a;->a()V

    .line 328
    sget-object v0, Lcom/instagram/p/b;->Y:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 329
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
    .line 320
    invoke-super {p0, p1}, Lcom/instagram/android/login/a/a;->a(Lcom/instagram/api/j/j;)V

    .line 321
    sget-object v0, Lcom/instagram/p/b;->Z:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 324
    return-void
.end method

.method protected final a(Lcom/instagram/user/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/instagram/android/login/a/a;->a(Lcom/instagram/user/c/a;)V

    .line 311
    iget-object v0, p0, Lcom/instagram/android/login/fragment/bb;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/fragment/bc;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bc;-><init>(Lcom/instagram/android/login/fragment/bb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    check-cast p1, Lcom/instagram/user/c/a;

    invoke-virtual {p0, p1}, Lcom/instagram/android/login/fragment/bb;->a(Lcom/instagram/user/c/a;)V

    return-void
.end method
