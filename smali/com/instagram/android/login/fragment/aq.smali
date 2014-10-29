.class final Lcom/instagram/android/login/fragment/aq;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/g/a;

.field final synthetic b:Lcom/instagram/android/login/fragment/ap;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/ap;Lcom/instagram/android/g/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;

    iput-object p2, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/g/a;

    invoke-virtual {v0}, Lcom/instagram/android/g/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/g/a;

    invoke-virtual {v0}, Lcom/instagram/android/g/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;

    iget-object v1, v1, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->k(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/g/a;

    invoke-virtual {v1}, Lcom/instagram/android/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)Ljava/lang/String;

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/g/a;

    invoke-virtual {v1}, Lcom/instagram/android/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/g/a;

    invoke-virtual {v1}, Lcom/instagram/android/g/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 746
    iget-object v1, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;

    iget-object v1, v1, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    sget-object v2, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;

    invoke-static {v1, v2}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V

    .line 747
    sget-object v1, Lcom/instagram/p/b;->z:Lcom/instagram/p/b;

    invoke-virtual {v1}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    goto :goto_0

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->b:Lcom/instagram/android/login/fragment/ap;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/ap;->a:Lcom/instagram/android/login/fragment/an;

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V

    .line 752
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aq;->a:Lcom/instagram/android/g/a;

    invoke-static {v0}, Lcom/instagram/android/login/b/d;->a(Lcom/instagram/android/g/a;)V

    goto :goto_0
.end method
