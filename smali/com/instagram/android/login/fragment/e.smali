.class final Lcom/instagram/android/login/fragment/e;
.super Ljava/lang/Object;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/a;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/instagram/android/login/fragment/e;->a:Lcom/instagram/android/login/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 90
    sget-object v0, Lcom/instagram/p/b;->al:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 91
    iget-object v0, p0, Lcom/instagram/android/login/fragment/e;->a:Lcom/instagram/android/login/fragment/a;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://help.instagram.com/"

    iget-object v4, p0, Lcom/instagram/android/login/fragment/e;->a:Lcom/instagram/android/login/fragment/a;

    invoke-virtual {v4}, Lcom/instagram/android/login/fragment/a;->l()Landroid/support/v4/app/k;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/a;->a(Landroid/content/Intent;)V

    .line 92
    return-void
.end method
