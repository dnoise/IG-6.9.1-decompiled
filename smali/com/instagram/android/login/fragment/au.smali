.class final Lcom/instagram/android/login/fragment/au;
.super Lcom/instagram/android/login/fragment/bt;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 1
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 847
    if-eqz p1, :cond_1

    .line 848
    sget-object v0, Lcom/instagram/p/b;->G:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->q(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v0

    .line 851
    iget-object v1, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-eq v1, v2, :cond_2

    invoke-static {v0}, Lcom/instagram/common/y/e;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 852
    iget-object v0, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V

    .line 853
    sget v0, Lcom/facebook/az;->please_enter_a_valid_email_address:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    goto :goto_0

    .line 856
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->p(Lcom/instagram/android/login/fragment/an;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/login/b;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 858
    iget-object v1, p0, Lcom/instagram/android/login/fragment/au;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1, v0}, Lcom/instagram/android/login/fragment/an;->f(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V

    goto :goto_0
.end method
