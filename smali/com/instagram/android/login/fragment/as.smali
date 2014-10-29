.class final Lcom/instagram/android/login/fragment/as;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/instagram/android/login/fragment/as;->a:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 810
    sget-object v0, Lcom/instagram/p/b;->ab:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "guessed_country_code"

    iget-object v2, p0, Lcom/instagram/android/login/fragment/as;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->h(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 814
    new-instance v0, Lcom/instagram/android/e/d;

    invoke-direct {v0}, Lcom/instagram/android/e/d;-><init>()V

    .line 815
    iget-object v1, p0, Lcom/instagram/android/login/fragment/as;->a:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 816
    iget-object v1, p0, Lcom/instagram/android/login/fragment/as;->a:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->p()Landroid/support/v4/app/s;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/base/a/a;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V

    .line 817
    return-void
.end method
