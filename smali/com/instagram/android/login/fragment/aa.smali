.class final Lcom/instagram/android/login/fragment/aa;
.super Ljava/lang/Object;
.source "PasswordResetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/z;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/z;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/instagram/android/login/fragment/aa;->a:Lcom/instagram/android/login/fragment/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aa;->a:Lcom/instagram/android/login/fragment/z;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/instagram/android/login/fragment/aa;->a:Lcom/instagram/android/login/fragment/z;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/z;->a:Lcom/instagram/android/login/fragment/v;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/v;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 176
    :cond_0
    return-void
.end method
