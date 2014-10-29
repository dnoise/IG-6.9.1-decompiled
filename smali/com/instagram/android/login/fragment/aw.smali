.class final Lcom/instagram/android/login/fragment/aw;
.super Lcom/instagram/android/login/fragment/bt;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 1
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 882
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->y(Lcom/instagram/android/login/fragment/an;)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    sget v0, Lcom/facebook/au;->input_highlighted:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 884
    if-eqz p1, :cond_2

    .line 885
    sget-object v0, Lcom/instagram/p/b;->x:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 886
    iget-object v1, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->j(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 887
    const-string v1, "prechecked_username"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->j(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 888
    iget-object v1, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/login/fragment/ax;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ax;-><init>(Lcom/instagram/android/login/fragment/aw;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 899
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 907
    :goto_1
    return-void

    .line 882
    :cond_1
    sget v0, Lcom/facebook/au;->input:I

    goto :goto_0

    .line 901
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v0

    .line 902
    sget-object v1, Lcom/instagram/p/b;->A:Lcom/instagram/p/b;

    invoke-virtual {v1}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/common/analytics/b;->a()V

    .line 905
    iget-object v1, p0, Lcom/instagram/android/login/fragment/aw;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1, v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V

    goto :goto_1
.end method
